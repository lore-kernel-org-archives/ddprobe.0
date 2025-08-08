Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338C21E7C05
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754682594; cv=none; b=DRsNcoF/dCiMYUa+f6ZhVW04sI2d5MBuFPl48iZhh2m6iNyw/H90eyDkNFFFNQB4lcLJPquHMWVxaint2Kcbb4e4zM9VJLaIuzgU8qNSCoe5J6hpv1QGAvDI/7jrkC2LR20wUGObEs3AUH8G/oAGj0qvDuBrhDvf2LYgl3C6Juw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754682594; c=relaxed/simple;
	bh=Z1ixpOuOI+1JeLsx40KuZXrZycY3Bev5TQKd6itU37s=;
	h=To:Subject:From:Message-Id:Date; b=rxC+wlCYsBc5OzcHZfi7wwJKEkph1YILrCQLueKLgkFQD7d4XQY5tnp9yzl8qCSmonaLiYmHdyVKFcoB8pnojMJx0qKzjRbhf5LwDI6ITBVB1uo4Sgse15hkVzjnYk93HWPdV9APWEt8SSsKQgZt+mFgtUl/pHBEaMaLOZKPqHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCVrwzs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCVrwzs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C59C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754682593;
	bh=Z1ixpOuOI+1JeLsx40KuZXrZycY3Bev5TQKd6itU37s=;
	h=To:Subject:From:Date:From;
	b=dCVrwzs9KjsY15z6CpsALSPFj45sRCk/GsA6D8vGtAnq42rRBNRYGM3srHLDcYiO8
	 U5FGCZMzJvyjBmTj2SiOhWNJYy8rFjh4yZ0CY83W65ouI3OPObnZR8Tn9OJu4NNUSf
	 G5dJZHzwZNCkRJw27Fibb6sgYeH/7gceRjYWadhP4eaTH7K0fTFAZwIzL88mMiY/sh
	 zwAX8Gy7U+n+TCGhH5Lz0iQClz2HeT7dOsxY2Cl9ZdlJRqK080BngrhXS+BPKEpgug
	 bT6zj8DwcoQBhz9x1nJQf9/uccHIM9IL58HBxW7A7pX2DS/5vpKd0uOVQ27wWurkF6
	 4e+GwThS2W+WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DCC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468259357.14508.8700816449139856977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a51bd8df3e1d7144cd7881be3d3d11fc2f5e1c585a0b53ceee92ae638d54e9
Date: Fri, 08 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754682593
