Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249572F6581
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759326594; cv=none; b=hY3jMNTYygE04xpdtTWs0TydXdEw0CMwDgIOze1/3ScFfbVqGcxdunk98b23HThCc3ktoHyKU5wTmaQiw+rF1G7M0StLp62wWUsYdCnbUqhJTuDJ979hdYG0uHdlu9pglpbXcotqJx3U+dzTRNbTaueWaN1ZgzCbms/w3owl8CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759326594; c=relaxed/simple;
	bh=HlG1UAKcxRxsOl6JskGYtiXOx1iOqROYSPmobjuZ1RA=;
	h=To:Subject:From:Message-Id:Date; b=IkjXBKeBx7RdM5hr2XUFUFYCdsOUh+sTsRsdJ6ZrM6kYoFHgIYYX8ogLKg5aKrFODkmX6e6k7GY6HwzgjfbPzbJPw1tBbAtTwU9SK7kAfR4GKqINgcszKoc10qheNx0eiYcWPJGyaxe2OdkBiRwHBOrrdO18WSd6FczeWy3v46E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuLVrlVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuLVrlVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C50C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759326593;
	bh=HlG1UAKcxRxsOl6JskGYtiXOx1iOqROYSPmobjuZ1RA=;
	h=To:Subject:From:Date:From;
	b=AuLVrlVSv05ZRe4XzDqAtwpxt5QNR/Wdg0nqqsnDbZVZWuKM/GZpkF0j8KDja4395
	 hA6O6GkcstH0vEgvofpIGvooQhS+UzjNkcTA04x0QWTb7j3oT1epxnl29zV1ZMMUVj
	 iWCd0RtUAIBWxhLNBnPP1W3+9AIkFSyAV+tsuDelyYayUiKlk+krlpnPsMBivKEaSM
	 2saAm9rT2miWYOJHlazdnXskpfE8E7wUpT5lD8zDzs+MPIUw7T2b3P0fpuabPJVI6W
	 31zFPfiAQ1p7VKH/P4+GV4z51szn13jvPErLYofZFkaB1iZteShM0zS0KWPzOv6HZV
	 g6edR0SjoOEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E2CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932659358.18393.1420344785312349646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad51dbb56fcee9378e6d0e7fe53d619346f4719998997297e09ba531ce3d928
Date: Wed, 01 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759326593
