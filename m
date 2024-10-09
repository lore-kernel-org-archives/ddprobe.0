Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4074D1362
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728435954; cv=none; b=lquxuE0UkVBbdsXUj1HJExCDPItIzy7k6NYHWUgNbSCoSyurjv+HP46SbUIeoXZBAMx6aV4+62OOhVoO/A9EWm8wwJN+bvODNJeH1dwgOq6u4mpYK02noG4+Z7Urd1NeH8XaNz+DKOiBIdGy3JvEUbo5lMhKxz9Dhd3j+7MzMd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728435954; c=relaxed/simple;
	bh=lKKegCq0ZuyMhtADmP84v9gmvLgZ1wfhU11Fx8HDlwE=;
	h=To:Subject:From:Message-Id:Date; b=iGnv/cUntmtfXVaajRmrl85Lbsicws4P3eESXLYcIs+OfumCW41z47uN6K4Ry6VMxpVs5RKdnaY3eoRKwiJ9nXvGmkr4kous7bk7ABj7wYaD9qBK9EmmKpQonl7lWowwadnuGQpwDAPGRDCsCX7zul5tA7geBdJbqfrXKKDk0f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GP1ASkxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GP1ASkxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C5AC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728435953;
	bh=lKKegCq0ZuyMhtADmP84v9gmvLgZ1wfhU11Fx8HDlwE=;
	h=To:Subject:From:Date:From;
	b=GP1ASkxsYJbJ3su7S7aoJwqvzildvptUwOKjuEKidLlLVrQTP4NUFuGliotuBo6XP
	 IYiotNvDbx3VsUeUZpLgjzVm+ec2m71qmgY+flnaAmwLAlje3ybVb1BN8c+c9DB0rq
	 5W8doW9am1+FlxWVm/WPGzx8BAPPJ2vkleYsAFET0BTOplK3Hoj/Yyuie0XjlhTghw
	 BAxknqn0s/KhCDIsHmbmRTIAA4S15P8eh9/SSTKD7E1cchD3nogov4yez98sG6SzSJ
	 W1XYi3elFeHtJ/0WcSCLmeOd+wnBTiZB/KQT9TlVV8JQdU2RXbbf5CP/ZAXRsyMx53
	 LwDO/Hiyf7tug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAADCF042B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843595360.308.4032491673101209627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c57d7988680441ea0268f696e7d2d73af48261c3207e35340058af129fafcd
Date: Wed, 09 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728435953
