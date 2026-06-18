Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C823E44E9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781775994; cv=none; b=ZpyRlZZWZS+DRBCrvPhMGw5ADy1aSFWvgmNLIxf1FzMhPuY3ND4Bos2Bejw8MWLeKTmapYDryXYig86m7TFU6NY0JbwJWq0bcvyLb2zXkWwUA/0IQMaUjlgdsFBm7SMTdkfAmtAFnvfBGeWmvIHDGhyejHyC3QYMNZIBSFbcxyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781775994; c=relaxed/simple;
	bh=M68iWPmJ5luEjBoL3loGSrR4c2Uo8gTLOWWcgYmKsKE=;
	h=To:Subject:From:Message-Id:Date; b=SvYcTuSlh9CL2P5OpS2MRjLgy6eQo+JN0CSlvGBooqpS2h18mAb4N1Iok8cO3nV5IOzMaLBPZgFgLpW+cjrbC57XBSkJHlHK6S5EjfZG52a4qWrCKjjlqJ0LICNdhONl3qoY5WSp8A+wAXOzaK9FN+SVRdbXuIcWNGz2BC4gJP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffiAWfc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffiAWfc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D25C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781775993;
	bh=M68iWPmJ5luEjBoL3loGSrR4c2Uo8gTLOWWcgYmKsKE=;
	h=To:Subject:From:Date:From;
	b=ffiAWfc/o6OuqmuX1WyJ24GG2eQ9UVJOp63vrzhgc+gxMz3mYGMSWYxg9JCk8YSQf
	 j9Lc0Lgj8j/hySbtIcJMf5DC6mPHtSNDTsumvUixIj3HAPt2IXliv/aBEOXjUd9yRj
	 MXmLzq9yPVXychpVtw8jyesSZVsoP6xzpS6WT4XhfUNXvjvzCNmEmOtalCZj4m2S40
	 0rdBKTTN9eR/YzHy8e+GAP9vrCiGfG4vIxrC9cFoKw73EtO6F8kORCrDyBUyoONlzl
	 SFTtk6jKphG/Mrx3W9rJYkjuHSDEVwmzzuFUvyJWeFi/deI0FqeUqS8mG2u3pvNOa6
	 i9zt8CBu2dPGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22C9CD98E2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177599371.11661.2732357180707203204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff3e1db94a22f3466ffe91ec8d329acf3692ee2099a69c2fc86e52322e733b8
Date: Thu, 18 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781775993
