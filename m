Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBFE79D2
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715656343; cv=none; b=K8Nyd25X54pHGIqvtW/aQLtwyYt48kXv5brqHCYGaowrh5zS1grHflGpdCQbHU3xVwVJe6vVsxisNQQvZl3usUxxKPtvk0sEgyxtoWgXdw41JHYMDVIToMFgPaiIOSpM9Vjkn7kiO7PEvxTSpvT9Lgfq64OcvgO5TJ3MvcU7qBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715656343; c=relaxed/simple;
	bh=sPm4Q1yepv53VC1eo5jsJGxSuv4eZtHGTVvmd8M8+H4=;
	h=To:Subject:From:Message-Id:Date; b=TfMT2DZ9lztcDxWZ4Kfj0mLvondyIRcK1IiCXkqF6epfoms45jSERd9qN2GdCKF1l689dyFwDLkfGg8fmHP7LwZ7eYmIm8YurChM6yPYKR+kRPbRy9ThsLOhMiSmIDfYgi61yWwcZiCao3BXwVNaSjD/rF0TrZPP1IYoFhrLFr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kh9h4udw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kh9h4udw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBF1C113CC
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715656342;
	bh=sPm4Q1yepv53VC1eo5jsJGxSuv4eZtHGTVvmd8M8+H4=;
	h=To:Subject:From:Date:From;
	b=Kh9h4udwsD74BkQ31ulSC96rUxU7XD5Yj3Thf1LBtYuy1JyN1FhigV5PaA5VxD7Gh
	 MI8dNwEICdtjfBCxdnqJpHwXVjOI1fbi52Lzl/Gz9WM2YU6w/ZFxGDDu5a5Px2DG3Y
	 YGqucYaDxZwHFoieTRBYSVP+wMjagWp04LWqy2ZoN+93kInElAxRJhRAXsMapiw/CU
	 AyYXC2O5Ec6mV+CVvoiydQz77cjprTL1T4oHmxkrLEe+rNPOx4XjffAzV+KOISGlFf
	 K+VEtq4J1paCx8WW6G2klQjQ9xDwhYqm8mGGgpIC45VltGlrWFluxsOG8VO66SCyZX
	 H8JzlshIVHLvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE225C25B74
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171565634277.10783.2081515608421302749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c0705e1514c32e01b0c782a5f705653e23e93326a732381b1266e5cd72e01f
Date: Tue, 14 May 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715656342
