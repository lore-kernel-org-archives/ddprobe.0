Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D52C4071DB
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780757074; cv=none; b=OO3FU965Lh9jrsZvEH4Adwh6KW3ajW5V65vsmfHN8FRp+E5Zjnqili6G1J1DX/CFcjrHUH7eeB8eohsW48+cGMvg3hUIm77NdDHKhr9rR7okdzZMfvz/zDX/hGhrlf/YEqblwwYK7R21eT0hEDLrG5SkyuFaaDa4OeUly76jDcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780757074; c=relaxed/simple;
	bh=NfQW3Nr4OIuDfgorpdZIubAu3T3Rco0QiE6akYsuhJ8=;
	h=To:Subject:From:Message-Id:Date; b=TqMI/pGs0kPFYzNp8JlWxLeyI0xC9ziKUAjedddiEOwCEZbK35IjNhtYxNEZscb/lPSwUx5Uz2ZCNJoTSyXDkDN13fRRhSWcFgCgl9dq5gDfzfk2LKB/s5VqrMo+UJMbfpoC3zczEpFncoPsRbFB825+3hS5MAutXTmMFc/1eSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBwZeA2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBwZeA2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1973C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780757073;
	bh=NfQW3Nr4OIuDfgorpdZIubAu3T3Rco0QiE6akYsuhJ8=;
	h=To:Subject:From:Date:From;
	b=fBwZeA2dG4RflAUDU8DPyQ8fKyGVk6c5HNPcMH/HS8GmPqjO7/JwfAoR4xWAN5uvh
	 SRJQUiMtuW+NMSzo+491dIMtCV2HDYul77SztzZlX4qyIf2lW5FhnrvTQ7b/ewdrsY
	 eGXKtcitZM9RweHu2vTW/5p11pEiGsBctorSHWrWeculkMT+fWiSZYAbjLUiIUFjI3
	 XxGQNTGBWi+3E13267UuO8A3EQoydn3iXJTOnI2zuKZXQMK2xaBimmpcLrcyt7/8Z/
	 j2tUUaGkdl40TQ6WuQJrb9Oum7+Gu/jKXsH2m6Z0xpRnbvlCMhboQQDAZ/fchTc18F
	 WTzHqFI8TUFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A65CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075707368.12947.3314807956353245723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3299b267ea25e4073a1d1100ab40ae2967278d3e6e2badceebe4a3db38531cce
Date: Sat, 06 Jun 2026 14:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780757073
