Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48958361DB0
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775294134; cv=none; b=Xs6ayQNxdYsakAsR98CcdUMhfRlzTEDyulwsVSQ1WgR+7cWF3Rc7DF/uYBuPQIOrEM/G2GuEJ5OwUD8Yc7J5skxWn4lw2v1SeG2JJZCrnDIellx/CUkSpw2Q7kETmasv/GnTVHyO/tak/dBtlo8iXidY6P3Y3DitAa9QlgXNNQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775294134; c=relaxed/simple;
	bh=PMJEfpvxd44w2Yh1PdLA66h51c3ls458SlHlkOZ6/Zk=;
	h=To:Subject:From:Message-Id:Date; b=FTp22ZL+eYibQgwU5dG51A2Ky9wh8DcClm+JCbwJQz1Z0U6ih1We7XsflC7IcQ05dX4vOLymG6G1wnnpwOxZAp88h0TGPcEPm88AVzaFQ7qujcqua3ms05aZ/XvcW1Q/g/h4o/g9zA90/bIwIvRfYWpFe/0P5Hlhlhac8YF5uUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jegi6cm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jegi6cm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43CEC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775294133;
	bh=PMJEfpvxd44w2Yh1PdLA66h51c3ls458SlHlkOZ6/Zk=;
	h=To:Subject:From:Date:From;
	b=jegi6cm3xcL5XOP4hesbxl/swWYZiX4WsaZNCG/4Z08B5RYPPJCsBoshdlcJN6vrC
	 pP3hatGGTlFzgWSVTSR8I+SrumZO7w6CtqTG6kYQYnaAD/KhDIIZ86u3x3WMQ5ad6j
	 XAVe0bgWIueYGpN7iz5C5VT6OsVr3dboUrRrggvQoEgt0d3j5UAiOs2gjYRHIUSlHt
	 DCfniieRBAvHE8T4V4dFh/hjdEWwW4To1teBJo6ZO7GzcV8ZzyKuw9x+ewmPFCT3fX
	 8EJ8+L9CUSPAmyT1GSzGeY7aV6DIfQMeE/GR0fGN++YKjAYkv9zW1J0Z1iC3naI6FY
	 o2eb9Tq31/+2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B201EE88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529413369.2680.304608793792662215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a534df5eace6bbd6b409e44f8826a1396d64ebcf560f531c78ae1f18877b16c2
Date: Sat, 04 Apr 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775294133
