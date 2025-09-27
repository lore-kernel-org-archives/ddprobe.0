Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207D838DE1
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759004994; cv=none; b=HiuriGw5nzWFy7dvKqCTXBzzuJ1/q57/GYqXe5ZgSte7a9ROCi77JCecopwqZ2N2tq0PQrY7nF/zP4Da9wOXPFNwN9lt4DXGCCRLVj6fzKHhyEEK+MrVt92R3/pPTUP7YzF0qqknIs6rcB9+hpM6/8uwcU22hqF3biCN3akJMzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759004994; c=relaxed/simple;
	bh=G/TrXKrxuac7iNCqZLoCvKi5/BQQT229iliU+erqZoE=;
	h=To:Subject:From:Message-Id:Date; b=KyjcvztnFGUp/iNWs8yH+VqQrzOqwb938c/GZdnBFalGBkV5mraXa/GbpeZ+xsDO9x1yCbY8LoHRTcjdLSHfMJlAYyykIgatnB7Dop3r1MgDtg7vmxoqRPRMFglmbW6D8VMDZhC+B930Pdv2NY1A64PGt2DUOSk5b5r2P8EIdAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFzZ0GRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFzZ0GRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86A3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759004993;
	bh=G/TrXKrxuac7iNCqZLoCvKi5/BQQT229iliU+erqZoE=;
	h=To:Subject:From:Date:From;
	b=JFzZ0GRvb9SMwnI911bZtZ/AfBky0PE68BBxU8alUK2Ke4QADMAIW7SmQynbX+Iue
	 WV4PcF0wUn8I1qy5mQz0dutaKecqe8rRNfD63meng17jmEq8cEoz7JqriYIWDZLxk+
	 88fVO6mnSPE6BWF2xaIV3wpoi5DOITk/UpQtCGT7CF0huI11oYusKaBDD+W7BrXRMM
	 q3jD08giab4Q4ztKG2DSkYhPAL2UTavz5OEJ6aPned3pu1aL0EuzrnqY6h0le5lvM2
	 OPWMDg00Sd3MmekNvf3JEjGSmEmMADzOIrSuymY1HfPUyJAiWwU4vbSUNspZ0ZLW23
	 KNNdV03XKDSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953ECCAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900499358.2191.8065643484708106355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c1f435910cf7305d2c86e8c9aed75b66ee79dfb65e7d5eab55eb58a588593f
Date: Sat, 27 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759004993
