Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF72156237
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768586034; cv=none; b=NQFDiZTaO/o8cXDm3vcKgyrG9psgul9QIlHDAjSENqjAdgjKpFdSbkcnAas/fmlh2v0wMWxe9TZcbCHpi4Gf3evLp4zuWpNRVWAhLqIUdp1MxJelVQlH45PEfPm1CYQ3XKpg3kpTHlTiVYUcW+oD+hsIh6TPfSMRQHQfJDz85bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768586034; c=relaxed/simple;
	bh=FbCnFkCPMdc5jVRXcrm2J9QGe8beDcWoBT8MQ2ntquQ=;
	h=To:Subject:From:Message-Id:Date; b=MhWB677WHJ9nOARr6fgYag592fONWJdWGZM5tdE3aJyi3z6LVOQcy5YRQ7x2vhN5e6XRzyXJLTrTca/TCuhSOQHtKWeZgD64BbLq5GibdOnME0ZYQVQIwCfu4GlVE150GGhK5xeBa+gh8Jl2KpE9/JbPOdqolqOzvVh7yCwhfEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+l1vp8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+l1vp8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2224C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768586033;
	bh=FbCnFkCPMdc5jVRXcrm2J9QGe8beDcWoBT8MQ2ntquQ=;
	h=To:Subject:From:Date:From;
	b=P+l1vp8bPFAbL7fo9+cxEaD1tiH8xZd090BKa/IvkylKRWGVy7eQtSz51hefVdnRZ
	 Q5bG6SPpszv1zvdix0j6Nzfima7CWBwzUgKIUB4TwamE+Nk3CyQpldv6cHABsEDzUc
	 CwMCkE0bsKJK0L71eQfUN3jj4f9XUv9WHpfffhhz6CgbHfgurk21Q+9+25eDR/U3iP
	 ZrvaMCJ1GH1HIzIlsP2aL799LFU2J+mMngR/MjjZqyUGI3pi1g6Qv/D3nEsyF2xZCu
	 bVzR0IoQpttIrsDERoOSJehJxOJu4MYKvtKiF7S8XrBSGAKvT2FHSHieGRlTeyjZ1a
	 XaTTnzs2Sw2Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B18C982DE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858603358.19929.12284874933512658493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b1aafda29ca101509ddc13e92e5ec2d85ea9a5cfa125323fe83da045a9e118
Date: Fri, 16 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768586033
