Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6E94C98
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763830914; cv=none; b=e/+a4/6nt93keRB3jF5e9j0tfvMu6M3jwLR+J8bBFJrXwE9fIbuaDGLcJopypCnTZSfFi6KewjSrXVYT/AyG9qPeuwUMBHQFcX2nxGhnCTpOk7wi4XqYkoFPbwOAwKfx21KxhSV24Jy0devIz9PRKxEuSBWcwIVe5IA92KoEOr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763830914; c=relaxed/simple;
	bh=xgkrFxVBW12YOXJB+BXvZ1E7SIjRH2U1FmFp4hHsWlU=;
	h=To:Subject:From:Message-Id:Date; b=YNJrgu0XgOurclxqvd8LVY/ln5EV6E84D153tm5qx+kZyKmVjOSaARLsC9Bt7SptLXnM9JXxBBoi7u0ONN3LtJltBSqsBmg+GSxN4e+tShfsIwyyNZvJ7hPze1RYJlUoumHjdY+T7iZ+QuEr1OGyTk4RVvG89YXko+Nv8K4MJ1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC3tyDFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC3tyDFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6F2C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763830913;
	bh=xgkrFxVBW12YOXJB+BXvZ1E7SIjRH2U1FmFp4hHsWlU=;
	h=To:Subject:From:Date:From;
	b=rC3tyDFu9h2tuff+YXc7y87Y6S19rnJUse6vXeMwhtccjoRP8QZ9rkT0dzjHQG/hZ
	 ERBo/vW0jhY1n/x0V144zsQrs7QCxCRSgfCo/seoY6IzV2VrH6j05SGuotX1sFUlpM
	 QoEtJlWu2l2k+Mu6p3TJrWwcn+aIaADOmmgGscky7AOHbkHT5sPGRty0yaMhXUvMmw
	 Oog1TxZfrq6rddlq4Lobrjh7SCS1dBv5QnDaNIC+ktYBrSGhMUncXqTKcnogpsyoWz
	 kuitSEsBOOo3u/yyArEd6yDNt3ACXyem701VI+ziasFhpHQfJtEI7gkLyEQEfavurc
	 c9/DrQMC2/9mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94236CFC522
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383091358.8078.13533352436187700958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07563c07e0eb6d9308ee0e28424726b0459ba21c2f16e5d88fe41350e24affa
Date: Sat, 22 Nov 2025 17:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763830913
