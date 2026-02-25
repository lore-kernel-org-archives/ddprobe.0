Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F3520DD52
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772062493; cv=none; b=PKkWdRjo6SBOePLWoCPdu69ncLduo3X0JsMhxZrom2Ub2GmXQa6Af3JlAMPPcUWnsLABRSpvu2HJUzxgLTcQwpCE0QV3fqrz03VTXyEMFH6qzIxpFu2lFclHIfMqiffzxeC/KMf4BVBo8Xxke3i2Z381NwncPD3Fgq+htD/aM84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772062493; c=relaxed/simple;
	bh=QA6wAO9oo3bDGnoZP+r8lkEGIIhcMAJ0vc7n0gdxXmc=;
	h=To:Subject:From:Message-Id:Date; b=sU2DyP0MqxwYwPKOj+2IQhmezvgtgy6P1mHcpR9Qv5NUiYWbK99x9UFyL7KsH35pU03xSRtAk7OQZ8FJEAdhnD0V/NJDgQ6BcIeSJNXohnq3udP9brcH4eEGxjzioEeXOz7TUj2o62gpmoinmK4gaYv38MiaY3BN5oZg0GDnEJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrNwsGxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrNwsGxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A988DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772062493;
	bh=QA6wAO9oo3bDGnoZP+r8lkEGIIhcMAJ0vc7n0gdxXmc=;
	h=To:Subject:From:Date:From;
	b=qrNwsGxoc+4PtXnIkOyhPwCp6XDrCc/6jT5rl+CXj99DVDJ5jUZLn2V0rG7puT62W
	 yZBGKBv7gkkZFQYwqXVpjOVSblbkP3IGY1W+pQ6z7CLksYPiSj17omrJ/X9m/Vzsau
	 KDUGLzj+Y8qVqFru3f7rkO4nWr9ny2e6NDA1sMCaRz/wCbXx+R6fwGJ4NirbCWFH6t
	 1DlPKAPM9copz7boLDPtwpodPPUyXjuMAB4Ale+xIlAxPwPYtc5BhlM/MRnaYrOo5G
	 CVoLfS3k7riLe7hxe5zjv0/aU/sh5rRSYz7qXd0NqY2+42kZxcN7rvGaC3lgtKmedP
	 YbWxIFX9s/SWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E65FD45F1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206249360.17225.1449561901845187563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1894b2f7732708d89d83126131c99fc76b80458e4ec3172c3aa253c5b2dd5e
Date: Wed, 25 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772062493
