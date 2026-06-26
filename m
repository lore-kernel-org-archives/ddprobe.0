Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E0C3B993F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782461254; cv=none; b=MeOiaP6/xs02JlJDgFfaxsyC7nfghtYwT51ZI/Hjpz9Qu5ze19UBnmnEKjfR0jb4jissRp5On2JZqBe5u1adbq3tqRO8qDQ9soF4RIlI5Arb/eRGjO8wfYa73Bc4FApuCTW0viXOl2wCD7D5a55Y/QMGBfi75AgFHdRdIM0jhhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782461254; c=relaxed/simple;
	bh=+6ZZSdI81GF22TQ84XONClHTkAMLbGro3OtJMUQzCgE=;
	h=To:Subject:From:Message-Id:Date; b=Xc3zgxvqRENLGFO5m5q6BTtXUGfNejYwkF2MGa3a8IUXJptd3RpK59TqGWy6MsWVmGb8G+bCUouHXjwryj/cdDGhmHwYY/n+UHoXwIYeUG0SD/0HXCey8BzwZuYh8tPJFahrp1SufXeWw2LAmq4kzu0DQQulH9ykLIozkzynmlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gydGegQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gydGegQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CCAC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782461253;
	bh=+6ZZSdI81GF22TQ84XONClHTkAMLbGro3OtJMUQzCgE=;
	h=To:Subject:From:Date:From;
	b=gydGegQmRSv08mwihrAyEWR9jQgAFsus3ztTpDKxRhtUeHchO5lGKXk4SNx1c613R
	 vjaJA7segHpOXtgjT1LwvodIBQm8uO08zdDC/d1Y8k+MywWCVNDhq5Fjh5U5UHZmil
	 zRJDjtZQYHygZMyR6IcZ544H3lGZ/qw0O0l7yRTgld+ew+HRMdlPuZn0gWO4w5vFCA
	 r3YV7IAzJNUsUGDwuUzr6N/4kN9teGsdPM8Z26XiCIxouUIXcGnuMshSWuKJ5o0fiw
	 U0kcxpcDsqe7s6MWnBVuZBp9rgp1iSoNZoe8zoht5CUY9wA3shAunFU5AY/DZvo4h+
	 zvzFNEFDNcn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0232CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246125371.6597.13693183153374414170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0032ff899f0435b66094fa56984c293da1bd4430dcb3e3bc9e67be48897fc282
Date: Fri, 26 Jun 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782461253
