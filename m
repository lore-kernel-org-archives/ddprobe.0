Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236622EBB96
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756301394; cv=none; b=XzICWhnY8UsJ/0UQiPB4WSVkGFcAk4MZdjhPyJdMoY1AdFjh+W2+4XksH+dMgf1M0u3P8lnII430kF56t3/+wfGC7gvgoLvu9SgSa34NErUQrC/+QDzQe6pOkjAUw3JOpaU0tS2/Xm7bo45WzaMI4M3h27ufOJZPsTGPh+fsNdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756301394; c=relaxed/simple;
	bh=tdjAKcxts/Oew8ziKpxKg26xu6x8c48tzI+zkw1IaV0=;
	h=To:Subject:From:Message-Id:Date; b=KZzF3iepYvdeiRtap3Ymv4E7TDYGmKjRU9Ytuc05usKYccMJJFGaT43vfVuQm628xr2t3mS6iGHpp0xftNAmqIttIsHLGheciLiNROWixCQL6nTsRDpU+Knl3/T2re75pQuCR0g+X8+2yhZJ0HLBwW0r1oXjYPy+wPTZ+Vxc7h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQjQqbeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQjQqbeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFADDC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756301393;
	bh=tdjAKcxts/Oew8ziKpxKg26xu6x8c48tzI+zkw1IaV0=;
	h=To:Subject:From:Date:From;
	b=GQjQqbeYnRn/LC4qiA+CN4nAFrPJJOiyWlTPuB84s/QqQ/Nyf5i3fjZlN6+ik+c9R
	 +KQuVMfZmIZlUTRBUC1g436rZfzUaAkpjmtV16n4X2uyHrLrXfBkjblxFTbJPl4NkT
	 7FOHcSWHJ8QUUWNft7/yDqOkTl9qCT7ForzhjhVLCT5pdPEGVt/UZKpjcs+YOthN6s
	 UO2OBaqW1t+PfCIyw4xKNX2RdbZ3rwahZ1+R/iGSmQ0C67RLzjHSzo7i/wNHd24YRG
	 XIrYo/vBVBjwtA8zPAxfXIIBWfCF2SMpfKR9p507bWLxm/vhNt9AVVDL3jXoyttjN/
	 3Dovfq2OxqxdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF90CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630139361.10056.11294865826677054725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329374ddaf53ecc42bb8aa8095ccf2bc64a907a5638f108bb0ccac11b566a1b2
Date: Wed, 27 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756301393
