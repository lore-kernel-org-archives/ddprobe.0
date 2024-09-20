Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2199323A0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726804554; cv=none; b=ayTUMTn2b5degrT70ge7WF0o/7Mr5H50aCWHPh3UdxODu+XMjgv3zhf650uDYA5NOc1bk9Qrb7U521Q/eKeAg+iamqAJWwmDIXUId0yLYN/l0/HC1vukUx9SrwB5TBgNqKM75twtncBqcB0vMqvs7s2bIpExsA0Kw/HkXQo6t5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726804554; c=relaxed/simple;
	bh=O+VQCnI8NKs+on+8j+ZYeLuamVsLYcLi4EiU6Vo6bGg=;
	h=To:Subject:From:Message-Id:Date; b=XP3r/aINW4yIoDaflVyMTcGjo5LE80+yMKv8oYK3QY5eVwwV5599MAG0ncT7mUXtrQguYhGLRaJ1HdpWNDFhaAZeiVDs9abXnq7yF+XiZMO7zBhR79LORVo46RMEEv++lXDZZMap5JXyM2NHAXYb+bPCqmhC9xAxcYRrdpdG9sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf2UGL6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf2UGL6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A482AC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726804553;
	bh=O+VQCnI8NKs+on+8j+ZYeLuamVsLYcLi4EiU6Vo6bGg=;
	h=To:Subject:From:Date:From;
	b=lf2UGL6+slw7PqikR7IIRz67VBqkxro3BWdDHLDsCcmleidMh4vSjpqs6yuDnFY8B
	 9MIzTyGkD230zDJ38N2SURM/bK2HF8ce6tjfYeusFZZWRZ7QU7Zdl4okqzS4iRCnx1
	 hVJKV7dOO+Ez6FW+SqiaR28f0EOnFxx2o3HFd8C9NKqLkhJExc5w3EdXUf0uSeBJFI
	 QXx/7g3DBrkg46VXIYe60FIn+9y/Qqdxh1XLIKC0vm0bxsin1r6mokoznfdGHdNFex
	 o2viCPMDNVu/ETFpVqahYHR9Yi+PKI1Muhc9ZZ9xq+aqixaYqXhlrxXd+re+W9SwRg
	 pwL7u1VgK4/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95998CF58C0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680455360.2068.8120346889653771228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9622be8234b5018f212967eff2a50ba240e2933eb252b62d6f17a2666e4979
Date: Fri, 20 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726804553
