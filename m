Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476CF3F8257
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785368434; cv=none; b=UhvpDXf5tJAR65adglpV+d7a+YgMsPkWEep7km5qFsJSEJNUavJP4Jiya6ogtSDSSVx1NLGfz7mcFxdE6Xk6txcSvdwTBy/KEQS8yyTA9iIY2CFxN4Mf28BzXSGIi+S2XAHieGap93/K41zjxAt32WasOSHqwR2zEGVgoMd+Muw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785368434; c=relaxed/simple;
	bh=J0veKeMenuMICqwkhgZAPDVj13ixNr1qaMNSLDIy29k=;
	h=To:Subject:From:Message-Id:Date; b=k3p97/LOvi2kEYN1LrTpB5xPP41QIeNF7bT9pjldJcgIs/5jeQogmnNoJc3exec/rJng2+VMlgHyOjQxy8aNeAQX0raohBea07Rp5Rscr9KrZ9SkP+eUev1OHED6f0KSvgVcVnawp76df56S2BEq4Z4+jzF6eHwv3AJnhProGtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgz4G4TT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgz4G4TT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BA2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785368433;
	bh=J0veKeMenuMICqwkhgZAPDVj13ixNr1qaMNSLDIy29k=;
	h=To:Subject:From:Date:From;
	b=sgz4G4TTDxcp3qjtjGSfxosuYjYOJutuITm19nfza/pVR9LzWQ3AdCd0Zi6SFTJk+
	 809PL+nJZ6bvsmUx4VBULfdSdEKmt3+fmD6yYVdqr/5rVrteK44U6LA4wmX4iTn4OP
	 XpDnF3lFsh3dMIcBTmCaJlAg9Wh/pqs5TwnNl73b+KBMXWXyiDHX0ueIsNumrOYhcM
	 zUo6ZJIuvOm3niPoTRIVcs+09b4dvpf7UTcj9l9A8NfUnsG7O3zmx0k5IeHVWWL/1I
	 bbp2ahgver0n90+XhyC/hLIj2uEpICvijG/hSSZupR4xc+hzCCxkxz6ue9OjpsoWeq
	 UAzPk7ZPlvP7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBDAC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536843369.2771.13804803044044026859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654ebc1899bba75fafc8ef2ed1a6eb6cabdbac5cc30b79b32f064c295902134a
Date: Wed, 29 Jul 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785368433
