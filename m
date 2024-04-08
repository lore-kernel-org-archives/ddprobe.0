Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7E7433A9
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712599696; cv=none; b=Iu7hhxhogHiXkv3A8ziJ5l9UIjHMUUJQ8qjkXlWxpd2HzTOHiKBq5B7c6jFltNHLcPrEhf7Hv8JNldElYVTEh2ftvrgDHdSmB0mtz4abBEl2pxnIWU6fN6dP8uUb8LTNNVBRSq7XneY1YsDkS08p7nmBv5jsQrRbG4/oLOKQrdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712599696; c=relaxed/simple;
	bh=RhuBM/bJD1oZj51iWZYGU5MOddGSHD25HMQC2NZfrK0=;
	h=To:Subject:From:Message-Id:Date; b=VGplKmv2B+TXpy8G0PP3wNiq9ZxOYqx8L8zFsd4FeNEj1HUd2L57tEoeXTsfc3L6i0qkRsRpCWKWIhHwo6Lq5BQdtEX9V3WYAia4TRfGSuyS36oZ8RD9ZXk6WYu1QjqFG6+LWH2g1HGmowhTOedD2wnd2fGcb1tDbF6VROb8E/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4t+Qxes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4t+Qxes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9289BC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712599696;
	bh=RhuBM/bJD1oZj51iWZYGU5MOddGSHD25HMQC2NZfrK0=;
	h=To:Subject:From:Date:From;
	b=M4t+Qxespl2ti+b/BWuQZQmYJKpHoeBbzGW3LMt7DvqPsm+g7W5BRCfWILoz439nV
	 tym3ltngnsJeqkr8YiIAS1W7NDPGLjlqhEfGfh7ZCwj93KMlkHr+aPkfp5Ren/RLIQ
	 Kv8uu9/2+e1VOYRTSiSbiNEPN2+RSZA4yPBrqoBuweR5UrE4piD4G1InCCHNaOBigK
	 VDrI4zlkE9VQ3Gc6SMuuoKZO6h0WfuKK6GbGI2kzncLPqjiftBmjAPuyFZvUkuGQSa
	 lBEvSfawKfOIVrpQ7BngBwnnwrDo7PvXWg76MA2mBJMbJV2OULXVWPb/WbJxB/7z6a
	 v2c9ozq5HVSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74A8FC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171259969645.19806.7860820099153433914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca45ff27cef4a98362fdbbb413e08f67af3ebbb5a9cfcdfb3deee294df3e620e
Date: Mon, 08 Apr 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712599696
