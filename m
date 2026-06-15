Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337C72CCC5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781488594; cv=none; b=PMDY2SfoIcKHbGaZgkRkGO7UhifvthzufU5OxT7NP1+akEJrxr4+JHQgfivrAYfB0RJ21vMUBhh70nGHjA1O6iam6Y8ZpicKs215GL3lIyp3niww911wz2GgIwbeJcOIbx/pPuImVJwoCgl81xcEmNP3Tl+qWGwvH/F/55ZvP5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781488594; c=relaxed/simple;
	bh=a41OOrZaSMcGWMihdn2ZrvXP1WJBDDJ+HksEtEYEyg0=;
	h=To:Subject:From:Message-Id:Date; b=onuYAbgWC0Wa+sYMW83aMrlpFg6TpnQGdZSwxKIx4BjedOFAaOf4Jkx2b9OjeqySr4NQlb2WIi0nrL/rdNQaMfaKoBvX0XjVemFujqlKWSLtosOXLB/zCJxStzYCFfgQDVNdVlwr5WVelj07KniO/uWSjyywcxnH0/Msvs3RQi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzsidrge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzsidrge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85A9C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781488593;
	bh=a41OOrZaSMcGWMihdn2ZrvXP1WJBDDJ+HksEtEYEyg0=;
	h=To:Subject:From:Date:From;
	b=hzsidrgemk50NSJ6sW9UmkE3l6zFGMwO65JkaELr21Dy8/YxB/VHJ/UC0Pb0+3PNG
	 RxUl9PwgcS6VKeIHMBkNyCbMCwUB5PVoq9+VtnZur8LwixjqCOS1lUP2B25koWIA28
	 /yrBBnetbnvDW6P5uBaLL4bH2J4bgEU62VR5EFzFMD4FzvXr+E1vKwCVmOUQ6RkDLI
	 idp7zzuytFCTvg9McMsTKZcRUAWAgL99hiBdw1JzjjlC9I/ctR5cev0fDXu2UHry+s
	 5jInobNolFCrjku6MvtJVxANGrrNVK3Rm6c+XPqmcHqxZhf/kVAweV+0qIGumVvuGQ
	 5bMQ0CZNWp3Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B768ACD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148859371.9091.2188256962785459161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2fb6770cebbcb803ecf77ea3ae95dc307e14c01c1d5c57fb6b03abe1d9332f
Date: Mon, 15 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781488593
