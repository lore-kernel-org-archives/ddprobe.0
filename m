Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DED246793
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760208594; cv=none; b=WH/F/2iG2jZd9N4CV3gwNLAVd+u8itHxbDcSr0aFDWOtjJ7HUjymIUvZKGf+xWAD3j4w2Ig9BcJdkC+4QnYfX1ZgK0JrdacDtall/Ny2xdjE1w8s9KeVU7DBocb2yapbJ7cfN0h/16dR0xesQGCI7Jio6CrbdmnQuOwqzYXpZMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760208594; c=relaxed/simple;
	bh=cAaJv0R2H9nY+4vALgQJdx0C9Xu2E+8++yNczDAJQcU=;
	h=To:Subject:From:Message-Id:Date; b=MgeW2LJlt9CGMM/K6q11wgrCkcZy84TTZC1q8yY+WziMikXZpK4WDE6ovSJxkdv41EpEC4UPT7NpHpiiN8ZvX2EJuNHpNoyc3Z1pVx4QxvAbOU3c41UhQLj24hae/9EFevPiG1wtY1fTuZH/6RZb1r6H33fRi/nYrAGk2ito01A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmu2BW2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmu2BW2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FD2C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760208593;
	bh=cAaJv0R2H9nY+4vALgQJdx0C9Xu2E+8++yNczDAJQcU=;
	h=To:Subject:From:Date:From;
	b=mmu2BW2ezUrjbN0H6lCgXQUWZUT6LooiHYi97nRB4dd+SzyCqs0cqbKsodb4BhZU+
	 Pn4a3FqX91D23y/BwgqRSCmAkBnBQgWkxBqCOFY6B11I9ftgfXAQS8qm7oyiyWAKZI
	 PPEFy1QGtn47LVovihzkkbOVenWftWKDWa67WQPf+aPNjCTzRO+8yN5zGUe6Dw444O
	 2zOP8479D58K0bLZK2MhkU9X1rjk0Cnbxgx7ZddAdOrkCZJCNn2aybfUEDrpVFyyPh
	 YTroU7KQ7wsRZq106wX68UT2HTBh3FysKQLdpyEhAYgc9RTqJtp6V8y1pgo/zLA/it
	 DR+prwBBLaCgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F138CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020859357.13936.18263635024048925997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4dd3c5771a857c83e43b4145085085d1b289c674e18d362a9481693ae08f72d
Date: Sat, 11 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760208593
