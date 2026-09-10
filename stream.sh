#!/bin/bash
while true
do
    ffmpeg -re -stream_loop -1 -i "https://drive.google.com/uc?export=download&id=1BsF_6Infx0jqiSTWpq6tst-pFbaqnHsi" \
    -c:v libx264 -preset veryfast -maxrate 2500k -bufsize 5000k -pix_fmt yuv420p -g 50 \
    -c:a aac -b:a 128k -ar 44100 \
    -f flv "rtmp://a.rtmp.youtube.com/live2/8hr2-mgzy-caw1-18q3-dd84"
done
