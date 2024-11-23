Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C02C195
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732382754; cv=none; b=LaRPFYtlb/dI8plVGKUIbYZH3o9KyPoY1/nibsO7h5ar5kJ+zDwoyunoEKkC/tb8sE4ePD4fdHGtiq1sG5qMKWOxsFSoxDjEOJy9o4bBn+1/F44tjK1WaHflOEngI/uzBlBzcpHBEs1TT5F2ffDlzSqBqDc9cK+qi9Do7h7HPdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732382754; c=relaxed/simple;
	bh=xbRzLx4t7sqJUwaMfprvZuimQak4eYFKGsGdB4q2HvE=;
	h=To:Subject:From:Message-Id:Date; b=kLWK6HHmrwZlModDfcpPDE6YVJNchous+ihJ9ECeM7wcDjRz29QU0cadkUbvuEtfcnStU8Zisa6wpgLGALo/BOh3q0R28+s2M2ueIeaX07Ov7pllLQ3DZfk3v7CIpGujuJary1o60ccUlEMcNoAJvoaHpUhtFa2tjkUr9mRiXSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dr0LV6qH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dr0LV6qH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A968AC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732382753;
	bh=xbRzLx4t7sqJUwaMfprvZuimQak4eYFKGsGdB4q2HvE=;
	h=To:Subject:From:Date:From;
	b=Dr0LV6qHihMw6Vs7AkLwgX1EosLAE+rtlfICqBpuRdtkSMykOAE0eN1HrtYmdfH44
	 mR1CV06gBIKOKVcGgICcn1uOP/DVKLdRdeNQJB2l+6o5WS5KkXPT6c9Bo++hbZwGh/
	 wJquqFzpiB3QcW24C2ml7SdgaRsS4Xke6d7GJe+dquPnCy8YO3sDBI01ZDTUrnyzqR
	 9KEPJH/z1nJi5AL1tT75Qvwo9RFZkOQM6jifNwv1v74oo3OqygNEOOf/9s1e9PomVz
	 uDuAXBnTVRwF3Vw8ODQ2UqwXZxSX+4O1nmVfJIrcXU9Pqevc/RHRooFEyGy92+d3bs
	 GlTuohbD28BVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DAD75E5C
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238275358.31161.11162203010530335563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf09340a66694576c0c27fb0bd8e886fc59b36ac8ff5f0bf504ea5f9f776340
Date: Sat, 23 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732382753
