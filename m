Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F32281378
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754665194; cv=none; b=gAnmIaNbq2NIza+Nl5M3JOql91IEAYgFPolskNNHVSa3cuKHv7auaelB4gh56yZZqEWHyuZkP+XuiqCjqXcegxCMjWENa4Qe0ghMaVpWsnnIvIvqqsero+NEPaYMUtTRRKECZ/h7hZNlms0deolcYpCmGeDgPHhb5bBhddgLvLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754665194; c=relaxed/simple;
	bh=yzJRSTMPAnpwGCQ33iG6LCE/PNH5KyOVRyogfgRC+9w=;
	h=To:Subject:From:Message-Id:Date; b=FbTWIXY3nZPEc07Oax5W+PON6/IMyrqEZ5ns/YRrTEbmA9uFZ0p/a870ud+IOC7w2souipKDAH4xhGN/F2nTGloIu0R1EJSroFLG/YiQBWp7/tl77SSCt9rrHfe0xKDnLUqWt3mU0HsKt4bqIBq+XzbGZjzULj6qb6pSwbpD6KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhXZw9LY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhXZw9LY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E259C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754665193;
	bh=yzJRSTMPAnpwGCQ33iG6LCE/PNH5KyOVRyogfgRC+9w=;
	h=To:Subject:From:Date:From;
	b=UhXZw9LYx2eYw8IDFNHlGKZZRyo96IRSmlB85ZuXVGUb/vD3gfiIKg3hG/jXQMrSD
	 ITzeVkxwyvcSGRH0JmMH1D5AiFpuocPm+sd3DT2yIx1vlMVito0fbgeX6hG59HJAVJ
	 zXzCxrTdmY+u/hrlw0d7Gfi72K9IvzXpsJGOmpRso3aC1sAW9YB5ZcAzFNTEfK4iXW
	 fEkl1buMs0Q1SqZigsAZKQV1Qu/BDDpLwvbtWDuzaF4OG0SQkzE1QsD07//PJ8/GgI
	 4HalIrmqN/pofb13Cb1q6zn1Jhu9ChyfO5ncV7GgU1SDmxPJxBD/bDjeRp25ciSzzy
	 SUbgM/F/eCwLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F727C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466519357.31560.12389766187736383093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18e755121e1512a3db055f5a8bff283af15ec3dd469dcece9235d03cd049c90
Date: Fri, 08 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754665193
