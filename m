Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403B764A98
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718916023; cv=none; b=CqvC2AEEXyQ0Onx6kWEBLb1QZ23W3peVf0TOOajipnULosU9E2BG9tBFwRXEBXP5Tjz+zknLD8nOzXalz8hMJmy6bFrwB50xYVSx2SnGuT0PzveV6Fr27KRMuqiPjM0iPv2Fhaf3TC9X3eaCyWumbUsoK4/SNVWIFllUb8lNVSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718916023; c=relaxed/simple;
	bh=T9MD3emrzlDMX+QhhRwesSXqLZSmhlp9V+mHrpXZfbI=;
	h=To:Subject:From:Message-Id:Date; b=Y92acx3P1NV+CjCFw3t4tMNEYvDP/DqPhxcMcpeupygeeVbqlwVBzBpVfnGmMNHme+qfYVNDKM6pSq3hK3cqYuaPE/o72lRJUSQ8HD5LYuiZA7QAzkuODZ3heTF1wlWTWhCb0hXYdAJNRilvkbhKTFnP4dLfoObg67anasbRJsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psug8rMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psug8rMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA828C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718916022;
	bh=T9MD3emrzlDMX+QhhRwesSXqLZSmhlp9V+mHrpXZfbI=;
	h=To:Subject:From:Date:From;
	b=psug8rMUnXFQLShxXYCmOpSFqlkc3hbsnrmEJ8wBL/Fbks5fD8LeRumlemt3LP+yT
	 uWrsTHaVjuFDIGVrzw0rF8nuVYlVhKA1KhnpEFnGqrUZ2VyGSPOLK8QhiQILuLc9AT
	 w8G4NHE2t+Txb3FDX3+O0a4CeB98t9W0jqU1uzX2shY9hlvbMDfp9/jWebMXCCOYer
	 UnoJpIXEOFSQuunRYv1etw/MD+Jb458kQdpCl13eoxaK3EA9FmIcOoT+dKh5/zoWe9
	 YiHFFeNxUFAA09h3qSNYEft0k5sIvXsimKXk7SkpRq2qawF4agarskULsCP2y6W6c8
	 HR1AnGmcD1uHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23EBC2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891602278.14451.5859594799049483176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443e224ed3d722cb1fe82f60833045e441a934e37f852906ff602750d6469e04
Date: Thu, 20 Jun 2024 20:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718916022
