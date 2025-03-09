Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4075929A2
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741507135; cv=none; b=sc2lx6AugFKpLwMNdn/w0UV8uJbLcjwnW2HMmFo8Koeh3wRUyDAJ+lziGKGaDVJkyEQSllZ3QZd/7m2p1SnZU7R2s1K13Sgrfimb4wEJXJ2NT3ZKmqDMgIrkipjezMpqxXqjkrEW+Zxfr5NYbEm9wot9MgpI9hRkxcigToSM3HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741507135; c=relaxed/simple;
	bh=mDw2N4oAzp7Dog6y66GjeWVB4YZD6bWlzKtnBQeFGT8=;
	h=To:Subject:From:Message-Id:Date; b=OocqOpkCBR+N3sJSPWo3dcYEXv6T+2CtZV6trab23V/JkS/h0SUxJL6Jo7EnOgBmnUG2c4moYDjXSm16vXsURB+vwLoIKLLxdYpmoH8kvMiyyYuJHP89lgP+1E/u8lCgM/6hqJ4wXlZe7ltK46LpMrf/mz3inWsLKlC/wZZm+qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rseCYeff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rseCYeff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E99C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741507133;
	bh=mDw2N4oAzp7Dog6y66GjeWVB4YZD6bWlzKtnBQeFGT8=;
	h=To:Subject:From:Date:From;
	b=rseCYeffpb9iy3QFQ+Tcm5O+mu5HUaerMpiLv/l9UzhsgDgMywDgRQ4QfHA0PbmtZ
	 0Wnke2mlWkq+2si4FFeDMktBjujrf5c4/wjXbzujQm/FK3I2aa1Mf0h2iIsXxIo4wm
	 O9iAOv0MpZU7vudyOzwc0FlMIkLJ+Q+7D+4gOc/elRenBcyL+y/rxzUjjYtUjpxdt0
	 vHQwSwnKcWuAng845BpRlUEhhav88IuTUrIuYyyNbo1Uka5HQ6cWcxwZ4NdGxKXpwT
	 jqzj4NoTzxVLJkh6Whu9J7bOGe5dDuMisCVUjNWlTn2b1o4kBBCgwGC3TcLIVLO1PQ
	 0PVtmQRnoy6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943FBC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174150713359.25949.12953826029094599609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948f91839dfcfe2f8a58e6a937ee85c744cd89396b0f054b0c8fc9e3bfb35c04
Date: Sun, 09 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741507133
