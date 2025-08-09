Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296EE12E1CD
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754768994; cv=none; b=h4E/IDN5ow/59tJTYirs9cpu7yNi2AXaQIpwIutJra4zR8iUap8eiCpDJlvbcfWb4KdGf54ohvzuAgKTdw+kHeGn1IVr7g9VLp/uokX+gSFIG41M3APYLuJZeuDS8NkQaDnp1WKHhtE2e0GuWJLkjgpH4AwG2OVJf0nMww3cRRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754768994; c=relaxed/simple;
	bh=4YWhUci9TaEPdEwYPWXybaeu3rLHn6zVjm+9ES8D6GY=;
	h=To:Subject:From:Message-Id:Date; b=daA7pDJc9BCZdOxCXMx+UNi4tNu5IKlJj2lrlqupnhV9XjeG9SlGV0jS/8VGEKz2Tp10hvVm6/UjJ8aex9aoPoA8GolqFSUYiPiPtqQbEPPpEx9gyp1GKPWkjowC+g2OwLTZQdiEgpgyVVcgTCjZk0YZAtgf+QF5dByreIC4YT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3Cu0sjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3Cu0sjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D759C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754768993;
	bh=4YWhUci9TaEPdEwYPWXybaeu3rLHn6zVjm+9ES8D6GY=;
	h=To:Subject:From:Date:From;
	b=S3Cu0sjF4N6FElSEAYikiq7vGYY5SpZXl5wQLmI26jDXe07NVBk25x/oGgSgiMQKo
	 wXrYfT5GTW8QmejFqzEOdb6xdGyooZ7JSS4joGfuHojS6klvMZYcDxn+0Nft5pDddd
	 X2YXqbXGWRASQU03e9sJJ8DspKLLT3/AS49REdrxr4pesUgUD+9SsOhpMO6suVePkz
	 Hi6d4fdiIqP7E8YsqPBAOnFIqOV/551r16yIDmxstR0+2oQLlEAXnWVV+DFDFUzGSh
	 RRrJwAqZBWxCn50Du7M5DyHebh8By1pUjVzz7M699/LZ1NY9w/v+1UAXmly2fv1Qoz
	 Vqpg6ySve57JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED19C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476899357.27861.11536572943321624188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1733574844425e0ad325242b6733e18f07ab9dfa4bbffc3d491ab4831efe10b
Date: Sat, 09 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754768993
