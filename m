Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB1A191
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763515315; cv=none; b=RQNIw4CVt8yyLevebrv0UEY8UhLBRxD31DuIxy1s7gRGNHyLCfk1P6RAbFUkYqI+Sz3Sa6pRLQzYs8PV4aVQaXaOIMYHGO+VDkRdfKZoqwSJWg7eLZ7ySuAsDjJ4s2ZDUZYgHWoRukyYZkvUTtCShAy5v4rRc/RoJdktupDT37k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763515315; c=relaxed/simple;
	bh=0Hc5EyUd2yWX3FxF90YB+a5afVipat+XJi67Cli4lR4=;
	h=To:Subject:From:Message-Id:Date; b=TG2Ru2NGirvluBOePU5e6gnhQUZ3itcZzWHlT6gU9ZnU+MvawYo32S1k0HsbUCueSvCLchBnPXNR/JAhd2IX1El+5v0Qrv4eLAafLFRg6j3oyba2qjsxoLzGgUs9gGwwX0jbvrodXgNxekppvX4k1wTZQ5oHcQBx3ZioBiy4f5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdeI/FLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdeI/FLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECB69C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763515314;
	bh=0Hc5EyUd2yWX3FxF90YB+a5afVipat+XJi67Cli4lR4=;
	h=To:Subject:From:Date:From;
	b=jdeI/FLcoVd2reitXYRZvXQWyx7mAsh31BB1qxjfYZ2MVorcCD6u5ZsVHH8j4vZ3f
	 xP4mkKPe1MFYjmlAS+Jsg7yKldwp3M55U2krwlTXGx8YMavvt30dHhBcwQ5EbR08Wr
	 4g8BbDckxkkmy+tl2KMFYauD8eFtkyE8nm5KhccEpB4yr+BRnvitOFHA3QgARhykzW
	 t2CHuX/fhrUjOMnxfWZTEJ5U3NgxaPpZ/ZiHsFVAoqwwe3wXAQpkLgLPV9B0gY/O0R
	 n/W6qWVBCY12grWc64FIZmc+AQCh4U8K5UnLuYoDHuWri4nxqhSsZYP8Kst//2Zwy1
	 Ncyr/PZGueYvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960C5CF2566
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351531359.20816.8346503240780666356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d10caa099f97c82e04ae97ba04841112f8b5edbcf76e2b699360522fef17f01
Date: Wed, 19 Nov 2025 01:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763515313
