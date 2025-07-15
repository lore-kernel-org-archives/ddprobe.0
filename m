Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CFF23C8C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752570594; cv=none; b=OPxhCg49kcMBVh5Q2Rq2E5qISpy+yDaHsX7j+FkrnSwBdJLjIxVMFuSeC02rFG6EMpJAiZCfp2PHHPvh2zGHpq7bKYRF4HmzHzzA1vt997br8oO414TrlXRRpulttHArtSnDfc0YTpEw8QxCq/mMJmmnqygXC510Neq0Jp1JCRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752570594; c=relaxed/simple;
	bh=MJWdAIFfcg99y4YWhoxxmibhwl06NAP+FaNzWPc+Mqs=;
	h=To:Subject:From:Message-Id:Date; b=TK9htYhZs6k+BgErFpue1Aj0uNid9wyp9oSWWTQvfRDhB20Mxf8UIPQ24NrG+zxk03KnKyzbZejL+zT2TuKXANRA8QjR5j4V58UslQLxFFTnEEltA/WXEpsE+9HkZccrG20p7vxVKlNCyw1Zqcodvc7DPHuAoWfs+MBWa7JnSRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR1ebBKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR1ebBKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C219C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752570593;
	bh=MJWdAIFfcg99y4YWhoxxmibhwl06NAP+FaNzWPc+Mqs=;
	h=To:Subject:From:Date:From;
	b=IR1ebBKisWDL/EzsRHe9h4PUj+q0znKz26U4SOeQD8ZGLe3LAFlOVMXft6Y0QKQS3
	 2UVS5kirsRNAMYo6Fi49PaDZogRM7CoBkZM/DttD7rEhQE8SIMXHOjO5NSNPMqzRHq
	 BucqGMV2E4nQ02aBUW4CM5lMfrnMbPp5CaX0ahGyRfDBUFwqVVhVqXL81iBWKBGjjv
	 gEoIYu7ml6LGNX+BIXvxoTB5PZNlQDZaEzoxFFiIdkydHzFi5jQq0KVS13Q9zwo0iB
	 Y57wEnY8LbwDZDVT1t/huegu1OB02Yl7w4FWc4bVzcnrUUta4oKme9slh7ytH6cVfo
	 0pl96xeCMdQ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3A3C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257059357.21100.9694633668486308161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945d2545afd07314d023020257bbf362d1edb5416877f5436d44a2d1de47caf9
Date: Tue, 15 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752570593
