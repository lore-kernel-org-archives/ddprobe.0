Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DB0279DC9
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780179874; cv=none; b=ebzPufU5CXXj2xf9brLzD+MaSYdA+nRnx+adHYchdLQvjhuOjwvKljM9fkyiOOW5g2ajF2kVqFbQVL/LExBCbtv12/OVGtz5m+kICHHf+vdnmRH9sBlUeNrBFs6yBnPplN0QvUeW981IFipKlCODZetFtzSxkgSxRM/BVDpEqNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780179874; c=relaxed/simple;
	bh=k74PYphF7aQsi10yK0p6feZ4PW63CIWY+pqHwsDlt8s=;
	h=To:Subject:From:Message-Id:Date; b=hk3jdEZe62YYx4dI+jOa+WAMwc229L+KC+BygFjQmId7txTYP7blMqBvRjYVW6iQFZWtUkQhGljLtHA1e7nIlEYYLj1fYEpx3A4Jyby6IrskMAhcdGFslOuS62yvQ54GA7NuBvl3X12tE2k7OESqViRHT9YtReOUJ9OwHwMr/vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/6FrX9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/6FrX9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E87E9C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780179873;
	bh=k74PYphF7aQsi10yK0p6feZ4PW63CIWY+pqHwsDlt8s=;
	h=To:Subject:From:Date:From;
	b=W/6FrX9F9iUVsYxMICVOUcrr4HsjH4t5tpitL/HxutZ0z3M/leBdGb6l54Tt3wi9d
	 F0hoe/64lorLsUnzlExLnjS3nyBvoIOpDXVjzloqLlm+qXQJgwuyA0Sgaf3sI51zvt
	 pdm40T6zekoJPhoUxTdLqgBrqayQtycJuFjjP+Lfos53yq2Yb8bGrJJ8G18uKiqnXF
	 9MiXj08llwaP1DL5Oxzlk9nMHB0ZUShsfjOuRp1LWUqM5L79MHOuouvAfh7WFlIn4C
	 ujlxZr4tcWkAPg2wOaB1Pn2o3BJMtHgMcr52EuPRRalPsLv/0oqvtDvJaw1YWilMpo
	 FzS6yy6Qb354Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5F3CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017987369.14148.9273465245032817044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8a787af61700ce1d4e06bccf6d1620d1932e7d8f9c051e5ecee8f5cd8fb504
Date: Sat, 30 May 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780179873
