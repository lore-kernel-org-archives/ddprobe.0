Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B72A2D23A4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781669794; cv=none; b=pdCNSNPwyjZn4fWt3UPKgeCgTxwelQBMurkh1reFJkqtZY8r69uDDGT1/H+mxPlCVL3nfYrTgq5mT9nzd96tsJJbTl1w9wZt4ThQYeTaLIbx8ofIMeG0wZokJm1W3+moZDQAmT9EBr40wEVx0kS5qyYIO2jpINPvFxiuDTHZQPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781669794; c=relaxed/simple;
	bh=vx1SoOOUwTtyH9+VuSeQErLe7NnXvXG+X7jxq0LafPU=;
	h=To:Subject:From:Message-Id:Date; b=NHFEbwbyRAxt44/xoaWmNWIWgOR9dOPaDX/8O03IsJ3ROB6H9QRy+P+OoYxG4ib1gfT+I0xnFxB4uh0eUi+uezBoOrCk1Xjv/BWL2stgGVHaAQCSQLg88oUxX3LwB/hbSXfPC7koPGlETnqS8dMHY/mXLAgaaXX03q0Mde78FoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6nutbfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6nutbfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED185C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781669794;
	bh=vx1SoOOUwTtyH9+VuSeQErLe7NnXvXG+X7jxq0LafPU=;
	h=To:Subject:From:Date:From;
	b=T6nutbfolz3ymjIHvrQHCJI6nU3W+TZ/HTkMFy6ohOwG4TaZ9rwtUBQmC1tNvruFl
	 zW8nu3fu7+pG+7UN9luN/BDh7u7dqk12ZYVCdbk3BMYaxHoipdQ0+Qct73upLTAiuj
	 Bddc8YRwzN/MIleedDqTWkMXdWL0i2FKiGMH4wvE/L+ra8nsMiXmH1pTj7yyOuf8sx
	 gNSJTllURZJ2veCYfGRn8uc8yXxHHn2bqmr0+Mquu/Y07BJLV27UcmM/PuEJDtgwRX
	 HHHLIaAPwjw2ilQMyQ1u9qHEyilOym44yGd9vL5T4lxE4uyc5r7r76rpP+GhTV3htC
	 WW3oTiQaGbx3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC429CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166979372.4405.3867155642452189640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3b27066d82f551ec013196248d499f19ca4d47f3e0088c8a310573e6e99d84
Date: Wed, 17 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781669793
