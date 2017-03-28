#!/usr/bin/env bash
while read url; do
  youtube-dl -f bestvideo+bestaudio/best --extract-audio --audio-format mp3 --prefer-ffmpeg -o "downloads/%(title)s.%(ext)s" $url
done <youtube-dl-list.txt
