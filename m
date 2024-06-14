Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529992F44
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718329103; cv=none; b=QOU9xpUxdMIEVpQwXNZ+ERPLKd3bsKiz/UdwiGh8nHM4NNNzWZzMjI11YYLWzUDoV8I/538/Agehs1slCnhoaKY+JIvMJwMkKKFL+0FFfGrO6fg9q64KGU/QpAm5VWGXz+k521SPOUquR3VHMQuv5/UFYnumJF6//64O+GyAHq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718329103; c=relaxed/simple;
	bh=OfQu2B6UVVHDyn3+uFOU1Cj4KQGl2/hr1wCH4fiCK9A=;
	h=To:Subject:From:Message-Id:Date; b=feM5PJQBE0uoTbd4ERF6ORaTth9CJYQhteVwTyhMpfsAtEscXqWzALaT7c9845FYdg7JLch+RumkhocbTzashAZ5lDArt0b8dFwT2VebnQD7QbegE/N0hAGK3LJErGSh5UfGI5xLnpw4j/jyQwjkRbpHgRiUmizTexSwDydnXzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PylH4Drs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PylH4Drs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFB9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718329102;
	bh=OfQu2B6UVVHDyn3+uFOU1Cj4KQGl2/hr1wCH4fiCK9A=;
	h=To:Subject:From:Date:From;
	b=PylH4Drs5iRP69XYsvjlaL+KUvqvx2P2MOqqYdmzm3+/yVRZDR2I0rl0LuGrviG8J
	 mHfbO0mXDF4CQr+mNtMH6t++QiZaUpJKKMENb+1UW9yihUdOxQQkTrH+X7P68GMDSv
	 mXbSSBbHcX9tRvitOux8TwijDspnkGnucb9FDQxA+T0INMyMPawgrdjnqjmFuCegbm
	 y6wfIofAKOfMznaD1nhfD108jUrN+ZDy3EGH2EQW1Nkd5jge/GWlrC4wDw8rPEW8T1
	 nZrqkWhvE8udq+OWGRqKYg2j226ZaDeeaNyTIpUi+vJ+AShiu7pr5YlbHRYfqnHNx9
	 3j4EDlDumNsjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FB0C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171832910279.28073.5323285503406444945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e005b3ebc249477e63517179f50d67a35372a6e49017ae81eeabeecc50c3fc4
Date: Fri, 14 Jun 2024 01:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718329102
