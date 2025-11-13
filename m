Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286D833D6F9
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763035194; cv=none; b=TuYdFQMxItZg3blHxiMcRDDFdLwihvp9Q5G9jN/HULYFkcr4yG1EBnk+ByUGblJ9Z+jsf8kQq10DAgX5pfjPpym+oQYIxWmgAOPW5AT0VYtd6IU3yzBzo9LFKO+R6PdqaCY+hGxsEqbDAhWUkdar3qWDFRUU5mzrQ15O0tRBv0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763035194; c=relaxed/simple;
	bh=atmALY8UIPWg8FaT/iTIudWlfdaBDuRd3QndBCEEpAA=;
	h=To:Subject:From:Message-Id:Date; b=UgDLLAxU/2BqSqBbl1rCApfGtOxwbmRO5FEomFBR6pz8Bx+TLvhwLZIDIDq5r5xa1+P0Xpci6OMKz8hezeNsja99oQwAXCd2LMsZWCjSMkOhGHns6dC6gvK3nQ87ctzZoZDuk7oeZLvi2gX7HvVZ98c1YHzIhE0sf8WkiU4Jhgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcytHa1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcytHa1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F49C116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763035193;
	bh=atmALY8UIPWg8FaT/iTIudWlfdaBDuRd3QndBCEEpAA=;
	h=To:Subject:From:Date:From;
	b=JcytHa1OPrLBTAXQOpyZIj2lpxXK4N3TX+7zNxkAlHMZbrwXnO2VZdKlNGPbDnEyc
	 LHPOfy2bzvlDmoQcasBVpjUn9KUB9iH67s+2zvJM+xtY9GOfX64TQ9kTK6K/L9Rnl5
	 Kxfn5REm3UzAPGisVMopjyT2H/jtP8JvycsRV9tbB0vaICB5lGv6sPsrl3Kg7A//Bg
	 uP+y9wla2Re7iTtq5nlQltypFp6716PcVGpcF1XKJ2neixD0M+EORUsosjccgala0Z
	 7MK5AIzWPIQGjHm8BvR+RaYjIuqQxyDNoymsGPPw09D2N5bKEZq8Am6FMRn+spAKJF
	 p5yoc0lmwJRfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3CCD4F43
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303519357.10614.5810128997584412059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff9757008d46a3837cf916935374b3173c748e383989e454730772e9bfe9b49
Date: Thu, 13 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763035193
