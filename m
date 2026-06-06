Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452AF25D530
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780781674; cv=none; b=Fy1an9wa84kcoNWfxQTTxgydJJXZahXbaGWNsVBijNyR9vIq5CP69YMM52MJmRNfWXeW9UhOd1dAb2eJcQULnvB/ZBDWNAS8pSOBoZynOcnk5IBdDy3deJWjlInWXFhR4AYKanM8KebQz1Ca8EWoUbP1/vLSOJWnvlFX1yg1E+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780781674; c=relaxed/simple;
	bh=WE3kpTHU1/dxXSTt9K16AtAd+D/OKQTv/QYo97AZE/o=;
	h=To:Subject:From:Message-Id:Date; b=qkfLf8BL8N+cK3RJA8OfGUrSV9nCvfsW7hbdq7ZK0pQ5HJSeYADa7nSCk+BjNURI3kJwcf88k6Qkru9ou2SS0vYs5kzB4kplOqs34RJMEWx23zYv0WneCy90vFGflohiAq3FSU7uIoyVMUatQBUwUG3QhLojmJbLm05Reg9G2X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jURks8Cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jURks8Cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E7DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780781673;
	bh=WE3kpTHU1/dxXSTt9K16AtAd+D/OKQTv/QYo97AZE/o=;
	h=To:Subject:From:Date:From;
	b=jURks8CmOlv0KweJR9cX63gsEG6jjldwhLaG/DKWbc40pDxTjoz1YPkHN3BIARoPN
	 e6XoGPjejR/gkgxcVOgS831lplQMmQXpVZbfOGRvtY5hzfNonLS6MGTdXhUF2BRi2d
	 kHOgPKP4ZfzFFFTT4U8dA0ubXLgpdaT+VmA7JO1dGVraaf7i7OD1CGJo/gwZmHsRxj
	 Yz7acn+398Wm6nR/4gQphFk0GWyb7odj1f4F0wEnKyv5hhzD5UKV6p5Nxqto5ve+0g
	 5GazVGvDte1Hh39s2pJ8u/L8hvlTgoDk8JKfgixzCnIRCrVsRfW5PYwCsdH3IOiiSL
	 NT9ErUKV5m7ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F97CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078167368.32637.10149679515095893408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d714ecd70bddabebdc4bda35c5895628d532f5bea6abd123f4e26747d5a820
Date: Sat, 06 Jun 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780781673
