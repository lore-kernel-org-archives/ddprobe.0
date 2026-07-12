Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5954137F741
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783898914; cv=none; b=VEZPnPdzPZbIPuDetKq9ACceDDI+3fZUnmveMuCur254hmGkWZUT+f4W93K5fP5NAbzsG92GIBaZOWtyou788x1E4cFgYk+Cra83OMAZKP3Z08BcrNtsTuwH5AjqNukzauEI6E2QCAHEAyNxRDA/qxqqH0l16ZTUTSA0gO0imNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783898914; c=relaxed/simple;
	bh=kdO+u/cZlB3iWzrQjpXqDdUJzy6/3m6UECsEY1sdv+o=;
	h=To:Subject:From:Message-Id:Date; b=uYujp2HJHW06tMYqUPiUBLV84qDSY/XUpd3RZqGW3vUolqdWUxAbXXJFuy+wMYWmk7SQBnfVMkyXMoVAGF+xoYU0ebIM44EYp8hOVJ7MLSt3T0yB0HxyshTrOmW/xtqarId9sdYxwYi17HqSrom/m0UElUcO+9OQlH4c9Rm8t2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOtn9PZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOtn9PZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DB6C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783898913;
	bh=kdO+u/cZlB3iWzrQjpXqDdUJzy6/3m6UECsEY1sdv+o=;
	h=To:Subject:From:Date:From;
	b=GOtn9PZ6rsaL77kZJ/3Ij3iZ7PR/MAr9GU+bm8Z69F6cZDReUCO+gXMsjGhcxNwMz
	 wUytHeeMGN13G+gKhtTX9VsXBZj61gWobGphJkt8FPrQ85uzyaBuC91lOOuwKKw8A5
	 j0X+MNLe5ZmutS1xZGenLW31ubBsMZfgdC0xR0HYCYFpKCHava6WrQXr1S5+us1EdY
	 qeUeGpydw2sL7moh67phzLSP3H4f1h7+jbS4rxPaNkKp4SEjq073x7Zsq/PrbUXPGf
	 naKkUNl1/h39ybQ/L1idDs9Q+gkg9aHOr/VY2GGFksao6/gfArfqeZp0USR4rwBZjZ
	 yh1Vt+/Ag3+sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB764C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389891368.10431.8608524898064690017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8854cc2dc71e4bca1260280d0349bfc96bc7f9a7d9ca50813705da2bac014a2e
Date: Sun, 12 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783898913
