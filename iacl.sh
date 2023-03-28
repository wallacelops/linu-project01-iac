#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd Robert Downey Jr. -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_ADM
useradd Chris Evans -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_ADM
useradd Mark Ruffalo -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_ADM

useradd Chris Hemsworth -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_VEN
useradd Scarlett Johansson -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_VEN
useradd Jeremy Renner -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP-VEN

useradd Tom Hiddleston -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_SEC
useradd Paul Rudd -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_SEC
useradd Tom holland -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_SEC

echo "Directories permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770/adm
chmod 770/ven
chmod 770/sec
chmod 777/public

echo "End..."


