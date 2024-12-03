Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEB71DB527
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733216154; cv=none; b=bw6xz2NG/EUMFWbg/+zRRj1uJDhI7cJLlecqed8mmk58rgqmhFccUIFtI6KFX2H490gkOM6tJwWT+RCZTp6AI7X+UGHGi7oyPWaAK11fK6jUG8rKW1cHQjhF5LdZTpFd3yGGlrwhYfVrBFFAqDNiByaHSU0vm+eh+pFQc4tfFTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733216154; c=relaxed/simple;
	bh=ZRwzRN32CGF24WRjtsFUq5njm7kcuE2P6tNXq5pE5gg=;
	h=To:Subject:From:Message-Id:Date; b=qMnwS+NfQsqRw7Lo7FXnLOmgHyVSbfMYKOilbc+Wpfyq2ROh47FY8ELK4FT+bxZA3BQPqXeX91Kl61IjerxhUFc89mHmcx1M5f8ovG2fUUX4R7ykwBYoF0hbCtnywMzRj07Y6SxzI86jEJ6vbzeCop4rvCFbMgunvWf8xobiO/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLRt4yEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLRt4yEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08C6C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733216153;
	bh=ZRwzRN32CGF24WRjtsFUq5njm7kcuE2P6tNXq5pE5gg=;
	h=To:Subject:From:Date:From;
	b=ZLRt4yEmbUAx77SAf7wqdP0Zd9suLSXw4y/ei0Mbtf+5IkSQubAp1xTPqBlQkkO99
	 oJcrY2tHP8sGn9PULiBT+Gx0dv1QguumPgPU48NtJEph5fP9xEPb8xTYZbe781rFdk
	 FpNjPYz+X+xKU0+HUgfh4dMKbFKp2m+3VAx2sD4f7roNVcmK82hD5fs/woqFyYRFog
	 wb8myDMBhiYzBjsV0FrEA/00DKKzCaeBf9tL4H+9KOtsqb5umMlPvhSBS/bHVUoM/o
	 NEXW/cc7c/DXM58R/BtxBjmunobCkyWkBnJC57om81ilZXYsDYgZK0B8bDwYYarxzw
	 5Z9EpPNHR7Epw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B20FE6C61D
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173321615362.6121.16987006321046455712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a560bc0fe4876ef0e7b01cbe10c245a5ec93ffb09f438f97a31d1b427859be
Date: Tue, 03 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733216153
