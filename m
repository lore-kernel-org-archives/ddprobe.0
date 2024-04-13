Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5350620DFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713008363; cv=none; b=akoWNdIJTUpUoz4dH6/5qcSTTPcAoYz3JWh8wJsdo5diqnLgO/za/19BUjBqiLpqyEGTLnX0YmQF8G/tMiq3yr24re1Eo2iIcU9i9GMcTMvZAjj/QBIsd2MTCMq3HnOGWQGAmq8W9hgAMCbSid3mcFh/z4+Ne5LdWeZWqyH6fKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713008363; c=relaxed/simple;
	bh=jAOUhtEWfw103fkHlV/FojRBqod2mW46tF+NLteZj6s=;
	h=To:Subject:From:Message-Id:Date; b=l+6tgWYXZNt+50ZMsEkm2TGEqHI2FVY3sKeUXr+9T8dBwkRdnuusdxncdaFUXwXA1Amb4PFsCJu2eeT7sUH6pNIiKKBpAw+XrHJ/SZXj3Qspd5oOX9h1eEjj00HonXbLQzc6G0lGvYpsvtaLHCOARi6FOtQA+7RXqBOmnqapWCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxB3Qoet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxB3Qoet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C27C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713008362;
	bh=jAOUhtEWfw103fkHlV/FojRBqod2mW46tF+NLteZj6s=;
	h=To:Subject:From:Date:From;
	b=qxB3QoetsGXIK39nvD076VzHKG7bTyLM4f19iGhkyFd9+zdw8JIS3mvsK3r+qeZmv
	 vrxGZJhYZM1SwWJ1XNKY6nXdrDGAoOgWR6IVDEc2LDtSU6tGcoa79rt/DWh7wSMtYc
	 Xy/WqdcXDiWDjkpt6O6Rcsu5SBYJ6I4aj9UR4jwrD662tTNIN43/yc/TVqCc2PhfRg
	 HnsiDR48b65L2MdvLP8CZr6owmUfPlKG2w5MAYmy4BGdkA9HeXfsLs2EjKNEk9kSdx
	 qEeSEg72tDe3LlLoIUGySWaiWgQdoZPdbsfXlOlGcPKNHbXdP8DfDBKY1I9Na5Tb9N
	 e8/0pet7hwzag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DFCC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171300836278.30131.8969482596707774959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65168a41c64ae49a35ef4e1166d0c2e0ac52af8fa40baf0d967b3c4c82aef78a
Date: Sat, 13 Apr 2024 11:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713008362
