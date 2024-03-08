#!/bin/bash
#script que procura arquivos em sites utilizando o google
if [ $# != 2 ];
then
echo "Erro de Execução"
echo ""
echo "Uso do script: $0 [URL] [Extensão]"
echo "Exemplo: $0 businesscorp.com.br txt"
exit 0
else
echo "Arquivos encontrados:"
lynx -dump "https://www.google.com/search?num=500&q=site:"$1"+ext:"$2"" | cut -d "=" -f 2 | grep ".$2" | egrep "http|https" | sed s'/...$//'g
fi
