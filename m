Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAA0215176
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740580134; cv=none; b=cNmnPhfkfIOOCUtAe4/eN1E2rDeEpCUjbyBIv2bQBzn/pOsij9u4ydZANSeIJCdzuucUv7VBRVYOuaYT5e9Ulrg9jfoERRVlP0WPCbMpnxC8gPal4Q7pRsHA8RvN2TWeRKuFg+78hRvIPA9PF8NQ9HpHVK/hYxEPyvw0yvWxCSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740580134; c=relaxed/simple;
	bh=tPySrVvbIkJQWXp/cnMnQwJHfv0MBdNMwuCvbuIZ5BU=;
	h=To:Subject:From:Message-Id:Date; b=Qs3L8+JR26ZKBqfd3ckxi1GGr9ilRI3up2lmbCDIEn+9m8A9VNQvPHyDij7qxbsGYrvaga5fz1X+nLNsyTWLPWZH8N4wHaztJlO0A+yjjfFN7785PhpogpAdpRvEdvaRBj+xsTDZdXE90ADWjsUiWwfRo58lF4TsCHJgNrW6fwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h14mucN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h14mucN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48DEC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740580133;
	bh=tPySrVvbIkJQWXp/cnMnQwJHfv0MBdNMwuCvbuIZ5BU=;
	h=To:Subject:From:Date:From;
	b=h14mucN+snDB/zxe3Hh/d5GBMpMjLF7sMKKIWOw+9Cf/7y4KDDZhzX2Rh2adIOwzp
	 s9pa+QU3jfHFOjfeoZUQhzHpk3ptDGuemd3UxJXecZ724YOEjSvOep/2PottEdrChW
	 DliTZ87BkLteFHCqlJcRmLLV1cCaNBYlAAj3YG2SgL/x6Pf0SKPiTRPyeg5XJzckgl
	 O4D61qZaI5cAJMmm8TIEyG+NYHKa2KKOG34b8Jf31TRLCV7ug2N+RVHtI15bMBY2c+
	 5kg344roeaJWfV0kSnVN+hAf6lQM3mG9rYwKuQ6FHd+GZgYvC/V0EXbkjFwznV9VWR
	 ZmIBb899JQYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F34DC021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174058013364.20499.8361476326635904724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56929e31ee22ca97f7512ad5e293280a720dbcecfbeddfe5e747bc45c0839884
Date: Wed, 26 Feb 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740580133
