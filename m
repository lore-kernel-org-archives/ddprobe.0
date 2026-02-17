Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9F22E0405
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771323894; cv=none; b=UXbO8DHN7LhImpiIGFA2QhweJpCCOahzrLZYs4XlVBepCnIJsgrwnc79iQEFfbYGLiYNa0kwGtO0Ol/nd+h5pz6NdWv6taiNwrroFXuSPQ5Rg6aktqKkxU3M4cDcHgh25SEDbzGlT16hVHM/ISnhGWEUZhCctXN9C8xfSByFAzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771323894; c=relaxed/simple;
	bh=MYc0n8mnhWgjBOREDjQaM51VIc96DiF5hHa4Zn3sJuE=;
	h=To:Subject:From:Message-Id:Date; b=lrio3v1a3TkAwfdbuAzWOWijKMgY5hkQBIfvw7HN9a/QYXqKqx3qRt7m5JOlIR+lUw6m7TugJnFi9UJs5IaaDKa8zHIFwTAqSv6gLUNnxHQdKzSrnbDucq+eyN/TMGus5y8aZX3cbXNxQlRSFo+57m2yy73jK8nlMEjn9jtEuZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rj+8CDsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rj+8CDsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4303C19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771323893;
	bh=MYc0n8mnhWgjBOREDjQaM51VIc96DiF5hHa4Zn3sJuE=;
	h=To:Subject:From:Date:From;
	b=Rj+8CDsphLqF819r7OL6na4JtsOdxGO2Nz7O9aljhh+220wVEKHAMOikIyYFbqoLo
	 eoL/qctLsvA0rtiPgJOERzryXfzeryQyCmdJeX1K0YmjseQNG09k2QOQmG0hRl6uqH
	 RYhK9X2aXFFj/BqgCVSaMkZihtCoylmKWYZSDdq4jQPa+hdaSepvpGQ1i0vZgKfeS7
	 4M4YPhYrnF4Z/VrGJU00C1Fmh8+HJKAWUgRToJyptkdp+QAiFMVXTDdlOxFX2hbtf/
	 PejQyHjHS+Dsg5VwnclXjbX3+NAPIZaOZvSgTL+9gbcKYLgIkSn5IEo7APjLxdLpNX
	 zhKXd3qUYU+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931AAE68166
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132389359.26728.18099200916192115889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8774d37d1fdd9c525f6da5cd4d0e010cd363e297df2c869bd7e673b01965535e
Date: Tue, 17 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771323893
