Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDB0476044
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787766635; cv=none; b=bydeetJwfZ7gMckEnVAl5Tgj0ZFRDEpWJjFSAhCZ3wI4qYEvYCB1fAwbSqem0dA7ZnPES1B2gnPeY3NZWElmMBqNMOJuSeY8l1C03qsUua2LX4B5x4bgjSDqYnXaiuBSuqSwgyVrFQIXwTy2/yCWW37OKphwf7lTN69P3EDdn0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787766635; c=relaxed/simple;
	bh=NBMRGYakNNtpChNMkiJX8hWDhjnuCgo7KOAzf5M0tpw=;
	h=To:Subject:From:Message-Id:Date; b=MUbABA/UPJINEwNvGRKftNMRvVFMmLVpnJDiMdcCeV4XIEH7uAppgv2jU4iZDmNzI0TMSdYVlxYWlXMZfVdyt6oTu8v/0PDhRMEGZjEabynHMP5xjUcwl7wvd9eev9HRDC5MNS5DLaqbNzgsEacjtVp4p49EHbeS2Jf5gAjBGJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akteur2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akteur2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA21C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787766633;
	bh=NBMRGYakNNtpChNMkiJX8hWDhjnuCgo7KOAzf5M0tpw=;
	h=To:Subject:From:Date:From;
	b=akteur2T8sUVRLqpsUxiM/kaC08BWj4lGIAMCEWVnUmBR36sLxxCKp/x90gifX53i
	 edyXGC6+B7m4ZNWPR8TDjj0xjuqW5XCgrcmFqo4KLrNTZGxTYOg6s7oFSCcA3HWpPV
	 E8cR3vukW6C4G3dKnrh5yEE5RPMhICVldiMEyaAYMUttsqxwcFIOsclqkxDcs+UP5Z
	 gmihGELIek13GLpJBl+yDldxj/LpMPaJiBDG+JHf7lT2bLwNTLZNs3i9Z0NY6eloTA
	 j1V5Y6NUTqlulCePCXd7uiSiHZOMO8tbUbIvsK0Y++9Y0ksh8oaXjy9a5liieSWEZS
	 tJIESy2GhMC/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2FFC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776663369.2238.5468364574313820257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f11e8ebcf6e1c49bff392c6e5417ecafc44646201e310d2356debd75b26399f
Date: Wed, 26 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787766633
