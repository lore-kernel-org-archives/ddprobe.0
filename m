Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC1B228D8E7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746626995; cv=none; b=lt6dGzjy0WF3MPAf2Y72dV8dwcPrSM0zxKT0uAx/dPOA56ps+Uku4afoK6H+Qbl/tLsA1OzYbMZfXzBLWoxIVFY0Ah0MuMcb32FBVP52HkK/uW4jZj3wStQ9h9xaredEcUVQjPh3W/THfnd+6WAawHbYovApxPgdOPZV/6yBIvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746626995; c=relaxed/simple;
	bh=U9BnJ6gympg6Rkt8PPBjGR/UXdpuHqheLIUh4ap5Ovk=;
	h=To:Subject:From:Message-Id:Date; b=WBahr+6AlzWAMZn5APwP11r1/17Sivixj0o7GjGuWegJ7a/0SBw2cJBaQjIKAXh9MUIc/0zgWgxmk4ExO9m6/pNJrPTsR74tEfuz1tMvB5gErjC/Dk7Lr+XHTsnQsYMrUngAgwnO5ZyFSTRbMvDA0ukTGtkbl//RI4+215CC5fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPNV8VB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPNV8VB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B0FC4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746626993;
	bh=U9BnJ6gympg6Rkt8PPBjGR/UXdpuHqheLIUh4ap5Ovk=;
	h=To:Subject:From:Date:From;
	b=tPNV8VB3rI+Dc15WY6Ee9o/DeNU049G0/PYR5o9it3T3MscDulxQyEk5AGqmMOePr
	 iIckSNOlJUaNAhyr0D9+MDTxQX18DGQdOgslDuGs0WnR1A1xI+ND/PCFfvv/rUUJWd
	 ZZPlId6X6FKHA2HnlqN6WewIZjenZRfgS1KtAtXUoet3bvf8of07bKMCdr0rNWU3LV
	 Jv4ju41fQefi8Sxg3GDGvXfx1rjSlBvO8D6D3y4un7DaM6OP4LRyRWUdrEBPlNvoQN
	 JRODQu7QuHChOWY5KQdMfVoJR8aJgvsL/IwkuJSF/Va0sJOquwxpt7J92+yRxFaadz
	 ZJVhKDiGOEzsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30ACC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662699365.21013.15908749508159946810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20acb6f1fef19855fbf1845bcdbad9bf3dca2b8667993c057876d784d33237a5
Date: Wed, 07 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746626993
