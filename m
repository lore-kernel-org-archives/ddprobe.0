Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FDB72623
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757753394; cv=none; b=kAR4YQgszHhV5nW/oFp8S6mUBDAZRDOG7CUhgcHRckb8BowkvviR5exncUATRhhiu2Bs+lhzKWcBQ0PGzo72yHLp4+kupl9tYsNDj65sGGr+gdLpNzf+EJ3EbYwFmFXrvFyy6bvtcWZVJVCQcwnOPpcDzlw32Lz0fbOstRilmQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757753394; c=relaxed/simple;
	bh=OvHy8fIkRxk3/2mw+jCjDcTU0ziTgNbw+OxKPVwjM84=;
	h=To:Subject:From:Message-Id:Date; b=TACCXVg9cvCgDW2T3HgNSoLmC4C5V+ihLYoInQzn96CbRBkruPyhafOYGIkxk+4iMRaHOYBsJWv2YgmIURz2yHsDdujg7D8zCq0L5c0VTK/Yb7Pf92cYOMNBWm3CL26g/Wor2splGelOsPHWMLZdl3nRMHXlNltaELS++odKqvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhYXvw2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhYXvw2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53CCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757753393;
	bh=OvHy8fIkRxk3/2mw+jCjDcTU0ziTgNbw+OxKPVwjM84=;
	h=To:Subject:From:Date:From;
	b=MhYXvw2MJcbvdeXuSuSEGb7ffuqKWyw1Di0ggfk9vR0NvJG05OIgdEYFclNsE/Nql
	 WI0bUNTjhs8TY2wixC2UBNy9kwGwcd8xp3x338rq48wB3zdf/8lUA32c+JTnb7UJIp
	 qSCckaPrfUYlY/03OZeHZsBFOeylIQlBlryVGDEbjNJkH1ChgxEt2pF5hLHUDdg/Jz
	 UfXP2sMD7gwgIMuOezb59di0vRXC/OXYOt2PYYOUIYZHcXQ/YgI+QiyMZTcQrCH9tH
	 fpzn2ici4c2L874sWjG4wg7nfGHj11wNQbI3FIe8Gc9HwlZlSLPSpQNngfJW+A6uIV
	 eom5ItAxXxrSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9221FCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775339358.12418.9052956221217342359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2337c89479b25b9afb4e5cc75c1057e5ecbaee4536451192770f93fb8f7d4963
Date: Sat, 13 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757753393
