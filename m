Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F87485501
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787844634; cv=none; b=dNcm5A3d2tl5eFW2Z8P9F1ppUCfm6YQeUxrxca8pjt57tdOAxsvaG3BGjLqJADky8zathV7KdJJqqVzlBoL0EjvhIyYYXH9VOpChlYOLDNjpYL/dYB9vVocKA5Mivcq4jrCzRmgqnzGzLXlBr/hfeHqipdxWvWPQkrXwxd1Q5yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787844634; c=relaxed/simple;
	bh=GGeQNn+zRS0Ay1t4wEJhqnyrCoCazz9qvxz2n4V/PPA=;
	h=To:Subject:From:Message-Id:Date; b=rFMhVt6Q/U9tLioJAb9EUbgDouYnwqNb+cHIiXrkLKT3Nyy2sy/N8ns+TD/rBz+4lTYQformvgkyRRz+BM+fvrBvfm76v77S2SgBzvDk8wU72oj/QIFowTW+xVngUI3hzfeRok1i2LGy3PBagE5X+eqFwC1+oERv1W0WN6Hoog4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vqaq9phA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vqaq9phA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9B0C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787844633;
	bh=GGeQNn+zRS0Ay1t4wEJhqnyrCoCazz9qvxz2n4V/PPA=;
	h=To:Subject:From:Date:From;
	b=Vqaq9phAIb13EOUYmudRKHH2d+x2arlZ0nr2kddkMyE26ilFp0p33mwiz6EyfpoLn
	 CimI7aPSLjCQok5KGGAjjP5k+0zpgKqG6yHkz0a8XJwhPkYuLKK5L4rEFFDO8jSICT
	 s6dw1lPWzi8L3gzX3yhrAxlxXibjy61cH2DteDg5lkCZKQ2jWyh+4SijgV5bXMEvCp
	 rEzpA0e64Uh/858Crm78NkidfNxHye3Yd9taf7xbHl/C9qEsFXriisjcv8F/Ym+CEb
	 +8t0mJMUkFAcdyfsxHCPcq5fXIBR3f09g7toChB3LITZIxsMCc6nh4tHAqz6T1ke6B
	 b6nRbodzcPCmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3EBC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784463369.19272.13998988841473309588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2d911570154a89e41251d171742d449e4c148ad9f39f8a5193b9afa03b5286
Date: Thu, 27 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787844633
