Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1DC7346F
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741472934; cv=none; b=Ir9VCOYCp80R1RaHBHEOZ3SqM1W6X0ntMtCTCuyHAL2gdvdCRWO8uu935hCwWhB0tQQ4LCKKlHOwmKD3KbouiVf5D8lwsi6D0PF7d7RyjFLhNl1+/8h+XSyqZJgZ4VMcPgyZo6poK/bRQXK8aGIWKG2CRIgFZXkO2wv+uKVHZSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741472934; c=relaxed/simple;
	bh=y0H7zQrJCYXS9MKzUcwpYd68wrzHTuxzR9TnR71Ynos=;
	h=To:Subject:From:Message-Id:Date; b=aGFJmMGJJtJju7nX3A2hun38KjTYudrlLQJA+WXsnInPq1fKYLlPjU6DdjSLY/zpg5xtjZxY1FPC6m/0ZiSRqkcy96UJu0lPn1Nf5a3NsS0Upp7EzyBAymu/GDmHGzu/bmQFCNY5NxeTbRhaHrpdMBSU27Ycuns1zL+ALXPlraY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyTLAgOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyTLAgOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA583C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741472933;
	bh=y0H7zQrJCYXS9MKzUcwpYd68wrzHTuxzR9TnR71Ynos=;
	h=To:Subject:From:Date:From;
	b=pyTLAgOwLcb4DsFZzxzqUTf46DVkhZvM7IAHV/4ig6Na6xKw4YCoqeCIXiId4WcOa
	 fsR9Gfa+p3IGh1RHCVtr4UfcsklXVluj+HG8ReLyoWoLTXHbI+8LRvw/QQBOX9YNc3
	 kh3WvmoJsEp8M8/08VhvpSM7yFbbXKOObBf87trWFIVnmlmaLssa0asz9F543OqKFH
	 H0YpZD2EcCuaSBJ7rFGQYWyOLYV3cNltWCv4E1yI2VxUMU/7rueRKHJ4c6HTRNV7GR
	 dH2Q8FhWmnEj7m1QWpwD1LNxyQxxekknHYjtbK9pre2i1+nXvgpiXE8m2xfJdDIQ0b
	 pxHSfAfX2AZMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EEBC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147293359.17548.10577684043229287314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edb9e9de17d4ee018c22d12aa96c89f5ce8b69360f6538a01d5c51d6e09d561
Date: Sat, 08 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741472933
