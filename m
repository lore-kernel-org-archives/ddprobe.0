Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574141FB3
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735346754; cv=none; b=KK+4G6uM4SJ/HwfP7GBfBv4/ifW90f5sh45StnqpVIc4rUSOxO/p9gTWfJePjQRDGG8T6ir5MpulgkzXDTw1rSXO65au+2+TrWsFySNQFiRd0dswWprHF4gK7R9H+iq1bKXHYJ/HtaCaIQetBzAZAMk3S3dIFgTifBBL7Ramq0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735346754; c=relaxed/simple;
	bh=RLTGB224LnGaXWCbVcb6k1wAYY22iLe4tS4j5acj04I=;
	h=To:Subject:From:Message-Id:Date; b=qzfmGBoJS+DfenexKHt/WcDT9QciF3zxsg+tfcS8g7fAVOXZhzlgpTJ4oH/7NIFh5DSSIyrJ7vUCct9gBHExawSXcH7V6gwFqsPkOlnaOaBKaIa5xuCQewCIotz0ifrOP6rlz/OQrVOfsvEyoaebd8SP5EPCEguAxUNHFvsb1AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naEGPcka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naEGPcka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF957C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735346753;
	bh=RLTGB224LnGaXWCbVcb6k1wAYY22iLe4tS4j5acj04I=;
	h=To:Subject:From:Date:From;
	b=naEGPckaGlSUhxlpc1I3MzEG2NHD8z3UKLymaHagqXCQrLJQTcDNSp5iG34Y3gqlw
	 aaaqlHpftmUXxAY2uYTsNQvmL6Bdz1Ksfu3a6LmyWRnDGah/t5JO6G0vs7XqbM11U0
	 NfHPXpb5Va3z7i7xkrNzuKInU5aaPdiwqv+HTlmq7L1cM3WzUO+FjdzYyQuSevnQ+g
	 uuUeiDbscjaaqf4qTSQvDxBDUmeqO2UMIiTDv25HpKWOp7Fu3xPkVo7BtDaEKW3hRR
	 aSUUcxjwT7gWeJ/UxNrcGV4EecHf46lUjbsJWoDbpwP3280PSG19IA8uM1u3zC0Iys
	 DwOFdRTiCOLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B764AE7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534675371.15964.2137604257654696250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda045e5b1effdaa8a111411e8a2be9ce5580b238a24607b168bdc2676157d29
Date: Sat, 28 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735346753
