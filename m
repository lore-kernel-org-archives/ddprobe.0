Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACFE3D891B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781588794; cv=none; b=BhPJaPKJos91cMVNH4fl29itKbtTfrxZiRB88+tPEpCPu0q/MjRPKI08t1mayS5G7mFhABuYQomeJXg3KrYWv/jrskR+Q1Yrxowd2fO3Z05fA9c4HNBwLbaDhGrtaZMEAQimJ+T8O5bVKyCntoVI23mBMMzvQNIbeKPMRjCQ+PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781588794; c=relaxed/simple;
	bh=H8Rdtexck1ETwUvFDmIb8om68+bykr5Q1TWEWz8rdN0=;
	h=To:Subject:From:Message-Id:Date; b=RPLg7yOYl9ddiOaDi6URgRoR2g+IguLDgBxEjlE/Zzh4Uv1rQ/JfKkHBjOZ57ZBWLbQH+l6r6+id+2HOfdnrih3+bJmXdI6Fgf0MVa1c0LPB1jYK2ROsIeQMHQPKunGvGHOGFP3UzaBbdiOtW0W7CHRbM8wyCt86eearTeJ33uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq5jdeyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq5jdeyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFA1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781588793;
	bh=H8Rdtexck1ETwUvFDmIb8om68+bykr5Q1TWEWz8rdN0=;
	h=To:Subject:From:Date:From;
	b=Tq5jdeyrckY5ZZH5r8HelJBVw0EyRxgA+VOuayjI9g+xmDx09qWzQzxPjCZYHwQpx
	 cKTGPRpalpo4CQR0fOsqTS2177fJK8/9+Pmd/d4pEHEgA5Yo7BePwSjtgH6cRtEKIa
	 yUbEYb0nydvDsRrI/fx5IGlEeqPuPPneFu7qxvo3H6LmuUNI9INLo///mpx/3nU8uO
	 4IYHWmlKQd21zn2hBVJueDf8iU17v1+f+BMU6K33ROC8Un03uW7fJw8biFB83H83jM
	 8Rf/H3gJNO7wonGaCVJoXaMKLZttW7EqQ4f+uqoex4v1q25DXuixvUjBCoSHrQ5783
	 yJiAhCidvS6zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC864CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158879369.29523.342746918374226961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f964710476c5a46ed87b311fd530728c25f56f33c8e3ac4d31d114befa1c17
Date: Tue, 16 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781588793
