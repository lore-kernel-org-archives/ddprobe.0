Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D96366569
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776064054; cv=none; b=hUUFY4TAaP/KljALhBPKnpNsumzGlT4CABaRyiMKknyoBp4Rnd7lsi9F3ZjtRUXaWfZ02cegTW6vQ2vT7t9peu7cZnyadMFZUq+zs3z3xKNRAqd8eq026LdLRnRapZUg5NHRg7cnVO2VjFj877PbuZs4DJWsOMFMrJWv2XVdTik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776064054; c=relaxed/simple;
	bh=fkBsn1iD+b1HGqmG2qOnrWIpXrd8rv+6hVRYY+Ws/CU=;
	h=To:Subject:From:Message-Id:Date; b=YGphiHP8vQbNimY1SNI0fNan30eTpXbLN5rzsWHafYlGAdY3YPs37FUT6wr0+eCuUI/8cJV3jPiUldojqHMWWHN7stY11kd5f/Tywgp8GQd6DI7EcCI0TX/n65LhoR5EYKtjtAWmTsdLjrJf1+3sNZux/AlZ5tyU4m+iUBs3e7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogFV+djl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogFV+djl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEF5C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776064053;
	bh=fkBsn1iD+b1HGqmG2qOnrWIpXrd8rv+6hVRYY+Ws/CU=;
	h=To:Subject:From:Date:From;
	b=ogFV+djlwniXE1/oOCKo54YMSQYJxyAV4+QrOQAXsyYRscF0Jwwk+cWExgVCjYTQW
	 M2pq5ROojPwQ61um+IPN0/BQJEotmLzLrz7ZF6njGV58g8IltolV9diZWn0QgyjF+X
	 jOLTG0StuOfE/HjoRZIjb8m24woE3kt1sCj99Y5tc5EtcBjsoq4tXH+E80i/vVt05m
	 fc8vFll2SNkXoN0PsDSvxPkywaHZYFzWwOV23XvNf8LzuL0qmG6iYEqkatwXNqvFjm
	 oVjdiIzWlZw5IKgFijsWHkNZ/37dquJEGRifaJMpSIUrY9T+l8EtWO8vUfL+OTJMdj
	 8Ddr+8zJ2qDIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA090EBFD07
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606405368.12371.18218358001754331077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd575d58d04915cdb741bfcd9be79c8a7e33d8815154cc8c96c473f97185d796
Date: Mon, 13 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776064053
