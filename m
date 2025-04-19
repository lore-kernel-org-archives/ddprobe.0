Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D2D15A85E
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745053194; cv=none; b=PSvPww4CdEXiXucuvdkcAzlMRXTjqqJFDJ12IxJtpePKT62d7+ompjhygCgh3rGlbJlY0ht7QQGG52rexFvvCeEujoarv5L5aNJ8z1s32BEynp0pLikJjMFLovXIYMCn5TIE1PG+jp0NuifX0h9uY2ezcYYILilUFb2wAKAvzuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745053194; c=relaxed/simple;
	bh=9yo0Tq8tguDIpzz85veX0RXgal1j8zmVVE8MAu5MPio=;
	h=To:Subject:From:Message-Id:Date; b=DGS51MjFlK+zClwfER5RVHhnqEnshqLBPt3GuK7ZPxy8nQ/dnsfWu0huWIEmfGkuvrOLADaeko8F3jn28NQTsVzqrHc3JChUU9eLDsAPn3c1GkMRE8xdNqf85bNjfo7heCvpdPzMLeFePGtKoNqp8pfuRhs4tBRCoXb5QFCB8Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IF/nykm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IF/nykm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC42AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745053193;
	bh=9yo0Tq8tguDIpzz85veX0RXgal1j8zmVVE8MAu5MPio=;
	h=To:Subject:From:Date:From;
	b=IF/nykm8PFWx0ulEDK438dZ4cxkNKrnTL96kSb0X8qF2psUnDWmrbjDfa01xjlptY
	 nPCuH9YmUA/T4BiEP4f6WpSARTCNJyn8YOVNeIpI7+fpZ6fqFnX2AfKKvaR86zYlmg
	 Vsq6mG26d3naGhHi6LpAhoxfmUkhAYPEH79mryzZi1rMHFgQKHM5FfgCOQ+ZmoXg9X
	 j0DqqD4L6Vo7ViA7N7KbcfUcMVceJvPwAKGPvU4tmwIlAC3edb3cRuzZsZeGkZTpGw
	 x9W6BqXKHkwfA/TcPXa+LVgEvZrnc947syh+9knP6Knqh5HaCTT0j//wSFsui7L+HU
	 IBPpkCjBY7Chg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86E3C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505319365.19281.11442743406838664906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dafff41f2450429725054bd6aef44a88da86fe044c9434db421aa4a51756d8cb
Date: Sat, 19 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745053193
