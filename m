Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CEF10785
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752369594; cv=none; b=AfbaPVnJ3SaX4pLrhubr+cBz0nZ5JNzLnPSEMzWXAdpGFMq7KjH8p2pWrUF6U976POcG5/ddzoq2m3wcWYIw5ivrLIU+27/bIhJ12VvCJZO8uM5DQ1pVpeFEg1eJJ7UKjXnHffHV0c5ztKi9XgNnHlDpiX7YK/BpcUtfWRqtHO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752369594; c=relaxed/simple;
	bh=dA8bhqn5MWG12ffau08vQFsGM3Zohlirn1V1z2xEJ94=;
	h=To:Subject:From:Message-Id:Date; b=L9/xGGSHqanyX8vEeJFqWq7ayrr2mx3lzNVmWnh4A/likkFMViBkVX9C+FdPPYyjv2Ht+9SUpp1W4uspSjcarPP+5+kRFiGJMgTUP17x8mJn2iAt1n4Ixds54Tz8xSrCJsEum6h+Z6Lz519q0wQekq38tRUf26xUvgrtXTchEvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAmQmEBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAmQmEBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC8C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752369593;
	bh=dA8bhqn5MWG12ffau08vQFsGM3Zohlirn1V1z2xEJ94=;
	h=To:Subject:From:Date:From;
	b=iAmQmEBGL88lQH31FEFUtJlfJcXUvJAWc/6YPtTeO7tJoi0xXjLB9dgUTVoVb/nt6
	 WC85outmUzrIrKn9arKZxWTAdjWFeSO0cHf2OPR/mukW5rRKuw7nBxcQ2FOc/MDava
	 fykyOeB6pA3lcqqit82p7ncWNZMh+DEBIvZCIgHI/QCajNxtxTUD8PxPGUOqPD6Dwe
	 +HtaHHqutR5Omuz5bUl+8pHjjqhVOGLT5/dyuWb/pILnj1Kq/QAsrrsQWhEV1nf0P0
	 rbqM5+0Y7r6Aof3wUKn5d6wSPNtXEXTX7s1/BtBWj3ICTTb4ps60LlaTGeSUcNwGEL
	 UCogJPm28Z5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA4C83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236959357.25253.14075886263507015554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0f2f788bad2587e3ed816cdc2efb0db8b1b5e7b843a1f5dbf681552513cbce
Date: Sun, 13 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752369593
