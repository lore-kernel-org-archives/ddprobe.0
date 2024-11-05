Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C411EF93E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730829954; cv=none; b=FBkCLn/9WYLtwhzEzOrKVeSexbxjsoBH6k8v7vxLRC3PDSkMLhQovnkXwgTeMUSE4jZ4Xd2LIRl1Eau037Ed6LB+ugP7Ecun7V7v3vNKxUozIeqwHrWeblsUInA8YecMAIPDah3JmLESlCOAtaoLcfu9+rCHVv+4R/u64WnTmpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730829954; c=relaxed/simple;
	bh=67WjFEkg4kXmh+gg+x1LyEN+HgUIuCJXXT4CtIRvR20=;
	h=To:Subject:From:Message-Id:Date; b=U9IbHtRoNPBvmH0S6RgrMxflgBRIhqYhX7n04d2+jcBohaEbOjm505OwPliDi/DG9my1lvaTVyeSnjbVsI4kxi2T0/jX36cWDo/1OMS2uK6xtUITRW7r89nPciHYbIbxWPnFRD/9mQO9JzUbGxQtfpmquXee9BGthBD4deKuvqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pabiR7jW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pabiR7jW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C872EC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730829953;
	bh=67WjFEkg4kXmh+gg+x1LyEN+HgUIuCJXXT4CtIRvR20=;
	h=To:Subject:From:Date:From;
	b=pabiR7jW0FwefbA4i022QWEeFIK9mh3BBAg3oUzxbAZ8x7liYmcv/lcIb/ywkIRsL
	 7OC1TKYwK9z24OZP8IR36+uOQQcwlUAd+VS1mrCH4tchvEUxPqzPPpKyLQLq43sYPO
	 uBfPjeqmJChFKyEnq0ouiyDZiCuF10KY4vMLHkkNPJi+pDSaMKZMaO6FrjtSuMWi/k
	 1p4nBynzxbQHaIlN1UYzV8XG/41cWDMPcCkgOEsyJ29rx0xccuuAzw27FUCPDXw86x
	 i8G4ZlW4rz0hUPfF+9NaBFEINlJxbcl1Dm3GBGoboPkpAtljcwKf7oi4NaZdbjxTT/
	 JvQGDI+xRbn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC993D3177E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173082995369.29420.17099477245955131399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e133954ac7413b90d1323050372d017bd9acd4e5fa5398fa8d9f1a4ace5056b
Date: Tue, 05 Nov 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730829953
