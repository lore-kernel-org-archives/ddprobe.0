Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DF0DDC0
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715679743; cv=none; b=WBv/erZRugepYTfRs7rQVRR7MTFeAqFq0LEbsOYbLg8sCPx5HIglfFthEk211m8ihP16de1x4bf2nSHr2hUDSv1jP71RHNwh/IPeLhjji1yOXRJ2t2YH514lhyMPhgNbQPQtOA8ZMQArMjD64jl4xIUXtGfJnxchRtilHNDn7do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715679743; c=relaxed/simple;
	bh=e4k8by5LjpLRGP7NtTVrb+04fzb6tpv7J8lq1/DoaxQ=;
	h=To:Subject:From:Message-Id:Date; b=LCAVquHH6SQ8Urse/58JLjMZpPtw34coeJeJ6z6ixxvh19Tox5JXLDWSS25UTj4tbtMo16j2egHcspBsE40NNeFHTXdIyclJX2mZ9OB0XqZR7oB31Ew4PAOYdeCNB8lzonpXcxwzGmZezniJSMHbIt4O13ttkeJMlrAxBdU1iR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVQHptT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVQHptT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9875C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715679742;
	bh=e4k8by5LjpLRGP7NtTVrb+04fzb6tpv7J8lq1/DoaxQ=;
	h=To:Subject:From:Date:From;
	b=JVQHptT9S5NWzCOHtBDTtlzX1uU9JSK4UXNln+4w6xhNEbBHH/f3/4Uw6XSPkQXTW
	 8dNb8G7/XRq/6AHmDjXrMRWSwo/6IwW1scAqq3Ue4gZeo+AHD5r4/bL0Ctri+qHgE+
	 scBHrUrc/RObWJu4fmegSQWDNtUCqhH1nyYjr05klzYh73tVYHSVBd9s8twzUN2LvH
	 rqwBPE0Ihm9i3Qj/mIFYHDi4AFFljgCAS+6QkSs37wC/sRmNlOi7J34SArU86wm/Ti
	 JnnFuku/izJ4nafF3vKwdLtWThw9GSZHp1mZTQvYwhz9jZbtUIwLC2swlN9L72dU5G
	 PNiOaLltYh/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D40ECC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567974285.11467.713454643756537995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af374732745ecd999035ee59289b9f06cbcdf8fe4a2ecf718e55326a6461638c
Date: Tue, 14 May 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715679742
