Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169EE2E40B
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758458394; cv=none; b=MS8LIndbg1cIAM1uDGNykqvFJEANP57yqfHye2e+7fjXBF9ygy5MdgyAzxuiOc/m5AAMW1FGE6E0nBgjL0a21YJVGeKYfJOWA+hX2/39UvH4h8q9Ds+tDYKeDtgjctd2knO/lug4yIvPpBw27jmVClafuwEqbhLstAb9JZgzD60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758458394; c=relaxed/simple;
	bh=STI8G0ro6L21fyInALJuAIeDmYFWZA4dMIAN81oVUKY=;
	h=To:Subject:From:Message-Id:Date; b=gLChiGr42oVC/bgLkpyVRHW5DeicX8qSzw1NtoRrtLFhBtgTtsMaCusgfJ68b4jU2GIBr5ftZlmYtcq99bTYVVm4UOMjBDNjg2rmD6fQhxEHExXMIzPMxsyN6v/eVgbrJnzb84zffFj5cbX46e9qGYQN7AA8MbDeINvZxAP3/v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Px60yrlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Px60yrlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E32CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758458393;
	bh=STI8G0ro6L21fyInALJuAIeDmYFWZA4dMIAN81oVUKY=;
	h=To:Subject:From:Date:From;
	b=Px60yrluKcxB/lj8PcV8JO7HoZlhC2yriIcNU3xu4Umpdz1TEJWAIERDy/yN5dX3O
	 v6oqbnxDHcGnfsLmOcGvyS8sLAjZCK5B/brk3qL2svo4k1SQ+VPetSGH5i9d9XHhiJ
	 G9EfzFgOTByVXkgMNu+Sap2t5xr8ZSMS1kwYHu3ZhVB8cbTiBthuGM19ixXc9cd2Ai
	 dE8tC2IEADEOUedl6dvXRjHdG1vk5M59RBloXNG0S3ZDnRB2s4sdAItr2oUBIox8iz
	 JNZyhLtcTiG38BKSbGHf7h20sRUbm3IBNWnLut9jF77lc96qD8732nEeikmgbBXJy7
	 BUPTU+5vRnP8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F6CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845839357.13957.14847055550090090642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701ef04484574a07bb5498307e17a7826ade680942e1fba9627e6c7047008233
Date: Sun, 21 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758458393
