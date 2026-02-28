Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117FB33C502
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772253894; cv=none; b=JqnzOaw1einzPRPBwMs2QbGoGmsXkhV/q/8ieDfN7yJt8B3wmDpCfAp33wjkde+v7cswI5ir4u+NLSjJWLYyS7ayXb2471HPKpMa8Xja9Sm9ApDpJVaRrPLYu2HGMrfaUlJXTaYVjVHqYMylpI2RKwJeeuilAf9GhbCXDB1K+5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772253894; c=relaxed/simple;
	bh=2DOotkCiVGzC2b7VenD4VmzFVMPTqnew3sQICxQ7Sg4=;
	h=To:Subject:From:Message-Id:Date; b=cfk66nQabPfi26Q8JSGhjOIBo4nmBhGh8QpPDfcfNh3IgoljUz6H0PgdVssSoWVPCppNJvNs71I1aTcjsglZzPMuamO0FEwDxLWm2C/g/W++BZHqznQlxOy/sHIOnfFNYe8GdAceutM3ZV4jI7Df/sABYj5g4GXC9Kj26cq/Ihg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQ7/4zkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQ7/4zkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C1C19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772253893;
	bh=2DOotkCiVGzC2b7VenD4VmzFVMPTqnew3sQICxQ7Sg4=;
	h=To:Subject:From:Date:From;
	b=uQ7/4zkWp1XIdUJ2IwiaBOfvsOUb2hxcE+EX0SgNOf65gVhZmi6ERtPag+M9ydrgy
	 5qjmBEa0VEJfTK7cHskMLDJGNJFfrphMIMTpAS+TSiW6lfjB8qQjwUsV+lTGILpFrJ
	 ER/FtW9azL+ly3lwD8281xqc2/QbhVSa7x3ocUqmNEL1GB4CNLlwbr1B62cEXcWKLA
	 PgrsBU14mFC8M0BvdULUE9pOY5Fm4kCBQd/WOKUmBYusT27ZQf8SR+A435Ayrgro2u
	 25349/gmf8OJb+q9VZjWn0wviVnIS8DoTCN5slqtclNaCJmWL9yLpRHSG8uymiYoZs
	 PxwX0mibD+iyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A53FEE4C4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225389359.13890.10807290517118547416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44cdefa12d004c4621a8405c59078ca63961017a06a3691aa52595a48481e9b2
Date: Sat, 28 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772253893
