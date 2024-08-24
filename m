Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3955F29A1
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724536554; cv=none; b=sKDK1hEVerYI4jy98MFNNkNdvmmYauWn3eHp/qVYuUj4XbMhmE8WPgWGNAQcBIItBzscqe3Mk97NstwIOpOCX8E+Duh8E7mRBIoNJryktr3+dEF9u6/mKJFWl3EkM6jFFqVKr+f3NkC9cn0WvwmVtBmtLtunOVXFxm1sVcH1i9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724536554; c=relaxed/simple;
	bh=Bk4Wn7ItQCZSugdpP3wBGwZjAlBMMk1w8T8Gy/XYfJQ=;
	h=To:Subject:From:Message-Id:Date; b=tj5Ac3ToMwVzGiFItaDieUQD5GG68Koz0Gepe9F0SjpOOhS4F+3X02xj0Zb/d81Xvd1ihJVfRNA3lczQgdWYpbCRFervnyqeR2J/a7hjZ56COk5tU/kJy5LHUD9xMFX3o6IrGxVoeJo9f/YkdbAvu6Dc0aLrFqCsmlPkEqr6FLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX6vY/Sm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX6vY/Sm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52B8C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724536553;
	bh=Bk4Wn7ItQCZSugdpP3wBGwZjAlBMMk1w8T8Gy/XYfJQ=;
	h=To:Subject:From:Date:From;
	b=MX6vY/SmJWvZ3DMvHnoUM5dqUb7Ir9VlexZI3AT7DeGhsmjgeMAR8Ji8zcE2Bo7Qp
	 uRP9AnmL5MupHXEJHUg7HHAqmlrdAsaUHazO+KwHfutv4OhE2iiShJQy3kyqMXqEv7
	 zatW/G2hRThU4JmT8QUOSePR4QNE7l9HaDuR+A5Pz6NLkdnPi605eqyWLAKDvK7hJR
	 hQji40C900nGZKvexgPEBXnT1H34jPLOorVSJcfklq0b1F1MucHBkUepOj7NH6s0WY
	 v+BjddlHN2l08hrV7iN/P9VWR3sNPDyvUnG9M3GHs1zDAObBQ5JBXme6ULoifDxB4x
	 lmLa4aX7SEMkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB21C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453655361.7327.13587439551390417085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511086cbb00eb9ed5d07bfe4a10f837402252df2f9434f9e01ba5b2171a1eda9
Date: Sat, 24 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724536553
