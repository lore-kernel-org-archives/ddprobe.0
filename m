Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1126E15C15D
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722876354; cv=none; b=XYH77RsqgfBbgMc0m7eVSh2hWKer+cGENpD0GmSCmLzMbJZrzILV/nM68JWeHqjeRuQtfCa/uP+dS52JBgCT/BK3oJmWY4xC+qzxWaBlkyefEOfEmnHhh5rjY2HiG+TRjA1GvfYWrwpMbqBDIQBTMbTV8Rnlt8EiibsRqqJV/8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722876354; c=relaxed/simple;
	bh=Fn51kX6xYA11MIr+02S9+PYf06XU4Xe6A8l1sLBxIpg=;
	h=To:Subject:From:Message-Id:Date; b=cqsrBsn+9U5Z0KuiuWe7EFhyMQ7kRIaBbJTMKLq53UtSyHm+K8fAgquLftAsvckgZ51NnzJkdzHZXHRZ3q/cnNzCjawOdMk2OB8u6BoZ2J5//ILbUoUhUBiYUN/4wSzMrzm4j4upydfVSLrSmmCulD1PBqlL2i36/ex78G2AXWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfseAEa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfseAEa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25FBC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722876353;
	bh=Fn51kX6xYA11MIr+02S9+PYf06XU4Xe6A8l1sLBxIpg=;
	h=To:Subject:From:Date:From;
	b=BfseAEa8I9fBI5mFbSNeESdv9ElBDq+GYF8tKdMNEyVfLdvaIghufBqHxt9X2ORiT
	 7ZN37sTx9Db32WT/k4UBQUqdl88m0qqMBOxwr904zOG07LXPOxxmRxxzkgYx707ewR
	 jwQ0Hrj+cl7mQ2yyoRFXl3ty0bfrpNnfNbM6imFow2of47uXBSju/YK/hLh+279R3Q
	 BVs3nVCyux3zxA6CQuKp/BX71bFT8ZI8VRc4Nfy6fF/316IDXOtKDTu/C0QES+Muks
	 uI7+XcpokdEm5WUW+ZApw8d9+lZdGAEJy7S83q9RjrR3CrTnDXlURTx/IBeLHRUrh1
	 zW7Rt5KmaqmnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928BAC3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172287635359.20001.8444939453761533388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5426c4f7295f1883803039527cb1e7e5a1bb5b2fe7239df856ca8109e2c6dd5e
Date: Mon, 05 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722876353
