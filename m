Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F60530E0FC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763531515; cv=none; b=JDSCqoYOuNp34an3lzWIDb8gUBwVz0ZSHRVBp1p+0IjIXd828SeAo8vrx0QEBZfS2ugxo/uk8dDFNpU47Gn4UliUKIpqwSJhkYsOpJZ+0ajAZQAb42MXilSuaPMSqv8BD8Jr4EK+r0Fuc7CUNkHd3IbM/8ixfonc/QMsFSnTgeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763531515; c=relaxed/simple;
	bh=+Lk9yST++FblGKnqKvFwEhnY2Ps9lb6KDApz9Y4KWB0=;
	h=To:Subject:From:Message-Id:Date; b=MWwX29LDzYYj/ojDB94vhxc46YrvhFkxpz1pVNSeGEvManmxGAzOsLwHykhmgrPuCODR09SYW2mgigMI63roF7HGAFNClw8izJkb4uOO0sI4aAq5MThLLaFBcBCtLS/f6XQE+uUuk1/OWyW/BNvEIzD0JUYcH/2A95T5n2CnTMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGYa5QYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGYa5QYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4154C113D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763531513;
	bh=+Lk9yST++FblGKnqKvFwEhnY2Ps9lb6KDApz9Y4KWB0=;
	h=To:Subject:From:Date:From;
	b=nGYa5QYfTHOye7zFctyb07gBtVzbCMPpmtrQ0BbHQguu3V1eLd60R7FyCQgaAs6TG
	 d/IpFSXAr8ZyTXKebJGUT2ZNoCao11gLlqn2YtodzKNERLpBhUmaYPMW35/EcORu86
	 s7Vh2ge3oH/4boCAh5qQ0xR5i4+cXknBV9i6T5YYFwnQqbKffeiCwjoek31BWdA18E
	 9eAAth+09HKeoHb4CJWGSNsmeouCpwy7Ay/G5L20iftxR1pigDS1c9UT+Un26PC65o
	 GHvCM01Tyb7lD9uw3Gkb0GwMp0vqTE56y5DBRtV6udwcfJZ4Db45COOYoIx2mzepB/
	 bP02b6PFISUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A3DCF2570
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353151358.21444.3733554835670911546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 138530b1527a940ef88c29e13b7fcc59359195e778f6160c71cd4e3c5154d5a0
Date: Wed, 19 Nov 2025 05:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763531513
