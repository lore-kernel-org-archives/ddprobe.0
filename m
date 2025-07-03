Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462FA29A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751506194; cv=none; b=I/39Z2/DtoB9UDBy9ld1j5kOymA27FpHV3SW3Oz7MP0HvQ8atdtZGwuyLT8MGyD0eToqYVGoXYrYOwZ46s8ainm4HHO02cPgICYDkhhDB2xt6oBFT03ny2tKIpQVPIUUZG19QxG2xTd9EOhw41jpDozXs7yYms26DgV5K/NsY5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751506194; c=relaxed/simple;
	bh=nXmaxEBh1V437rTvDkL6Y8fjIMy1E6nGK6dKE97V2DU=;
	h=To:Subject:From:Message-Id:Date; b=puxehcbmsKhoHiyMqt1GkOWdb94Y3Lzev5Qg7OyNk9JFysCj/GdWe9B4ZAQ3JbTHC5vq8r/jRp30vMi3SvYU86HV8Lo0AWJfjZjzqIcFtuN/xL/LkP1dwUugxzOJgNpWsZentQvqnspIUmTWHRSoRx3mlF3NZsdhxYP/sySa9Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOVxWF5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOVxWF5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE547C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751506193;
	bh=nXmaxEBh1V437rTvDkL6Y8fjIMy1E6nGK6dKE97V2DU=;
	h=To:Subject:From:Date:From;
	b=JOVxWF5hlf3cQ6f+/MVOwoq5MQNJz7h77JZzynimHocZd3KVO0lsHlImrGjKlDqJV
	 gHQbTOxX6UBJgAQkv2AtaMoWAlb/rmvbOVNaRkNfbUne5SzCKileAf+CFSYhi38vOz
	 SUm3599olFtqZjmnoVv9Vs8j2knBNlbLj5AGJCojsYnSHAvjj8M/rJmxcrsej/G21Z
	 rOGS8jvUAYM1Wk/J/WjnaydMhtnjfjyUAZFzD0Y+y6rimuV1JLdkqU42o+lmy9YKnb
	 MmE9HpcUoZmX0osaGP2iZGY6w3PmPRM2fmuc41SEEsouHAP8Fz9Yk3V1gH4sT++hDf
	 qyLJWPDcVqaOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B860C8303C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150619362.30673.10899403185169060243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6be3f92f5c87ecf723257c248fa1d594c364e80c865fe70fb99016b3f03632
Date: Thu, 03 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751506193
