Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F6323741
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763866914; cv=none; b=QTKA13H/HFRsFU+ZmU7wAT0z9BnA5GcIAtjdC+IaKSTsHxd29+PPoUdaEJAH7c8DIRSFl4UqISBcXN4vc5sue+4EisroX9oIYlH5iVOxbjiXsTfiM3XLlD75X331dY1uEpB+KGukzzlH6tR9UTrCAS274uLafC+YGLsYxJtGvU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763866914; c=relaxed/simple;
	bh=r/bSR3wtgpxAOkrOpd/b5qMB/QsuiN7g2A8G/GfLoKM=;
	h=To:Subject:From:Message-Id:Date; b=SLsee4Tla92ZA2kvw284KlT62mwaZpSAmilp+09QvjGIn6xMDqZG7ctUi48V0pUGe+rYkoqMEYHdhFxe8EbPOi2MZ8fshxGebMEdFdmLBljrJCVMe876/Oh1s1JMEQoI4+Zd85pF8E3C4kH+V1w/TuNooMTiz/XaGhHB3pP0U2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Igp+fSC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Igp+fSC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF6AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763866913;
	bh=r/bSR3wtgpxAOkrOpd/b5qMB/QsuiN7g2A8G/GfLoKM=;
	h=To:Subject:From:Date:From;
	b=Igp+fSC96PFthbA4/c8swS5/9ZaTxTmCVZ8driIu6zpZqr57lRvcPm+MDQG5dEuDa
	 pM4Ik1ph437U1A7imff2VJM369KlRzS4D4xd0pTzWRBbP1SxRzu5OPzYH4gXa51f1T
	 nEvpQg5NW+ziV8H3jYivYAaMuvH9iGQEic6m8H0rEh44ix2z1i8HGl6nUxeqZrtTK1
	 /tePoFz8n4K3N5gb4s9gIONuvV4Xo+BVbQCd42I3Mae+NtAET3m+YDGfL3TJUgptQi
	 gumyrUCsLAbj48rbjncJtCk8TcsVM0ya60B3hgkpmXg2+IUH/CFFhtntnGIlgk09tz
	 nrDgYxaDZklGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F48CFD314
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386691359.32758.5482126245986762722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a5e66de7371bb0c95c8e9e427c7970f2eed2c5671b5dee45e4e358730f797f
Date: Sun, 23 Nov 2025 03:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763866913
