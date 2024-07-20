Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A4B6FCB
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721495754; cv=none; b=olD3/UWAIEgEphCKZS+8NeYhryqp60vzRWeKV6SAAca8cCNqNN2hQaToR/Xr1qhhUbYC0jZos7l30mPkY+G6FE94Z+8eCqmUBIXwFxNX1T1WE5OMKVs7Xpm9LE/defiOQsoRQINYFApkB7OCvSbYe/ZoWtLYB7etRZ6ofB97Htw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721495754; c=relaxed/simple;
	bh=tS81MIEowjGT4kHY7RsCKmmU7vZUkgDGgrem6kpsyFQ=;
	h=To:Subject:From:Message-Id:Date; b=OiDwWzC3TW0hydhmnIiKwNx2bkNmQlmBdOBtV6qBoU/xKzhRc3u2bgBCUDRxy6YyvEmgJ4ASYQ7kq7QWrB6wrmFKV2K14yTC4c/kMHz1Uu4qN0p8bRRFy7zcnZnIwoMzh4+easx+JKpyFV/8Y35oEAQvdT9p9ra5/OQr3MpX/lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFb4Vtd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFb4Vtd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DE2C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721495753;
	bh=tS81MIEowjGT4kHY7RsCKmmU7vZUkgDGgrem6kpsyFQ=;
	h=To:Subject:From:Date:From;
	b=FFb4Vtd1rmm9lP5wrSdmb1MsGsCBKoAirPlo2uuxWuQ59wy8+KHQeusJ2zEmVO9wf
	 4IXz6rxq7cjaCHNda5VYGPUWfthsYnpW+G+xvNTsJomiKpGwzMVYn5kOOfse3UhYBc
	 fdyDrOR5c0w+6r3r1aMcG2yWTrXwQOgRdmqX9O+Rlagmc7cAZySi32g9dwVwBVbYiE
	 Ro99UY1CRYDmnB+QNpBmluwb2sKMyaqPjIBFrn753ka2M0eQzvVWxzOqbZQ3GJKPTc
	 HvKdYyexKCculfiUioBFd0W0DymJH2F1IirfUzoUMXaW2coqfsBjtYo2gucFdFwc4m
	 Pnv5md49D7W4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992CBC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149575361.7220.11221515790887174183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52efbdb56b8174de2c5c1541fe9f7d6992a8a4a65f840e23dfc1fbd8a165b97a
Date: Sat, 20 Jul 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721495753
