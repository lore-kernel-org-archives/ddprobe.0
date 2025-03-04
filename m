Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32358209F57
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741114734; cv=none; b=UlR2HhG6e8C+ajZoyEHcR0/IRsdxADjjQgWIcBZ53EqKNIoxhNUm+LIhlNfUB0ZBTkZNKgF526oRLpDWjVKjSG2nlyvTbSuZhbg3Cjsm+Et26A2ZyBCxVLbOZjX4WTXP7XCG5+i2Lpdhdu2aU/6MBXSw3oRkwurC1HJS7vI/hi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741114734; c=relaxed/simple;
	bh=P9E/Jv0TwtAdCcN0mQj8jtB5aA22lWlPExWMPh2YAds=;
	h=To:Subject:From:Message-Id:Date; b=C3n7nRHYjpiJMpQrtHZ+STxDIi6c1WyUjBk3VR9s4XiAJAdarR97cqUvZrwPXkZ7YNzHAkPK57oZmtmvKT/wzrwwz0snml12Tsf0bddywyUR6EtSRtXjK4fdUb5YXlWDTdrzmkRM+1w4WV0Md4LZghdmD5pz97xabZV/tXBOVpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oswt/a+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oswt/a+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11C7C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741114733;
	bh=P9E/Jv0TwtAdCcN0mQj8jtB5aA22lWlPExWMPh2YAds=;
	h=To:Subject:From:Date:From;
	b=oswt/a+Cd1GAYfQf2dGPDlmSoB6X9P4brTBMMQ+YUvzxkKOEq1FswvxHHUHHx9ANr
	 CS0WCdnBHPAQITfnuk5T6tYMOxWF0VWeWfYDoEIHoHBD2Lm6FG6pMCZIt39oFPK/K6
	 hfiJeenl6Zh14qgU3LULlafC8lGfRUv7EhG8aL5AzByFYDtv/nugrNCa/GJF2h91UL
	 +Sws298hNvfD/UwDX52gfZvYdDrIK1G9MQEG0jJi/41G1nzDkKpbMxLvL2tlMVlLbQ
	 qOZ2fa1ZxQTSbHDoGIhHSDB69l0CstXLe4fE79TV8HyNgQkGNNHClBC2wfBLAYj1RJ
	 R/8RJP0uBxSPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F420C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174111473357.10200.11765560916604728158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3408671b34caabb2d4d36daa1070b630dd7669824b4d1df8020db32b94f13c4b
Date: Tue, 04 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741114733
