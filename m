Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2115A1B7E4
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719123743; cv=none; b=KoASRBWcnZb7iTudRudhwvSi8aJSJkHRiIb+U3o/bYxO8vebi3PHTZyey2n4S1Qsbodb/bYs4O1gYYVGxE5VdMwa5JpL7Syz3TC9zHTIL9Sm4P3T9MAZKdxZ7SCVkKtnn2K7aDd+LAMx+OWWaoWVuGbHf/A7STqxC8C6vQ/f1cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719123743; c=relaxed/simple;
	bh=x+DATeQm4pc+4xbtnn8jMX0Lb5a7VTBKZM4zqXu+4Zs=;
	h=To:Subject:From:Message-Id:Date; b=bxFy7aeSfZBG/eMng+g6Xakl/umW/22tV/Pkg+YhlTGmzOx6B5EeC/MGiQzVJVc3QimyghWMbYCSfHf31pymYop39sL9zrvDQHOdEq38YXgcG/NVIexl1tObYF/L3Vhj/3N15RXjokIkjmxQsq+LytoDBSdn66qX9XCHfd3uXF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdOwnGyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdOwnGyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E859EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719123742;
	bh=x+DATeQm4pc+4xbtnn8jMX0Lb5a7VTBKZM4zqXu+4Zs=;
	h=To:Subject:From:Date:From;
	b=EdOwnGyzbjHdZeJ9evP4/uPabqMqe12g0M3HVOh/runriVuQ+4TxcS21YyGiwO5ny
	 TftWjsGDsTLJpu09pyaRGMGPe6BXvZsbXLX9Kq9oGZ1A/8PgecWijkiSkHaPFTqo69
	 mjqeJgPaOoW9TTuybIGKvZfR3cjrwiqEd9Pwb3IJvoj9fBEjXeUnxp4f+t21wEVOcK
	 w+r37xLeXLYtwkakaCr/N/AfPLRPcJpLZopXKZcsTyuOgshiMyZsTMpeH/58WAN5WS
	 5qkd5WAVbHj4xKVHlXlnnCLjHVBANDwgzTTXziB25oj+AwdC6X/lWNSe06WjyphQsQ
	 cmwRIWFkwEdWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D208AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912374282.8724.749563886085273222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec269252011669221782f41e00164bd2ef761295a965302a85b12c0a3cf231c7
Date: Sun, 23 Jun 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719123742
