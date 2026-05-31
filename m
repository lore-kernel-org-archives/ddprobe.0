Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377213009E2
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780268674; cv=none; b=KBxitT+jP/ry7lUoxC+1AHIVEeTlgmx40+s2b5h7VJLV6oefI1QttMZotN/rIwoklkYn7ODLgmyFI6ZZF49pERTgaS4RSXcODd4AhNQc3yF+j3KoY+kCzH63iOWKL0iiwH1bYsiky6CaihijeytKlsylokw4SGEWUjQOSO801Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780268674; c=relaxed/simple;
	bh=MJZUkreA2W9XlI8fimUfAIEGKi5fk/XYSuO1Ccx4pck=;
	h=To:Subject:From:Message-Id:Date; b=CIeWrAPS5SzuAdT/1Pw8XWBbhfSxhf2vTrF9pipCML6ZtOkXjUmV+FAOCGx/4wX3PLcMtx6pSHqrl5V+St1fDkM0XeJeMk9swgDoCusC6hGGrCBwkeNqzhDHQ9jk58Wp0gBkbr8TfJ7HwU2rGneXSws4prE0t8+T2c+b+brbG6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKrMXEBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKrMXEBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFB1C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780268673;
	bh=MJZUkreA2W9XlI8fimUfAIEGKi5fk/XYSuO1Ccx4pck=;
	h=To:Subject:From:Date:From;
	b=TKrMXEBpJtb4N4r6cmGi2mtTP1ujzwQhr0fllfDxKNboTowFv/4mjwLzt+pveoSDj
	 6D9TDH/t1ZQwy0BS53xRoj1lH3VpryMwLwgVJvLM8CEOTlaNVeDDjFf/K9oclvah/u
	 stH9YAA4JuHRxi3F5sZF7ct690Dm29Y0UaBUr1JwlmO3IqvPhHFs2D5HMhSS3WZV8h
	 n/6UU+qhJY56FpUsHQau24ZkVFZt0Sut7XWBxyj6x/NNSQ3lHAymS2NLYuRYdxOrTb
	 R6Ikk+N+jQSPjHye+dyYxJ1e/V1dFQ1TGK4YooIAJ+3hDmH3p41l+J3Ojtl9tibvBO
	 ja86HBILHvDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EF9CD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026867370.10400.17471631506860919950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b135f2980b68c2a412dcb90aa3678445c33cf71cc6b6af8eb3d3649f20a7c2c
Date: Sun, 31 May 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780268673
