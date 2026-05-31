Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4651630DEBE
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780263874; cv=none; b=MqGXl0Y2h/Kv8I3TAWnXoujnWmef++U6AiACcR+CELCmhjF3sSdq+GUgW/qdCjMHkAzY3lwoqLqXn8uXz/i86Tv1yxEu4GFfdULpcq2UkldCF+wcRGgTMTCKPY7A+3HGq5q6LJ0tUuuGt1MgJQ39jFrr0D9Ny5z0Nur3TiuESMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780263874; c=relaxed/simple;
	bh=hRjHEUUgrEIYVUEhfSs6qNEufxY05rbh5mIxgp7YXVs=;
	h=To:Subject:From:Message-Id:Date; b=I5zBQCiy9ttZPdRE3hoLQzjSeX2L0G2yb2C6+eAL3/mrEQ2JPrs5gE/oUudpiMP2b1W5AYFwsl703k8oT1ywGvMKobIR+JyZ5S3V0K+62pxie1GMNScrIgh8w3EiDLZe2omtih+r5KnF86wMxl9HjGtCkk1Enb3YDnwV126SMkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV7H0esU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV7H0esU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB4EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780263873;
	bh=hRjHEUUgrEIYVUEhfSs6qNEufxY05rbh5mIxgp7YXVs=;
	h=To:Subject:From:Date:From;
	b=pV7H0esU4SpJcma4bDevbXmvPTSZjUD7x6usTUrhms3TBPEF2eNKckNS5rpXllXpw
	 RSCFgU0r7WNmsNwZpR0gxDRG8zTx8rzofYuR/Uu5DMAcUDjV208cXRhzxXz0Ks5Qj8
	 /83wge724in6geuqMYml6uv59P8fXOYSy949xjzRgnwdgMY+4Hgr/BsdGpMiJqW+3u
	 3zzOoZ+cRnpYcrnA2mYv2nlwW2xc7RfDxllHacHLCgYF/rFh7m2lRbQVOO4kmuzDen
	 LjrREWTJeDHo22V46gRQch5AaOb/G3LtjrvX27l/SMSfsvGnWxOlQaOC9UqLKd87rW
	 vXoadis2gALgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8D9CD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026387369.2707.6216914205991172459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310fb85b13a3ad334560e3d3b8317404d9dbbe7627d267cf739d75f86631db41
Date: Sun, 31 May 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780263873
