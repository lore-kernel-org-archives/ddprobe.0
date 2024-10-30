Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB131E25EA
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730283954; cv=none; b=sqGfGeZ70/DhQZnRa7xryRnQrASC/nQdl/WYU/zrntJ1o6N0XMADfHnGCfgAw11IeLxHwAZBND/DJVrEFfAdYfY3JJ3eymyykBrA9i8nDrxtSZXKziCG3quYhuVwJxec/WMU2c5rMxbQqcKcT1U805zual6dc4mmZGQu7+huXuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730283954; c=relaxed/simple;
	bh=1AcH/hR1ixsoHtIKZwDsT6ns+VhCLMPnoonvTSHina8=;
	h=To:Subject:From:Message-Id:Date; b=iM0xs0iMZuPKxPXk0dGQRmBMP9ZPoP1mHU55//JzNJGeJ+FoFEiWqZRLACZt3X5Bd4wKNHHL2J4bS8qXTU3sNSyciV+BuibTErZzMC0MuBkZx4GnxQifw+3iXMsiwDue9jEIIVlGppJunTEfIFZhm12EVghkDm0VvbGZ5Na7bUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmrZHsq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmrZHsq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EE3C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730283953;
	bh=1AcH/hR1ixsoHtIKZwDsT6ns+VhCLMPnoonvTSHina8=;
	h=To:Subject:From:Date:From;
	b=bmrZHsq+smxeCCi+1zh2PZggc5yRMX/TaW8ud1KwZGf2DqXV5sEKmPZElfxjDL7xZ
	 sC03mM7ETGldue/Q4Fo4gir1rdLvXRnnlx30+n1ma4InbECKitDGan1YiWS8GR1uci
	 7ZbyXoBwd1cCQ+S4H3lneJBa4eNrFc7A1STHfigJXTDMB+YBU0J3lSd6z2z3H1z5LF
	 ZLRsgkWMZ479vww2B8N5KtcGzgjAAHW/UkEQpPE9MDfw+XIzdbLeqJ8UoIAbGpNPfm
	 Blts+O1AuF5BHDDEKZJGm6btfhSsiZR6HWhf5oFjh0P1XOv14wOvqnBn2enJPYXjHO
	 Cz6g5Y62LiEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF57D5CC8A
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173028395364.16642.11196164436820897697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493597544558339b60d0ede25201b6683a0c372b94a983ec6bf7d1669d3fc869
Date: Wed, 30 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730283953
