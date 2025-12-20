Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321741E766E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766218434; cv=none; b=BPOEurnf9OjWYoj7qkgYDB34+/WaAdLZqwRy/3tP1X/rPLQ6ag6cTUzdBh1NjPJxvdpMCivmbusiDHeznN5pgt8ia4hwXSq2PxCWui2Cuij1mtW18g4euSbUIm1+F2gFB6D3/gGgiIjX5ThSNiSVNMHB4vypz7NBUqrvGEN8wkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766218434; c=relaxed/simple;
	bh=/kCAKVUxULWXLH21f4FqJ4M56nxIvj5IJulbglaIyiU=;
	h=To:Subject:From:Message-Id:Date; b=lVwngpBLODXrthXMeSmUBfgCcqRfD8f4XNcivifEx9EDCNDu6PrggJ5X/kg+LrJq78Lejt0BcE8vYOfSAcQMXcGRtZuanvdYahK9Y93RjPoS/VQ3jLUzaBcn2wVGVWFI8Z8/s2LMJqoRnT5pj7aLG/Ycyt4Y1FjiFisVA1esWrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sN1iyHWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sN1iyHWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766218433;
	bh=/kCAKVUxULWXLH21f4FqJ4M56nxIvj5IJulbglaIyiU=;
	h=To:Subject:From:Date:From;
	b=sN1iyHWIUVt2XyBxd2Se+8on6eF5w/PNcZ4jjzPLINwrfGuic1Qnbkq037cXTERDT
	 JZqophWEW+bFY8l1y0mw92jwM9txWWZGYxUBrBoz65C0+swHA0e8PMm5B3JxNpemFv
	 Gaoek2ZwbrOxXG7djGXWI6G6dYZT/ateUPNDYBqm1mRR8Nlz1Z2y56wWeXCiosUTZM
	 4bF+usxxllL4p3PXLyTmCjDQbLNU/sEyk1cWMlFbLJ/HDrWc3DiYMDtrAA/G/w3ury
	 EG23lQvTtl32WqAIQYRzmmozGfkuWzlubsHGhFpvdJm1V1x/ntYC1lkLO9wQTxsAeu
	 7akyEUrdn+RpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D1E6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621843358.17671.3835483896307888582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7bc14b2e46c9e5dcc0d411a9d7ea0c27c757743cc2c7f0740c05fd475ac431
Date: Sat, 20 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766218433
