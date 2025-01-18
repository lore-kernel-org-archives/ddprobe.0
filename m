Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5E67FD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737174354; cv=none; b=elElfQNXF3YhdlWFNKCgC4xIgcSeNi1x2hWswASUY4SBRmhsqTQpZvB76lYmrpIE+hf/3z9IpEMbL2mShkzHsEKoFVQv1RiC9rFpegGVHVKtDEMnevt2ALtaXZT4Y5J+7yclSdSvpS3/OruiD0Bj8c4QfUxb8Swu0/whQrms3wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737174354; c=relaxed/simple;
	bh=7gJySfgJ9hLuSLM9lVmUvDsA8+knfVgI7I5Gr/rHkIU=;
	h=To:Subject:From:Message-Id:Date; b=IvFWvUhgHkaiqn79cN61BQmGYl4xUEUQimwwzO70/lowzLKlHCoklW7w3m41Ayo7LGA3HbRhQthYv5ZUHHykkzGz8r/nRASZdkgLkiKqTLm5NBJCGxe2SVJ0V77TXL1AU3GXcg5/sFERsa0Q0JlciE7V+l+WnJKKt4nY/kxjR+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7UGZbTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7UGZbTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC94C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737174353;
	bh=7gJySfgJ9hLuSLM9lVmUvDsA8+knfVgI7I5Gr/rHkIU=;
	h=To:Subject:From:Date:From;
	b=T7UGZbTQocrbVRWfNbdMqBrqZhGJvNAetWTeMQp2QfrRwu/CTeCdP37X+RlEy5q9S
	 0FHNePlZtCWDXiJU8iSjSvu7hM0KCyClDrvhXJs2AnxX8ilYLow3OfCNhm1x6OZbtW
	 PBT5Ke/i9JKNBDKzMlx/8x1eNHkUTRGbWgSFUsnY9EtRYfH6B8Tsz+SsZv4XHdD6Nm
	 40pNKuzc+35sFruyRJK9hgP4BNcmm0SQBqA3Md0rLkgbdxGEXdpMHI/tVGs2Fvjk56
	 qs+3I564lR8aosNZqSGRQQ63IbTDf5y+ei3sfSAGaT9I/BMyEq7dE9Fs/2kqHeDkMT
	 /H5I2nbDAGrMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984CEC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717435361.28887.12674080521204075112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f0f92d8af9f178aee4f1dc033c635ca088a615653b0dda6f95448f1ab52b4a
Date: Sat, 18 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737174353
