# 使用官方 Python 3.11.9 映像檔作為基礎
FROM python:3.12.3

# 設置工作目錄
WORKDIR /app

# 將當前目錄下的所有文件和目錄複製到容器中的工作目錄
COPY . /app

# 安裝 requirements.txt 中列出的所有依賴
RUN pip install --no-cache-dir -r requirements.txt

# 定義容器啟動時執行的命令
CMD ["python", "hour_registration.py"]
