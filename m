Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9E919CC3D
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754152794; cv=none; b=DEGir8h1fhxAQKCEyAxebHFo/YQjfxpCJ3JMnxbnTqRERaCsZhzAkRpTRplM322ViFr2GUAvmPVv6mPdYOcBpTIksYYTQ0133HfSwpBhxVcS/Lph25LF4gLVNNsn6r7HSUKKgbPiGr6tP5xViDHk/rKzHb8bthqGDdEWNVyXYIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754152794; c=relaxed/simple;
	bh=6mBi5Q7/UdbcX2ywJkZyuBwwYhTpticPve95dsqXp6Y=;
	h=To:Subject:From:Message-Id:Date; b=BEzCt28o8Ws3WClDX4lHxwnDTbXF2QWGyDwCyQkHJCUV/zh3J8kSHD4WmIElggMVveYEDxR3SgsN2+EYon/V2bmgUxrzwvWAb9G3800HlyZFlMObE2lHdmc4zLdcCXK8vl0HjkP7z3vaeoORRKwvo0mGEpdd5vYMLubLhnZIkto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpS5EF1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpS5EF1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FDFC4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754152793;
	bh=6mBi5Q7/UdbcX2ywJkZyuBwwYhTpticPve95dsqXp6Y=;
	h=To:Subject:From:Date:From;
	b=ZpS5EF1I5rnDyixEZJgoApFqwMwaw6SzoS1gE9qpuvVALyNagIlE4zVge0weZ3d3D
	 T3vPdi0EVt+oHEE50DLJ3npxty3/15o4t2dUqmhqn63mB8/+H6j3QAaZMOoClRkMcs
	 032ppcrBjuYMjVX6azfMOQov0R2k0JuV7zHhBvINT8VBzfyW2inCWVlSwKCBGHx043
	 5PgZpJG09sCANFpZUFUjkdo4cPabxrEjqe4JQR8gFSUKV5gU6NCwG2xfawUeZnkmgO
	 ZjPBcF+13qTvxLK3UOrj3t2nraCgELe9fkbXCw1ZMTPApDXZ8dV0Nl7SrMF99HUhJV
	 RkHdjylsxXTyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C94C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415279358.1463.10696737857583246966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920d8b5a37a1869df00b0da051ce0d2b8ca4d2221f6c25f0291889f6885ce12b
Date: Sat, 02 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754152793
