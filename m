Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3F535C6A7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786650634; cv=none; b=UXDCEcMyZxi5BScS7Cp7ytib8VpZJASMiwgmGrrni0gnPED7ZHMryFXksbhbPpYbmVZ6u4FJ4bzQb/83K9B+OZwtOmYlKZwd1wECcLYG0mFP4daux51qsTztkqaGVMFI/dbvMX8F3g90FLBbZ52YuSi9U5pYHcHOu4p3lyhANUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786650634; c=relaxed/simple;
	bh=guppzlWRpCk23d0fjbEOFCwJQAB2r5a+LYkUsyHBs+Y=;
	h=To:Subject:From:Message-Id:Date; b=CGxxg2aSGi9xieqCCXyhHMWj3kNXTuGqGXoevVii8fBLsYazRyg5mbwTnVsk0FGB4k+Hpjhvb07PSyxKohbGLr+7Dn73ojmlaAIB+G3LtznVM5iZTUm6NvMGM5kyhkTWQjzLcPoVNwU92tGul3EU5zFFliKn2XoVNHE0O2xhIrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9zv7feH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9zv7feH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BC6C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786650633;
	bh=guppzlWRpCk23d0fjbEOFCwJQAB2r5a+LYkUsyHBs+Y=;
	h=To:Subject:From:Date:From;
	b=M9zv7feHJL35SMkLYlyJ9vvAZgGW6ZBB0TPCnWvOo3Khf8WDoFCsnVl7qCbkmNsrI
	 3+5gOXIpoT2fjoG+JUozMFUCaM1VXRVp4swX7phc/rsgXQdwpuOdxdnQBFvuHFEqTd
	 C1divU4ZhF1NLEm7BdVJYjaLpZVuMos6TPovOmqRcBICEwu+Ja3eR0wBwkkzHbBxlM
	 7vnU2IFwXcuoDtV5gV0GEch2HpSe+9bax4+k/L/nqKYDuoOL1ZP/bJtP50smfs+euQ
	 8jL2jDQv/m+ANO9WXcZ+WPp7aHabmoipWYcbu2WdeKIwqB8NWKn/bk3L/yHwGPHGXS
	 luJ8mOj/csisw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE58DC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665063369.22390.17432508968452599477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3fbdfdf4b2be7d99d6aaebf3d22fe628b198519357641664d5f0a42d422b14
Date: Thu, 13 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786650633
