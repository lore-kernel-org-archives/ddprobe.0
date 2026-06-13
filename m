Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BC713B58A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781355994; cv=none; b=lNC8z3lMJF0BHt4lTEM/CiyrwWaWVsVgtS43OYhGt6xl7AzfKoo1HlOWpamEB98GFwBXnLVECw+ZiUXZ87cRa3j+/PNUhFN/Em04SoIrmqG5bsXAPz9qApo3t/jxuRUvb5LfctO/w8pBKkteFl2D1v7J2DmMuvqMmaM6DD/NGFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781355994; c=relaxed/simple;
	bh=hkKhVrkFr/Rs41WpMYinvkgstgMjMpsnF8djx0VMCtI=;
	h=To:Subject:From:Message-Id:Date; b=d78wqx2nINzCzUS9h4m3SUYOMKU8UDAIY12jkQSIOhyAzi/JBs1RaadcCN0SjUH2KtNu97CENCQSxfZh7wfV/eHeR2emCZ2lgaD4ZaR08shfrtYpdAHU4K41+8CKT0CjRGZ+1T5mayHU21r/f/hVZbxHWWCc1HOdE6rqcx2tdl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htzF++hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htzF++hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5635C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781355993;
	bh=hkKhVrkFr/Rs41WpMYinvkgstgMjMpsnF8djx0VMCtI=;
	h=To:Subject:From:Date:From;
	b=htzF++hpesH4/kCaZg/c0/O67rl1sWiDNI8JyY7XobPhHjixbu960eOLtgsuxnAWs
	 D9IhGdEOTYOnNygKTRAFt133vbZormd8eNufUanSWaCqLRGwrjfM5lniayRKPF2YE3
	 xuzy1+aNvWeRbtPrP0kLD+ddT8F0qj0vTc8SjB2eLHLEPML5vDxJwLccwi7t7BQXoC
	 kls4dZVgEX9lCJDHfqL7ghyI0r6Cv3/dGm/mAr/qZ99CDlVdbgK3LGJ+WPLVIA+46x
	 GD/B0smvsQVpm5ivYJX2ukG3LEP5HJai4TBlxG4AEZQgFJQjC2oo/5/GsoSXhCnDCB
	 q+AWapDmO8nnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5C1CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135599369.11547.16986217029468536271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b6c6f8dcc620929585b61a5a8b750c7f448141e60a772fa355c9977a1c5873
Date: Sat, 13 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781355993
