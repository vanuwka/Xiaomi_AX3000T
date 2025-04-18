Install openWRT

Имеем роутер Xiaomi AX3000T
RD03, 1.0.84 (CN), (AN8855 + Winbond).

вставляем
 LAN1=WAN - инет
 LAN2 - пк



#Ставим Python
https://ninite.com/pythonx3/

#качаем патчер
https://github.com/openwrt-xiaomi/xmir-patcher/archive/refs/heads/main.zip

#качаем и кладем в папку firmware патчера
https://firmware-selector.openwrt.org/?version=24.10.0-rc7&target=mediatek%2Ffilogic&id=xiaomi_mi-router-ax3000t

#либо сразу качаем файлы
https://downloads.openwrt.org/releases/24.10.0/targets/mediatek/filogic/openwrt-24.10.0-mediatek-filogic-xiaomi_mi-router-ax3000t-initramfs-factory.ubi
https://downloads.openwrt.org/releases/24.10.0/targets/mediatek/filogic/openwrt-24.10.0-mediatek-filogic-xiaomi_mi-router-ax3000t-initramfs-kernel.bin
https://downloads.openwrt.org/releases/24.10.0/targets/mediatek/filogic/openwrt-24.10.0-mediatek-filogic-xiaomi_mi-router-ax3000t-squashfs-sysupgrade.bin


заходим через браузер 192.168.31.1
видим на китайском, соглашаемся, ставим пароль, этот же пароль используем для прошивки


запускаем run.bat
жмем 1, проверяем айпи 192.168.31.1
жмем 2, коннект
жмем 7, прошиваем

переходим в браузере http://192.168.1.1/cgi-bin/luci/admin/system/flash
выбираем файл sysupgrade

#далее
cmd
ssh root@192.168.1.1

opkg install curl gawk grep sed unzip

opkg install adblock-fast
opkg install luci-app-adblock-fast luci-i18n-adblock-fast-ru

opkg install https-dns-proxy
opkg install luci-i18n-https-dns-proxy-ru luci-app-https-dns-proxy

/etc/init.d/adblock-fast start
/etc/init.d/adblock-fast enable

/etc/init.d/https-dns-proxy start
/etc/init.d/https-dns-proxy enable


