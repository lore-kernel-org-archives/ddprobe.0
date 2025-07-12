Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40F6277CB5
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752328194; cv=none; b=MNO9l/55wkOhkLkotw3emQmx4+2GKDHUDi9dKEtl/s01+TjbU3OuMoIsjq1xqEviXlg9PF8XYQ5TEUdTOI94SRbD0rlj55msSHHCq+Ac6S62qEuOryk+YwrJAwDi6p5p6BHGCJ/ENPqT+5yk/yJLkI2slKeZwB7pMwGEn4pyTgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752328194; c=relaxed/simple;
	bh=RJCTMmrPHH1XL/cLPkjb72LTXCyrwDO6CWy7u08kcUs=;
	h=To:Subject:From:Message-Id:Date; b=WkJ57iBf9UsXu9kvffMJTzsCclV697aWy+CaoSi/Eq2usa554wvjZKG659/VVaPuw1gVTNl3DnOXGOSIGf0xKvTYP3jerDNMT4C1JY8idAAsl+VWCzhJx8GH/0bBjYwIdx/zYm7yL+hBmZmXmPlaNzLV6kloCCROgpd6URwnDVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYTeFMvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYTeFMvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CD9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752328193;
	bh=RJCTMmrPHH1XL/cLPkjb72LTXCyrwDO6CWy7u08kcUs=;
	h=To:Subject:From:Date:From;
	b=hYTeFMvSk4NApFUdgBlD7f9p4+07GsY2O76zVJcsVEGSSqMFeATgy0RjXSxU1So6N
	 nLxHY8RQfpHV0nE1X2v6nhIuWcBvFYS+MVkohywalLC+tv1xK2gKuEpQab/ZdJIBkN
	 8T1D85jqILce/iuthL0EQQMsBka4ZrfHsQQIwr205vWAaN6M7h4bJ7XfV9ywgkQegF
	 IM1Q6U9EF0yqjGisE8MPDld7Ih77uVWbKLpEse4q7I+Uwwwyneobv3ffhoiXYrU4gp
	 c+6SjdAobKUORSF68CSunqr69yawFs7ecTjMiRVTbUOsF144uJ/4YVZy1EttVvPq5v
	 f/f9PNaJqH5oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930BAC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232819358.26193.15933413559377592740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bf0587c96d45e22cef579850d8a0f3e1af49e3fec1b3d81c043af0b8498e77
Date: Sat, 12 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752328193
