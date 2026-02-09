Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EC730F543
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770680634; cv=none; b=aGmdtMlT8izELB6D4jY+SOucRIayqpFtpjRBrJ8G5H5ueVvgmpdZlC24wpVHFP9u5zOUwR/0nq581SSVNWkEkTpzQSZOGhC87C146WaL5EvRAXnXEGlwTvajFZ2WRpmyCJhcFybHim8WU1kZtNL4J+FRSkFFvou299a1uHoo5Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770680634; c=relaxed/simple;
	bh=6VfSj7vu0L4BCBeodQUAu9Q5GGHFx6/iswlgjinpP6Y=;
	h=To:Subject:From:Message-Id:Date; b=G0c4nmjl+GHT7Vp8C9B6/5B33cvATRbCk5IOmSU9rdms0SPoByq2fBOb7tnycyQBKZvJO93OajMT/pFgxcHgfOaYGQlo7larMJektacQtIvo0iZWSw5Yr8W1BKQV2bms6cOXKAIjXqWbFHU7FqPQg13ig/PMV8zMTzvujCOVOec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAoqv8HY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAoqv8HY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA390C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770680633;
	bh=6VfSj7vu0L4BCBeodQUAu9Q5GGHFx6/iswlgjinpP6Y=;
	h=To:Subject:From:Date:From;
	b=fAoqv8HYFqQq7m3SZBxGuBCMtRyeblkqYukygVV3KVKEBNJNU+nlJiVyqAz84pmk+
	 wXhZoVfAOObEPABWzzvIU4ApYmz3/C9DKiwuWy5Q5wsjE5RpPZlFS+LzKj7LQ3wdPG
	 ogD4+6rlZkTe3V/ncBmDjkB0SuGK2l80LBTJkj8LrrbqGkY32sc5AeN3BWUttZcKb/
	 2f3nsEt3DWLfBsHS8dBxh170titsw8mM7Bj/7aKuL605djLjUJHd3pIwyg+p9BHL9k
	 f6f5zpJItCEZNEJ0m1FtMJ3AzIvoGENIIaViNOPCqjlwM0mHL4Ou0jVSQ201m0Q/Ht
	 ynNWde8jLP/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27DFE94623
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068063363.14743.1847021008525337508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1dee0f7cfc4e7c155bd90d9c8267c87832149e288bb5696ad1393ae582fcb6
Date: Mon, 09 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770680633
