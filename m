Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63D0208D0
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777452453; cv=none; b=pj+Re/GnvuCAFMMBFalcmD7Bs5yJZkEem4EDccfzdgSAu0co6w8welyNsWgG8MVjj0RPRUcv1V3kpwfapg1mhxMRfMKqa3B4JyQGq0NH4khhCEBDCN4ttCCUgYdSb5h/aTn9bKlzFNjc6zCWqjvLotWdljchLhg4k753tnsCye8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777452453; c=relaxed/simple;
	bh=Grsdwer9cpUbf9JnirQnxfdubsl19HQpOkRJZMcUcg8=;
	h=To:Subject:From:Message-Id:Date; b=NY4nuFKnwSPTdOMy6k5lNcPIUBR4xyl2kuL0EPZzzwJ9b6nCAYBDIOMo6kRQRiUPJZiZG0Wfjk3NspwLU41NyhzWp8VwESS2Bbdriy8f8dmG2Y/rKqtHj3uixtvcnuNRZUaZ2D21/Zz8LZfgPGBf34XJwY9r7nRgWv9rw86CTok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nI9sp8D0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nI9sp8D0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B959BC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777452453;
	bh=Grsdwer9cpUbf9JnirQnxfdubsl19HQpOkRJZMcUcg8=;
	h=To:Subject:From:Date:From;
	b=nI9sp8D09J5Ch/MJvtkJ2AJlW9VrOOiEVwpskPScMOAKJwNO6TKocnbPkQ59fxITo
	 khXimlpAcVTTRQFjIxsgY4L0NPXDVpZwuPzRWyf9bHq0SMvqlidkqNBQYrQxA93eUg
	 3B9Btx8xsiweFH4pZpapf4STqtIJERgZO4KTs0kys2zlrVBTXmTgpvkD4Sa5Ho7QBG
	 LjJl1mBAb00uv1f6dqDvb8kFwWHG4CGlBiPozffl3RkmlZdrB+xLPPeJsopjAy+wqS
	 wAgqlJ9gbKHGv39hSUQG3jMF1rzMt7IfJJSdmbnggORYl0IGBzGG1H/qKSOrYzufLX
	 0l0QW6Wnj1Htw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DDEFF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745245368.11125.15815534828818847391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e17971a65b1c524d674ac1772b80045c04fbbbee435fba2db00b5064b8d415
Date: Wed, 29 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777452453
