#!/bin/bash
for i in {2..75}
do
expect<<EOF
spawn ssh -o StrictHostKeyChecking=no root@176.130.9.$i
expect "password"       {send "Taren1\n"}
expect "#"              {send "mv /usr/share/backgrounds/tedu-wallpaper-01.png  2.png\n:}
expect "#"              {send "wget ftp://176.130.9.36/tedu-wallpaper-01.png \n"}
expect "#"              {send "mv -f /root/tedu-wallpaper-01.png /usr/share/backgrounds/tedu-wallpaper-01.png\n"}
expect "#"              {send "exit"}
EOF
done
