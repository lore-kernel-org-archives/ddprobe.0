Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F801F2C45
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750059594; cv=none; b=fplBBPzr0UmVZKuhm42G+FuWWeGiqBskyyqLZvlltby2YLx5EKDW4/El8FvkUuZmmyRCgfc1vsRa1VD+WOGAZBcZTq/5PsO57tKqoGvonfBj/uR69j6q++z65Ri3VY0Dkp476qQf0Z4gGsx85wmq0oHOKgj98tHg7dv2AGsSJtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750059594; c=relaxed/simple;
	bh=GI9HIR+GOJnabzxhDj25MxvP9WopyfrjoXVzxnNU0/U=;
	h=To:Subject:From:Message-Id:Date; b=DqpGfLx606McF1lyOY5wDf4RcVEhzP4paor99rcMHngu9PFckqM1daYVNrvSYjVU0OaC9IamQQbu8JkHDBTpXaWwXxBy3fU1+206Irm0dnWWIGMTE403DQFUo3b8FPVkdoDgYNBbB64LPq/LO09W+Yt0NcMPmBuiLCgNDMIX2lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxLOhzGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxLOhzGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E21C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750059593;
	bh=GI9HIR+GOJnabzxhDj25MxvP9WopyfrjoXVzxnNU0/U=;
	h=To:Subject:From:Date:From;
	b=bxLOhzGMI7N/n4Oo0pnf8o60r5qKRePNoc08+2Mpon1PZPFhcys6Zt418Ud1gJqdP
	 0PZu0S8UUk4O2Fnen1e3S6Q965LLuUCebBetJBtREV6h2hPOHoI30oI+a93CGcjyl7
	 30KQO8huc26pGSL7dJbiPQ/dz6jM4K4SGTrwUgDp1ljNEB1nhl4OWH+0RILjvAA//1
	 o8jZ0JDyAeP4JdT22HnY9Uxf7eBn6i302Df9Fdcm7GrzJ5Q1rWaGWSgTZZjeZBaWFi
	 l1XY2exiriYet2wEZt5dqZ0177X8h8ry8bvCcaV35kaVmXYwiETnw2uTpCyjx9/orM
	 QnNqOoTW8sFOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3DC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005959358.6930.2335226629054688495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327c223e45e869fffd54fcd6d75add350b39fada120cf1868b4f043e682ed6a2
Date: Mon, 16 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750059593
