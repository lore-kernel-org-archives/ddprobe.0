Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE8617BA3
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 17:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715360543; cv=none; b=ViqA4u3dBngQDFQVsVNL8xN1gVPU7YsGBHN1P/y71GpiXhpEQytvadv1j5ISX+lHcqFukshMoWjBnjdkfDPbHe/KJMk22qcP2P9wdyu4x6hxfvOe0qQctd/KXS9Di70wFHTYlJrWLLBKEPjHkDnRcQvqnM6fdbYPINiGTBNbiKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715360543; c=relaxed/simple;
	bh=5da6tMUesGhwVtHYf0F5kB1H8uyur0NY8aPObv5WCcM=;
	h=To:Subject:From:Message-Id:Date; b=EXTRCVq4/Vd6d5NM4k4Ik+kaiQkijihRrSBRC4lBdugwxAEGJAk3kUrzC9C+Z4wQLRaMJwPiGvlHnywacjKCb0m941mmSl0zrxR6AW0PgCLBuGV6/FqbLhDd6pKqyoy4SFecJZ+aCqiZ5yYC8V43EoncUufbXFaWnlFiuxuNpJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UN/ITfgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UN/ITfgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BDCC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715360542;
	bh=5da6tMUesGhwVtHYf0F5kB1H8uyur0NY8aPObv5WCcM=;
	h=To:Subject:From:Date:From;
	b=UN/ITfgPx2cWuWhzeR4jfZ0T2DUV2MEMqgAtI5opH9NeDNVq6VOJ3BU8/aN6IRS61
	 qMkl4kUuYZbZQ5KvvzANYkzGEEVHZc2rYcDNpVG0GJ+7Ty9aUC5vzE0jS0jcM6wV/1
	 cadtXpF+s9wy0YtzXQ5ZeinN+kFPgSTP3n11WVJ3ykkSTItLPt5TTkIRouxyj8se5I
	 hePyzdNwidlXXUX4l9MM2MqeTmz2LdFqgssr13H6eDU7FfBopOLhCQuLPwkBOqX34R
	 fsSTME8h8TpVAbHfLRy7Okeo1OnrtoF5+8S006p5ux/+4tyYJaEs98WJftGUDRiYyq
	 oHp3JYlVtc4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE18EC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536054277.28281.15498979405165835638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73682b79554066c53d8f222f8291b6aa792da92a3a0ca17d616e6626478ed9a4
Date: Fri, 10 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715360542
