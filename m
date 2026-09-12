Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F792EC09B
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789218634; cv=none; b=UUnlrVZnGQzijVbb0HnRWhvwRoaomCIXWc2NdI3rni871sOYD3uS2XtGkIOkxU6aiTF0skUN65TLtbEH/ySYCogy4qTIshNKmiAcPIOlmpztBL8CIL4HFVvg3igdSmi7ubDTZx0Ggo37dbn7mh25Vvviqx282UHCtQUZFe+cyoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789218634; c=relaxed/simple;
	bh=j8aUcJcMtRTjuOCM3aKQ0u4V3DFzmiaUMISgJW/Qg/Q=;
	h=To:Subject:From:Message-Id:Date; b=HSP5RzmUYxuiEkyygUDmrjjaAUMp4syfjIfBJZDUWHLeAkLaVkAlKHUBhAyHbWKZW8lBX3GTrv7bCfF3Pq23ptXgTPKcpwcLwwBZDpCEoWZF1tikzpREsUIaR27W3niTv3FM0F8hJJAdPzCiA/+OaDS8sxCTQG6VVkvF+QIpXAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umrup+rG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umrup+rG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0B2C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789218633;
	bh=j8aUcJcMtRTjuOCM3aKQ0u4V3DFzmiaUMISgJW/Qg/Q=;
	h=To:Subject:From:Date:From;
	b=umrup+rGWrIe8gWVhXZcjfQ0K+xNYgxdhIH2t39BQB0IzIfa5wOPec4qS2/nfo7R0
	 ssh6w3AtPtJNZAZBN+/yiencwNsWsKWKPBSC5uQdA0dWrBV26cz5w3DGx2jp+bB1vB
	 NvWQKHvN0ULX56C0u2714r6YVDtR1fbFcmaVxfnCVcRBsrfx3jrI/lynDjrv0wuAF1
	 1tmcoCWgN7STRS1ICHRJ1Tzf0YaSe5H1euZaCA5KbrFWFp5KYnh2woSd1V9ftgN8Xm
	 WpaIB3twNrKXhiZk+VTock9e5BaZrXHRSerrj0EsaBq/p2UUClR3saHRnKdJFP6keH
	 wBFHHFYbDLLxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A934BC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921863368.22592.3566322201896652828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb0d7d4f785791eb8edf6cf5d05aa9bce943aa8928de20069da53739f6a757d
Date: Sat, 12 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789218633
