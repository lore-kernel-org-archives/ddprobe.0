Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122C41B4156
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768437834; cv=none; b=HzP0UPCJc4D1mYiOqMgECufTdOdmrOTB0lDioElP4IBluM6HbaeZ5I8LFACRFC1cCQBXqhsho2SP0s1PbMkQ8eirkUFNsuqhcz+OY/QOO+TVntMmX/to2hC6vFoYv/sD9w/c2eC8SvF6qZKq6f5VTB4/c0JUKW3Gl78cqd4hK3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768437834; c=relaxed/simple;
	bh=0s75zTHXBBd/Tyl4ntb0Xu6pU33F8J9NfPXtIfZsHLs=;
	h=To:Subject:From:Message-Id:Date; b=YM/ZoSZ6nZhwCVXCLr3WUBrvsbTkm2aieWCz6v2YZSoBmsN5tcYtLHuxdkj0/Iq0BpbLD3ok7AE4+clxovM2WZB4DC3op7zwG6blcxY7LdlnCGVjqsAbHRsd2VBYZYHSjtDIQYLTqLnDaHVkuDSWHfttcKrsUOgzC4c4uaEDqpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8qeYBxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8qeYBxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EB2C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768437833;
	bh=0s75zTHXBBd/Tyl4ntb0Xu6pU33F8J9NfPXtIfZsHLs=;
	h=To:Subject:From:Date:From;
	b=W8qeYBxKtfM3XidYSEVAKzB2yh7lfYhtd7JdZ31DCYdjAmTIQHUymR6mzzpjHpQvL
	 okzF/nwlTI0S6+aWEeNkURriAF5+3LdMunRuOnsYt/XCJzgIdcAEDEMXmwDAb9jmS5
	 paBFZzterHMfQ1UP407He3fV17K9pKlPNz7z/ZgKM76zRxW4fYLwcwSH+dzdD4S48B
	 j96tL+MUJrUa/RXc/542myz+gAFSwcCVroNwcr9PidmyGpYfhNDvCVzRZhcWduhfJG
	 oI/plTP+F0sEAiVfxcaa6L3/n5L6mzH6dRoNN3IZU3cV+AiEFNrNSdaErXRNz1C1NW
	 eKz0fTAVTLPyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C1D3CC92
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843783358.11919.18407918956071899652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f749eab1488f7602456dfe12e29f86843714c154e0f2c8f70459436dd64d2e8
Date: Thu, 15 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768437833
