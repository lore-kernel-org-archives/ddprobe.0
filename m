Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6532B1E868
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716815663; cv=none; b=F3bXJ3zryCaJBcn3+F9f5B/IbYaoSSpEvm35cyyBs0DegAHwOsV11AC8FB2jLAA7aXd4p20k3EvZHrBX7ITY8Hrha0MsCupVsF9tFk4XfvKw4gFN/dKEM4frXTx4nBFn2Ej4TQWX/oIJDrKqGsn1RtsVZ7FOFX7PAkm2uoeth/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716815663; c=relaxed/simple;
	bh=Z1cIYa0P9G+bQLhGKmcNLPoXqSEOfzPe1BReKnmRvm8=;
	h=To:Subject:From:Message-Id:Date; b=BN0x0HejqUHIUfi7Xm0F5lZH7H6TvZYReypmy7e/BJxNyr+Sw023++XmQYEIvhIDoT+Efo3Cg9mJwDkkgLUB5AKgGpLsqJ7qlc4gdJcD84cGLEL1lCgAEPh7tbh/zihbvP/J9umjrhfoGB3243ljxxm21UnqctlAwLC+yYyzh8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUk4zABu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUk4zABu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA936C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716815662;
	bh=Z1cIYa0P9G+bQLhGKmcNLPoXqSEOfzPe1BReKnmRvm8=;
	h=To:Subject:From:Date:From;
	b=dUk4zABuo8XKcU5RrLws9gCAew3ajYPhiCjcSd3gbtNFOz47oL2XZLBw+NeF5xENh
	 v0D2wtyNXicqcXv6SCKelhE7iEEO0qNhm/yXUw9c1d6nkFtsMk8sOVlboX+i0DlY2W
	 kCRMnewmS1GEbh+CBHAYLyE86WljBZYqU+toBG+YKO1GI5lr1DutpL8PV15oh4Ilv3
	 SkW0kB2p/124wWwBVr5mPX0vgFBMeLH6w4Bdj7rVgMBZhtt4UcGTRsS3EaGeP8R9u0
	 qUJzXvO2KgIZ1sfbiRax0Qiz3i91kxmyDMZvPywEzOg+319NwuhJILnK7Ldqzq/Hla
	 rgONgqW6yIWbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DA7C25B7C
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681566278.16912.3485826592584671830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dec35bb6dbed9b16c9cca5db77bee04eec2e9adf480965fe55a2153377cfef5
Date: Mon, 27 May 2024 13:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716815662
