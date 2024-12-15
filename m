Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23109819
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734232554; cv=none; b=n46oQXb0GOCdnmh163kZzeyNFusL2bjIUIlZD0ivW6ElgOOV9MCbf3m3wxvEIsFJ4dUHE74YhKN5bUKitPDl3wo0YI+CfPXL1H+OGWnMLzftLQLze2vzUN7WiLnW57rKEO231UKzKq2lJk6ZObM89RroODi6jVQoQyN6nYYQrVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734232554; c=relaxed/simple;
	bh=O6XE3CfmaHM8Iqi6yrTioIVzqDTn6F36TuIq5XQLIQo=;
	h=To:Subject:From:Message-Id:Date; b=h9nUrmvr1t4lO555qwdGcYH032UUiEfLxucWBHNsujmgJ7Jjik4wcY+2FWZUGr6mbcHIGqSZ19y5jneAoeJP4d1ZdluZ94vg9/VyYefW+aN911sTqyWJRPtqvW//nGiAeR2fY1l5YejxRYeoUldY4p64fBjgK1phFSb0e79Znd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4re6K4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4re6K4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE6FC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734232553;
	bh=O6XE3CfmaHM8Iqi6yrTioIVzqDTn6F36TuIq5XQLIQo=;
	h=To:Subject:From:Date:From;
	b=C4re6K4wMApA9LBGrjrvZZWlLtpNxgy2jshSrZpFnyuMwxVUnkcuP9VHsVqnywz/p
	 vt7faYIYwD6ItNkLyuQ/xsabyQ6cKjrxfUjhEUJ3r2XTsfZOPPCiKsYDNWoJMqbgVq
	 r0e2ifv1ctpuQu5I74lWBvC7nzRr7epJ+1ZHwVLl4XEzo9mabPpETugGgv+KjgA18p
	 rUBQNYdTkRx5kCaa9ENc4QJNGwRHVtKsj2MuNqEiT0tQH/r5I9RU89W2gSsTdYa8Pl
	 cKEkOFwVLRlmNRDk9Mq5g4RERvvlTPdLHua2eaRl+2ofUered9JNmvO+3Fy6/tg51l
	 Kw4KOL8S+Em2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97319E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173423255359.32306.6286059872961314581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8cdb9a95343f97b352efcbab48853d4e01a30dab6b4832a594657ecee64e2dd
Date: Sun, 15 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734232553
