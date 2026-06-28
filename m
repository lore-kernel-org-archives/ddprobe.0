Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FCC188713
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782638314; cv=none; b=fJ2LYW04llNq+b7dNY9UqvOE/0TXiZykHiBeVA9x4pnmPV+KJ38rkR0hg8HllSLtcvLsKcxz8fzSqdoPsXhixG0mJMibcRao099w797rsSLIbeSDwYvI4etCvHoio9hNc9+W0IWXIF8axVhr9fq7Je1pZIBecy8P9MQAPWReOPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782638314; c=relaxed/simple;
	bh=7YGziNNuUhOSJTEazEOqR/jrpG8ag/PEAtCOPnkyzvQ=;
	h=To:Subject:From:Message-Id:Date; b=hxNzC7lPYYqEF3qaktsQ/V8GOdawLi6HTn3VyuZ3ZBme3oDwUINYfNIGm/Jda+TI/TWF1XrlEdho6BlOsVooeFEkf8MEyJwk7IdGYSnOtlLAWMHZKRpxX39HghsLQrGuNjeTntaBusZfnYS1WhPXPnEBSS7yb/7ff513IRDopO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTmutf8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTmutf8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14D3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782638313;
	bh=7YGziNNuUhOSJTEazEOqR/jrpG8ag/PEAtCOPnkyzvQ=;
	h=To:Subject:From:Date:From;
	b=CTmutf8kOJbKRtva0fCckcAhE+dXTltDJY3mtHo4E+40pMG164zExlbsze4rNsqEr
	 D0qH4k+ex50XTC1E1c6863b2aJt8P+JB9pNiexEBNI9LR+gMT3h4yVMCpco5eJO54c
	 uzvDO2jCp2lMtTNAXlyKIX7GC/ONuVWT+u73dUbyjo0FGl5nbrHSXSEdToWCyfJiAX
	 iOP9Xz15dz8mFFZUs2fDIU34q5p2pzvv4X1/jVtATPfTAn4kYMkovCJiyUKtnXcv6H
	 //CpbwXiIwGt/8wtTUN0A2OBfsUjlR0hRIq5cLLoVwlj7Y0pf17pe4xM8csMk/i/6r
	 O3pJ04QYNZWcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18B5C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263831368.27086.16908582320212112719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27dbfe576436e483321af0ae5bbf19b24fa593edc35d3631b90461bd083c4b95
Date: Sun, 28 Jun 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782638313
