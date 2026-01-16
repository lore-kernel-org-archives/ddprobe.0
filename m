Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091653115B8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768588434; cv=none; b=jwI54FTl2ibzjSLqa0Nh+Qz3S1HuT8cQXuPr2656UfIp5OEOTb6+JJGrReNBvNfs10uuP5p16KCYG4KHsUpNFS2nXEd63IDYfjXdV0TPFeOyoiX4nu40rBXQuPubkRnRT4jO9/Lwb5wcnSn1AfATgqhZXUv0HxGRsKB2Hx/ndLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768588434; c=relaxed/simple;
	bh=lU9DyLPxxCWsIGEItOU9o7jlpETCjIyTRwr1Rfq4U7M=;
	h=To:Subject:From:Message-Id:Date; b=qeUj7KAP59oeYI7dvn808MKNMTuvsX+LPBMhA0LiwoqQyCGg3phLdfOh5cygdWYXL8o+uFxwIK3XMkhFoKRcAN8a2nrfBE9IrvtBJcphsLK6LTKYAhR2mCXWEltgEZw68onBRBun26pvqYoZOdhbhE2b8iZ/PEBt3s7/CoF3src=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zz4bJXa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zz4bJXa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ACDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768588433;
	bh=lU9DyLPxxCWsIGEItOU9o7jlpETCjIyTRwr1Rfq4U7M=;
	h=To:Subject:From:Date:From;
	b=Zz4bJXa3hc9b6heM3qrLLY89A1+Bhfk/Fye2ybJg8OhUp6txysj6PDY75plEqduH8
	 fKzYGi0YLh4/1qSfyx6pGY8M5VD0ViHOZbyfWuBk7KLfB/gUx5fR4ULF1mRiLpJ6ta
	 K3iU08bvjDIhCtbULBLiBHzKEGtcXWCARviFctWf1xrI/66eOSJcrehpbLzfeNx6VP
	 qSR8GFrRb6iuimlscztnHK8AFAcD5jv0o7b3znGYaoCQtD94W/1+pIz5+m0lw09fQV
	 o8Mz8h+bhObsin6qp+0oH0i2xPkarn2ZdY/PBScLEUFkfyD9QEkolZyztxCwjchvDR
	 jmYrmz94MflLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9363DC982EB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858843359.22021.8196304396406994280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa739d98b61cedbc493b2bfcf5725594566c6d96cc56c6a27e34ee7ebda7c4ca
Date: Fri, 16 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768588433
