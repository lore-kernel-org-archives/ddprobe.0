Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3161714B941
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732392954; cv=none; b=mb+CS4XjFj2SDCjiyJeEko8f0q8Ai5TZS0e7D8KLcKpSqTw4I1b8CHwt+9U43s+SblTTBMMdlwc81sRFwZOYPEHwJUq7+5/efjEI2QF10LLy4XCoYZgqfVCXxq7k5/f/blODpBbJljUWVK5l/Y4LpZg/HPfPeMlImKxLTWC5fnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732392954; c=relaxed/simple;
	bh=PNDFQ5svc7JflI8a7pMCqZ9/B62hBKR0Qx0zlBD4pi0=;
	h=To:Subject:From:Message-Id:Date; b=rsi4wqjxutqDN5zwvbTPHeKRIDypMdRFz4i+4BiColOURHNBrL7FD5t9xxBAkMomFzLj38SfkErmcAd+YmOVSUkbUAYySgACTHApSCeV9w6vmWSFfOQPW7G0sbGcNvqKtn7Z2twlbvzGHUtn+/qFHAtyLsjOIBAPsAFRQFR92Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h64AyUZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h64AyUZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DA9C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732392953;
	bh=PNDFQ5svc7JflI8a7pMCqZ9/B62hBKR0Qx0zlBD4pi0=;
	h=To:Subject:From:Date:From;
	b=h64AyUZz5A1FoW/py7PjJgOjOcMysMN6nOiWXnqMvit224U8mMY8KTAytq0w5tPEL
	 nb31le04M9QgdQMc/1VZyD6adjxHU1YccyT0KUpSj51+neuLDuXzQevEwULEeB+qlL
	 cZcZXrRP1I0ZX8REkLn085kz7zkJBCYzzqLNEuF1WzQqnWOHPfIDXwB9M/GhJ+Ls2l
	 gJlAepi67wb4tvLKP2TEwGtKpIf9n/FKgtNMwuXhi38xKcyNGNnQtqeGtdSAsGH8Py
	 VTGoBTXwqS5DqCTaPLwFCHRUXcSDVat/+9PF3JJ7Y/nAhqTfFH/xKwD2ksv1A+wioO
	 Ruaozwku/MKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF97E66880
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239295363.28410.5981154770742577781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb71cd77195b3c464d219338655d7d12a4f0659c15e857f8354b2969bb82c576
Date: Sat, 23 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732392953
