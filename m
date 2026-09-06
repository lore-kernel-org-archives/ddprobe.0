Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E00F379C37
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788735634; cv=none; b=CuW6sFA7spNJ1TFrOzzgN6v/CF5Q2BKonrWppNAAT9zvslsBmhARvlXxo4j+fsrTBOI0+9Pr6L6wgEm6ebRfsqwrOoRjQC0HMBAAAKw61GZkrvA9YmwuAlgjOPdvyKkRaNNLb6o/3JtpxuUGgysGN4nq2NlIXIKhDSaTRc2uxUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788735634; c=relaxed/simple;
	bh=UZQsyYMzJjouc67T/SpNLFKs7/ynPvzbHzsVm6S1tkE=;
	h=To:Subject:From:Message-Id:Date; b=ae5ilteKg/FtruNElXQg0xdfVvKFKxzb23MNyAvu7LH4fCBI2nioVzrhibMstRPbaiMYD9FPoyivmFAltvzqrDkkyvVQkuhNpLQVaDXreOJ0Ow5uuNsPNLA4DT5bt/b7lAlcpAAzLWlai63l6r1OCJ6YX31nZhpshF/H8jlz0nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdbiI7YI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdbiI7YI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E80E2C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788735633;
	bh=UZQsyYMzJjouc67T/SpNLFKs7/ynPvzbHzsVm6S1tkE=;
	h=To:Subject:From:Date:From;
	b=RdbiI7YIw5bTLli7v6QnuvL4RbWICd9+14xQeydzFcb0n75skMA1w+cjniqlYnQoD
	 RpST5j7xyJYITBpn7//BQmtVf0oN6QSA4y9rqP6Q3cSgD2IoSNJhvmeOrzibeQVTpX
	 E4I7zBb2bICKcspMBcMmwdOagQGIaOwPIKd9SGkh7914YCZSaB4U1lBeH1Wzyd3WrN
	 jG5ucqCBagDEDXh6mUaDTYXRBFU7MvcfXQuQ75QbCUJYyWz8stDIc7Y5TS0LA9/vso
	 vK3qeO5O91VuOVmmzLwzY3AAzJye2lWLY4KCy67YlNgoLZpTJ5DRbCcPKOU1UIePUe
	 2QbZNRQBNEYeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCABAC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873563373.19125.7493808050967083996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2488b5b262a3470bad0327758ade36baa1033ec44514f43b042f2312a5002f78
Date: Sun, 06 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788735633
