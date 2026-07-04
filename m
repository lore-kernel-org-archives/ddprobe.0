Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C85614F70
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783133314; cv=none; b=VD3yPO5ysMKnDfhOvgYc8iwpiOjVQxVGX/vQTyKinMURhxqpnYtlyzdptrHwAIdG96zxNDIWwgsL2h7Q4WbXBfY4iCOQaRfk7TPK8jHhqyDlxy7dCoPlydTMSWJDCNHMtQSkvz//yfj49lvC3X9TAYRYhmdg7HVtQJFlEhRcZsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783133314; c=relaxed/simple;
	bh=v0zb+URKVkqrNvfRic3nBBuITsOnCTwnbgYF8XOwg4M=;
	h=To:Subject:From:Message-Id:Date; b=YQqR9hGEA8HAPlQ1/itg6/PpMy01TbGDH0VZ0+tmwT3U4BhjymuzrtkJQwkoVgmlrCM0CEedP/HXLiHIk6D2LjtZigDm5H0DH/xUVfR6qul3KqFLsUrtfqGfOpFAGH3xRv1Z4XpVJSZlgje7MdTB/gvSibbecvpPyLJLZNbNWlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNPJtnFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNPJtnFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2F5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783133313;
	bh=v0zb+URKVkqrNvfRic3nBBuITsOnCTwnbgYF8XOwg4M=;
	h=To:Subject:From:Date:From;
	b=GNPJtnFDEAS9MJEZKdxvDunEjmSxF6PbmcNPo/8Ng7o76enJXJYwSyGGFQ1huEC8H
	 h5lP7Vbc9HSdS/huI0ktadePS7kX2IRl10NElgom/YabvZSZ/2/kAHXsPtP0HXQjIe
	 vUlAD5gbrE+3dhbpycYUdg3gha6HJQdI2EbH5y7j5OfTBW2M62FUj871RechlRx4cN
	 1FlpNMgrWZQTWLzuAdLTB5lfKdNSFBB6ejaN8UULsZlzvODCtTOrMiFyfUoYgWkHpI
	 XpDcEm2b572lEX70Q+IroULvoNGnkt7SgmzwdPv1TMoBqlP9Ij0weCHxZI5gBXFBbq
	 FpDq8vdLCzdBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A84C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313331368.32416.18025767952131855139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9730256353c3197caf48fd7cbcc4e171243338985c5f9ec709889cd2ef6a9110
Date: Sat, 04 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783133313
