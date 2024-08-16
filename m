Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BF753373
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723839354; cv=none; b=bBnd/v/wbOaAmBtLySJ/WIWZbFnKpdjA7UsALCrgFLqkEPXg6yoqUUHzkF+EBEk3iPDPw/NAnixa9T3ZT6eytj4nyLbHUlqlB7aPNyPbPgJ684Y6ynQOUZHWPf0kYoK1fH1B2/nj7THJXPLkO4a6FnGYRnWMejvk46dLfniSgwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723839354; c=relaxed/simple;
	bh=j12NKqVl82YxJIeMLJiz9D4jYBM7PxefW1Xvzur2Jhc=;
	h=To:Subject:From:Message-Id:Date; b=tIoSMWXQeTxcFrnDZ5K3eZZJ9eaqgH9eic1hDQ+7Jw9gZl4sf2QUKFML/k5yJL3JVGKY5E+SWZ0OUIh+ka2bct2KEWui+IEiGwaKeeNxGpi1xW1k1fokpAdAMS84dxsfSk5xiCLzz2HdPqNfBX6/K4+wOJRLvCyqtK776LksGKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pC3GWN97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pC3GWN97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF647C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723839353;
	bh=j12NKqVl82YxJIeMLJiz9D4jYBM7PxefW1Xvzur2Jhc=;
	h=To:Subject:From:Date:From;
	b=pC3GWN97vGNZ8o9au6IrUWEZj5IMU02fWfVhQydLzp6v1MQrf1+geFmh7Gy0TLkZG
	 w9uaBKkE3wI+DZ35c+cnleUEfVDDMC3zfksHF9ru7ug1eOcfP+9gqD6JLUzTSLIsPd
	 9yIuscihzRytjRW49XhDsz5KRUMFSjri/1tCrcaps8fUhYlKcx82Jxfm0brhDJpxUl
	 LGrLhSSbcybKARE4lTYNxI7MKm1bZW3e3Wsz9j+4wBmv5pr3c9mhvH76iBkzpVu0Ss
	 mNXzdV2xiaV/spavtwWjvgsrkpB7mvbHLFFdPb97dz5OsOCtjDXm7c0nrDlk9IgVhj
	 MbhafKM90G4Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A933AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172383935363.28138.14436340586731979108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec954d61fa792e10e1f0560028900a859b0cc4f3d7e673679dfd403f20829b5
Date: Fri, 16 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723839353
