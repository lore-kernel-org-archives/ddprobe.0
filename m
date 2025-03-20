Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453D21EE7CB
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742458195; cv=none; b=kX3Vo17WYs2d0oIlHQf/Orp2UWYThB9MxGskDbfah1hk+XBebiYWEbnokiDqJ0gqhyzsD4YUnF9Br8ihxtt7c+aN9s3JoRGrWZn+FlO/21yQ8ipkVV10Idyw6EpWeo63AvGLu/nezxnio0MyIphLl3nSYMyF0UzN5Mt4Bhdgj64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742458195; c=relaxed/simple;
	bh=Ef1ishRp67TNtVIQGYyHlZduzkOfoB1qLdar14AkKp0=;
	h=To:Subject:From:Message-Id:Date; b=nu9Id4wk+1I5afQwaFtVz0QGDJSZwJY8LXySEQ9e3oLAU0qZ8CLK4jkNDNeu+6j6fbvn2vMe6tAZ2wV+j2DoKgOx7ymdpYzmMIU7F0S4MjV+AtO+XrnGcBBRH7VTVjzx/QSyhkkc3TPE/0+P85CQ9HA2Lv6l6WaTwAHy1pstAgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfKI3p4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfKI3p4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC03AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742458193;
	bh=Ef1ishRp67TNtVIQGYyHlZduzkOfoB1qLdar14AkKp0=;
	h=To:Subject:From:Date:From;
	b=QfKI3p4w/H735hOx+YoTlJMKwxVDW0IHOkjtPaRXQ5PlNqA7ccua9ZmD5HL5wGIxJ
	 iHKWOb0OAuk7DpmgMt/IUIBQBKBh61tri8wBdevzUa/nS6Sb64hYjh+vl4zlkdC31c
	 w9rzP1/Zr7N+MFgIMWI+pXoSfhSbA/Hz/X/zThoBeBxtsRnXbTKAyuNGfqkfQxg3Ib
	 xUlozD8Y862VRuDA0zgedmU1SfukZtf2y4D6ZlW/XB+y9uifF0S7IYLV8J1yMLOgjn
	 LY452xgQNNnVgEDtzzdj4i/ihY8yrt6MTXr2P8woLN0zyTgNWTI+sENNu7q6ce6WB8
	 EpCYbEjYzoWVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3510C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174245819365.22287.8697512172900004524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ebf5d2347ccb59376318581a3d9111d870218ec29b0b1c177dd22744994b90
Date: Thu, 20 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742458193
