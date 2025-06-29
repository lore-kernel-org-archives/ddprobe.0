Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D07EEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751162396; cv=none; b=bmScMxpFqCcDFH5mksiHL2PIPInX2E1y2Sw5wSU+sP8txLP2FXWviOh3hu33HK/1FlqhH7qMWX2muBxf/UQfwG/YyjfRdE9P6moaWHMPIslf6KS6BdW1mIp1H+4SPqmBNXKe3UgOltAs0i5X/kEyZyEtc97+PEzbir1sIQiMrLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751162396; c=relaxed/simple;
	bh=YXuWVubMIVVe8Kpc9NCOJEttU/tlGKWprQiMj2s/IKA=;
	h=To:Subject:From:Message-Id:Date; b=Ue2GZAPU4557YNR6+e7kuJhzrIpVlYbK5uBPGAsIDnI1KcVWCyzPfvFR1OQ85KwMNmtJ996PB35+sycXiLdLR3frxmdLKgdAbaPk1Oqrn1SHLlJ2QU8Pza8ANH/rlYrgXzyPOnwU27NNDyf+iCqWtYbWDhrGsU+EGbfhQHWi5w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc9UuqE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc9UuqE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518EC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751162393;
	bh=YXuWVubMIVVe8Kpc9NCOJEttU/tlGKWprQiMj2s/IKA=;
	h=To:Subject:From:Date:From;
	b=bc9UuqE4vHy7ZcaEvFZityiyYrfsnKKt55Hk4gNvwHZGrC86x4acN7KxyaiE4jQZj
	 qEuQ9MEa7HZ+s2EBJDLcBivePFlYS1XRxvp69x5IHFiAr2VtyiobU/TM0raO4AisMi
	 sw5gkvMss2JqR2Z28JBOnpTBiVhWrz0z5tXLRK7gy4V4xGoG7yECvDYOTKmu00mSIA
	 e4CJGkSwL2G0nLibqbE5UCsOJxiAv4EJ2LwF/pCEa/Foe+IiJBCXRfAZj1Y6gCidQ3
	 495KxlQMownzgNXHEtlgIoJ208ofTIdqYZsgf77SyUIcVCQ9cuLS2FZzvhlZ0N2W2K
	 M74gBfLI6Nncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91827C83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116239357.3271.771674148930433975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6c546f4165792bdede66df140bf1b2bba83535a66332dfc6ff74ef67166ae6
Date: Sun, 29 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751162393
