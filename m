Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C4EA55
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762714194; cv=none; b=mXjWddVD4/rxnvrWtoPhtQvO9mDYQGa8HtWaB5jYFdQ/N3Lc2PEG8LjlrHaimrfDCLkmFGAof1NwoG9hscLizPTlTa2tD0G0OCKyMFTLm2Df93ZT+YLqiPZ5GXvIvCPsp6fa1P8EAD4vMilTDSLY66H3ZDmXZQokQuUeNkF+/vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762714194; c=relaxed/simple;
	bh=nfLVR5wX+MZ5utW/5j77o/5Fjp4CoYCCA8XzDMZhKUk=;
	h=To:Subject:From:Message-Id:Date; b=UbCAh/H8D5driuEtWww+aPiT6+DbxIy8ug9uBMqOaCgPRO0Sz8kGMhyeeiPuY+iB/FZdtkwP+UzuGibfXxZ/W1VsRnCKfAlPQIFZbqt2Wwvc4oiqQA9crmWm2ck+bQJHYoVseGLilmS3W/IIaK677ngV0Hn1rYkze4TLGunVUTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfKnJtlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfKnJtlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5375C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762714193;
	bh=nfLVR5wX+MZ5utW/5j77o/5Fjp4CoYCCA8XzDMZhKUk=;
	h=To:Subject:From:Date:From;
	b=AfKnJtlz6gX4y9vTC19+S+dhBuCBGGj+xwssGLuN62alx79JEN7o14hqLKVK1h3W+
	 EHj7vX1a+QPvUm/z8RNjNC464o/QLE7BmpnGBkGI2LysaVhT2ea4AVXISdSywmeTZx
	 cDN1sFHTI+Rw3Ng7sJE0ei5G7dftuZbN9iGWomcNF2jdc4x3JtUU8P5jPJ1FSJ7T+f
	 KnwMCJPhXje8cjGcNpZhQNohOtPSoYO23lp5I498qr+Oayqf1vj6K6EWRcUhn1QuAP
	 mscvLlYQVNbJittWVr5m/CV3JR/2ByE2b0ul4xg28OVB18XOrhpzMRU3a3w4EY6TzU
	 wMsA3TnL7xk2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B35CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271419358.3219.6218988895701901458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578e014f7b1b4f3ddd1828fa98ec060d9980a3e86107e94f18d5a25b1aa3485e
Date: Sun, 09 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762714193
