Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4831421D5AA
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734724554; cv=none; b=f0/RUYBQ1XOwVQfju1ZH0/3Di0A2q6ar+Xn9nDvH+xD0i3fD2r+P3TumQ920DrMcjNFFWhDSWdnQUJsEDmhRpmRlfWdLiaaJwIvTvZa2ko3Ufg3wYyum/sA6wY2Ows5nM0Gf5tLO11ABWpqep8y+8ZSDIA4MB7R0365IizV+IzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734724554; c=relaxed/simple;
	bh=pdPP9hQqAv1JwV17HLpr01Lj2pk7j5cmg/XB+uMf5EY=;
	h=To:Subject:From:Message-Id:Date; b=G6ssYksJ3MNrdvQHC2dgbsiHChinfBp4+B7tAk3nb/6ZRpFQAcRxuxALTv+N6KxO32zWDbh6sVueqizzKhjsTGhapNP7FZ1YywHwDrepAgy+Xg5PxO0yIXQIsc947JhE8o/rYpUpxAtUf6Zax+pf5UfCa2vVZlTZyPDMYs/jftc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGF+9uiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGF+9uiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7539C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734724553;
	bh=pdPP9hQqAv1JwV17HLpr01Lj2pk7j5cmg/XB+uMf5EY=;
	h=To:Subject:From:Date:From;
	b=gGF+9uiG+gul6M621Pob6C2lXWov9mGs1uMiwM1lyNklgie9sTaFayCob3SL6QXnM
	 cEYThBgKZ8YTMby0Mlwdt4cPrr5GfTCgCH0naJ99YslzOkhES8VI/S4aLajGhQAEwJ
	 8vyQW5JJghGeYrHgL10SgQT9erl+cppPDe1+Dr1Fdhh7Wc8tQjrTJ1JDI2TkZfjHDC
	 E8xNq4D03BPtUNvh0HwUpbIFos+mIIbdBtohN+Ke18w3wzewKq5hGT6eUTojndkLMW
	 5qA4hPhqHkfQ9JmdtZPZYs3wsJrGLSuhVEpKbaI3PPPCCCMAfxlTMU7BM1YNVDvrZl
	 IhgfxtmhgzUSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A69EE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472455360.28345.2116842434274440643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6f4acace83bc8b625a2661e71bfc1db232de489893f9ede5870b9c089dfc47
Date: Fri, 20 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734724553
