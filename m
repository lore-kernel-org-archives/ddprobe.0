Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F58D3F2113
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783494515; cv=none; b=K6r3fsS/9g1Rb8u9tdOrxCxdE2yIHIePxyznpTdgaum6Du/04qUR1THHgJolhLcqE3zv1sAOutjWAoNw7sp87bJGiPGTTyd2P2ktgTsSA/6hmJ9riqCBZqip4+0y7F5053QBxV20UJ53tC2vYU9TYNZEZiTEZ2Qg+pDuKQC+5Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783494515; c=relaxed/simple;
	bh=OQWQygNKBufiIEjaGZM5kBbReQ0BFFWQvMNC2fm70QA=;
	h=To:Subject:From:Message-Id:Date; b=XkRCZ1Qh9SYIob7AzcfXW5EaD3Tt1S9pDHAsGcMUrWISzheexQTh4Q9CnX+FCI4Vgqswg5uITSimJ0QrajDIjRonq7sAcyWgqjcoqX9d1plolyDyIXscTqZahVYvVV5UlX/AAGjwXqMfvsRqVQVmcfWKSqn/pf6j6D83IlkInJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBbhW0J0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBbhW0J0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2116C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783494513;
	bh=OQWQygNKBufiIEjaGZM5kBbReQ0BFFWQvMNC2fm70QA=;
	h=To:Subject:From:Date:From;
	b=LBbhW0J0DhvknspDdQdfufoKbm0PFWt40yvv2JgoFkKjMgevuFRGHjS0p2MqI0MZt
	 wI1F0SmFJcr0lCwvwacj4phgElSmpwub9h/Cgp8OCtZKQNkel1IB4vGGSUQcjmyxnf
	 kDLcSlO9J5gj4n0zL+KRTgxauuhUbUkjtekuHq1OoxBvyonT5pTtmad1F/tK7Y1IWg
	 Wzg0GhoOW48KrsQHAXkse4hsdKn7Hpi9soHpLXkjiNWT0im3AsP/2PIww+adINWtDE
	 xtEinCsltp+Ma4HON6YlqJhb25DkPlvT8BAKxylErcB15iGR+ZHPNreOzZzwmMc5CW
	 hmrmIBnxm7l6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF19CC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349451370.15098.5709566385651837990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf117cf9ef1d770cd972b7f6502ef0e6ee3e8307fb767c60bc49b006ecf94740
Date: Wed, 08 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783494513
