Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC202405EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777556254; cv=none; b=k5g+KJmeNQ5sq+Y1wSbC9QSrZ62ma2YOqdPgJXDK7wEKUUgsUh/534F+q6rOcFSApfDgm6/fGHlH2eCoG0PwGeF8ht+PVxI8u6WrwJIMJPjG2POfE2mr3+q94Xjw8c/8kjix/Ceu27dPSNLIlHFaUQ9LhK/YehrPY0fF2Kg6/X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777556254; c=relaxed/simple;
	bh=OSDGbYFYOSVyMXeGKAIujpyaePo/CJKrfSRQGwm2qmE=;
	h=To:Subject:From:Message-Id:Date; b=u8hyYCqhb4Mg9JvGggObUaPLs9sVqsefgBsD7pJ30GFgs3XJA34VUXQJwk13NH/ZaQWudOCwvMYaTpmfDDCAB1z/DCNfa+p66jE0tGtB1wc4oO2WYTeHrlv0p3h3z1BmO6j1jgl0d+y8KkEPgAsxrQfuatUCpt1Bihj1FY9+rn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL6tFKjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL6tFKjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA52C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777556253;
	bh=OSDGbYFYOSVyMXeGKAIujpyaePo/CJKrfSRQGwm2qmE=;
	h=To:Subject:From:Date:From;
	b=SL6tFKjkf7mDG7fCkVYCICPMFQttdRYpR+GtTRBkEd5ibSl9aJakiL3tnTIDvA1EA
	 Z4zE0rt4LFadksmwPj3VfJyHhHoC7oLN2VjpDodBte02cnaVz1/1cBtbP1UYWXkSj/
	 vtHTR+6N8q1UMLgPs4q5GDYOjvcyzKRpJ+UPB9BYhkQ4IsFx0rDQshFKtl2Vw7Pgol
	 4qU0g9eDq9OxcE5Mp4sjlynLsKxgCuohd2ORYmmiFn6HkH/OU2p2OkHKaHrgkZtDHd
	 kdimn1ORuAsgCZfUNaMznIsAX4Op48P9Veq6Wozf9jvitVg72U4KKjUqPuaq+DH8H3
	 nAOoZaYeOICJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3E0FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755625369.27955.16690457997181919168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148d8fad9329fd20b507b7a3a9f5faa3ddd8e456afb00a549859576c6016c0dc
Date: Thu, 30 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777556253
