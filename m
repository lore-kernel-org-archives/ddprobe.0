Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3388E3A641D
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778701234; cv=none; b=nw8nUtbTXKRoc7PqJrYZIeD+zU8lJb9qz3Jdo6Ug0KZpSyu2hYb5jZdRfb/TRaq1PzGU/W2C+DoaxuhpkKDj3JwyyPbDHCOMArUZXRBgKVsyVr280H7p4ZwtnCt1FERdczVgLnsNvJ+bdNl210HFSQBDBAClMWa1SmrhT103fnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778701234; c=relaxed/simple;
	bh=cXHi1semazXSVWD/XjoxFtfRErkRahsfS3n5CgL0XXI=;
	h=To:Subject:From:Message-Id:Date; b=NZpboJeALJCn6NOzFM9H47KsSB4PB/vOvW039R0bzg8/Z2JMPb8a+hH98un+icxUOQhSgliup4Xaqh97ZiJbkRsbrA7VxnoJHYnfuUNODD5FNyTBQRqEqGdZ2+uP6B6vGSr0+wBQdPl1/k/FdNQoW8Teut8cvAbtfvU3LhTpTzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzFSWJlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzFSWJlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB21C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778701233;
	bh=cXHi1semazXSVWD/XjoxFtfRErkRahsfS3n5CgL0XXI=;
	h=To:Subject:From:Date:From;
	b=WzFSWJlZeeylF6LYClANaOqnEjPeMrPk3tlHl+MVGSV4JcdnWlYwr0iTOc99AaDOF
	 UWqzmnxGLpBt+48EyeB/0pgx2UBEGT/LqvpktPn9jlEILE09eodP0LoWgCpY3f1eQf
	 EqPAlJplVyNdTPn0F0UzDgZt1cxFh6ohlDr3g8CmNq0W8cn4zLsWFpJ/ObXAeTvRTn
	 Vnb1bptwuKCQ/SoCaIK7LtfUdVa9gIdsBhR+/25S+4YxLxqO61e+SyxsoyrMXegLd9
	 mAaYNS+dsSvwvWp3s9DksFwp1rt22TFGsJxS/KjPYTOeBXZkJWVEXTmiJEIUDdxQBp
	 bOoVlRCbBoweg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF48CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870123369.2337.7382141800256463266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cbdaad4fafd407e1af15f9ed303414e9cc54014c6ce4e04469f423655b6670
Date: Wed, 13 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778701233
