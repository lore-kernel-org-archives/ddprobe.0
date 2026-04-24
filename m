Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B3F30B53C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777063053; cv=none; b=GdcAGCxlKlzUqlA98NPs1pFYkhr3LKrQd9LBdDgI0eyhdbPt7KZl28/mpbSqeHql/FKLTWkDJV9BqK20I7nBrQo9UWZv8D9CojOKvR4ZJ3ddlceF2ZQNq2H6TapWrxKH2ZxOpWozXu8pV4ui4NIbthRy/Rjn9W9tlAc+rdwu8a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777063053; c=relaxed/simple;
	bh=+aLdx8wiJCV+LXr0/BK82uqIJKwCQ7LZ7lmwxeoLAJU=;
	h=To:Subject:From:Message-Id:Date; b=DBIo6UpRaScyL1FxXCU2evfjGIH9eb9f+VV/7N3Xvp19yvo3eJY70BMpkcV/prV7cdoJgi92DKiYAMB2Ywa8T8R0ElnlgCHpxYwlUdNrz2md1SYFC/d816i+31Xu/2cQ0lxnYib5qzJcmoDvP34ZM5ZGx0N+taYh/GIkPTwGTIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSRtsSlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSRtsSlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E26C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777063053;
	bh=+aLdx8wiJCV+LXr0/BK82uqIJKwCQ7LZ7lmwxeoLAJU=;
	h=To:Subject:From:Date:From;
	b=uSRtsSlDGR6RwiLPbtgh5bM8XY5sGvB87TFeacNQ34yo0UGZvyNlOVaq67bmUwgL+
	 nHsL6k8RO7oBvGkWqyQr6+v/XX0DIrd9kewJViX2SMOih0bZOxBYLJcIw57F8mvNgw
	 cw+Sv7aoRm6NgLS5Fy/hWHUS20XzFgOAIEFI+6OpY8jxof33R2uGt51pnR6FS6WuVo
	 PvARy1Zc1Ilo9Uux6+QaVeZUedNXfe+aXtKE/2R2Npk3ezEWAoy6hQLPtexYpITxNX
	 WkiF1Gtdrkog2m0HjgBGxi57Ih5faClh5kZRhX8CoFZi7IDwicF3eJDs1gsXcnjsXW
	 poOwBD8BavzQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D3FED3FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706305368.3653.9427305549212109629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4607ceddfbc53140714abcb716343bda6a36b012fe25a17bee4f380122f47d
Date: Fri, 24 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777063053
