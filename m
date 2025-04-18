Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5BB25E464
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744940994; cv=none; b=nLYzJbch7xNvIG79i7DEj9B4OQHvM0a9nPQX8ebSedVtVJe0ZR1wNmXpx+iiHtcjtMlJ4rvJTsVHS3Irml857vTkAlhbZ8wlRL/mN7cGBgRZkQTn9F7Ors5qYt/hSXb/ytlkwXBJDLRNghL3IkF2GLj6kyrYUQHTxAN0R/A86M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744940994; c=relaxed/simple;
	bh=rtK0Dj3kvs6yKcemzkls8zB5M51qxd9C7B+qhrpDNO8=;
	h=To:Subject:From:Message-Id:Date; b=dbtL+OJF+pir7+AgTX6putQsWjAX3SsvcCV9KyjSqqnPvIcea91Wx2Mu/tOuLnr3W0tt6HjhQtxpStVvaVCOlhC4c8Y+lebQaTBu9Zjc8KppqUZK8G57SWKDKMs/cMRrk3J96g+iDYFplguwTr6+ku3QIRzU1Y2RA1ZoltM7s58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll88errV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll88errV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF7BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744940993;
	bh=rtK0Dj3kvs6yKcemzkls8zB5M51qxd9C7B+qhrpDNO8=;
	h=To:Subject:From:Date:From;
	b=Ll88errVX5nhWyCmcewffp2ozU1E2hCDaFw7b78D2FrEmwIlzoq3OfSXrId38gQKD
	 0Va3RBzj9NwJ2/QUetDZMoJ+0BMX1OnfIAUzrOU4qOuXBvEgVRO04aTUMkVe5IJU+M
	 LZhJPuPhXB8LcKIZTY/M7tCspswr2z8Q4aW5xiyPrCBX3sC9Q5LVKa0EXM5Gj/L3VT
	 nh4wksHaXvztK002Qb7C6fD5uBa8huBCm5bEy6HTtp0q3huCDIeQFf6cAd0sO0rYzB
	 KdhkiafGHlXPFW38pZSurk16KeGcaWPYRSRgImojhKWn6WthwSsPFJ+IlUu5sgIkZQ
	 CSJPUgiAZrRbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D452C369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494099360.29292.8036079726564330698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee040949481fab6c6317b00f01c7c4c3c89bada9d2a03ebf62c7cf9199eb7858
Date: Fri, 18 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744940993
