Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3386820EB
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751670594; cv=none; b=IZIXCTdVeJNODXmOKmVLa8HhOPNVoMKSYjvAzkouKaBeWlaiTwj672qk2WufrCXgAjTd+tPUKawlDNLBO2oU/z84ex/hOG5lFPRFLivlw8AsQrrBJmW1M7gl87557D/bnXJRwhKB/FJ7JD1ZblRWAgwLK9snPL8ZC9duDRRSLW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751670594; c=relaxed/simple;
	bh=Wm0RhdxOZ+LSMkKE1S0eLRDLmSJYbBvo4OeKO09GsiA=;
	h=To:Subject:From:Message-Id:Date; b=ByfwO+CEdYsp1F5EK0n1bG+npKhTNyLDS/2ce86pFgqGvmRikRsCPMUQ+9+wiDluQ5tkZ4nCDmugpBtersOt2/4hBx9k2kGU7t+TtLyBzhoRVW53mz5mltKp2QdazKrDTJsQ9FMJ8WCV0JgtVIkpRn5R6zXkEGpG/ReP3qAOGEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3Mzh1uI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3Mzh1uI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B79C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751670593;
	bh=Wm0RhdxOZ+LSMkKE1S0eLRDLmSJYbBvo4OeKO09GsiA=;
	h=To:Subject:From:Date:From;
	b=t3Mzh1uI3JBRT3tnIyysq+R1v+qeImtCwBPvR4G5eDXcJZ+b0gThRauPMOW12jLKJ
	 PpBk+IQyJYstu5+TjYOHSMfh1mEUps0L3w7nJYfKBVIvcxnFbXgPFxdvrxK7CUDwEu
	 /bAHgYs64XLGMvW76tFf1jdRzjxiJWN+UeeLMnC+SF+uGITTqSbKioazVoyb762slQ
	 BPx+gLsaMCe3AemX394hSItAtRxMdZw+2LatHDcuiKxUYe+ioS2cfzpBTIK7fGI7BX
	 ckdWUoTD0moAe8RG3SY3mEtoTXeE70Yoqvsohov9jghGB7QQNCwCabmvCLHQiQeB1L
	 M85LNplIiUEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF8C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167059357.28007.7196786850359881852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524aaacb515a2d1be7d91f2d0a3801cf75feaa7523505944f95307235e48cfab
Date: Fri, 04 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751670593
