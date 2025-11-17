Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0D83093D7
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763399514; cv=none; b=Vpy3L6emF9g2SjcoqVxnoLfJFGQiZojVf3+RNYZXjbPYD+SmVtFsYxFW71yV39eMLTNQ3bDDaoQinkA6eZMUvc5i+Ko0zJEzMV+Qt3dSYFLOIbjxASeRw9AUwD3+/B+R9NMKSvdCbsqI41nBXYK8zgyCvvnOuekjaHU1/hY++4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763399514; c=relaxed/simple;
	bh=HqSAeguVGMy8XiJDmnw4L79WQKSzjRCeI7egtXtE49M=;
	h=To:Subject:From:Message-Id:Date; b=Qe9cnrWzHpdREnHWcl0yAkM9gQwJ0R4NVmtQbPuupp3RUgmPwrhU8N720M7mohCLey6EZV+Ix7i27DiZdQ6gZMet8aCysTK6VnWJvceklZAUwkGHw9ezeAl0NOlHUdb7dpS0bKXMMq6smYrZbAdzWvr1UgzYFiN/+hYtakX5OWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxMpNWcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxMpNWcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EC7C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763399513;
	bh=HqSAeguVGMy8XiJDmnw4L79WQKSzjRCeI7egtXtE49M=;
	h=To:Subject:From:Date:From;
	b=LxMpNWcYZlxdj9VBzZdw+h6EI4MBAsrpFt0qM2N0+z28lkCmDvunjfOdoe1PBqUjv
	 jqqGlTS5HVIm1ehfonf4dO80dsRCRNPfhcQFmBFM5kbstaRb7Hym0WGnTbVWl2ccqP
	 P0ESyKVwRY8G52nflR+NJJUjBM3aotnUaZlqIcbj5LBPSPnWcmGAoS2HZvOBfK8YPD
	 2weQw/Zo/Gki31s9O1LiBpAr03hHuH/IBw+BvyoGabJjsvQKTTzu18rZCN2Hc0ntVO
	 nqn2sjfbpjWqhraaukQYfmrJ1yEySfcUTgyNAFXXgLCI1/TjWZXlmg4RpVEg8QhpIY
	 rRvvsWBDuWjaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B87CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339951360.16756.433383991477187403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dcb062b6ec06fb4384ea922dc9e4849521d87ff5ef3e814c09357e204530501
Date: Mon, 17 Nov 2025 17:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763399513
