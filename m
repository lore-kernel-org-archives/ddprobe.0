Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3EA22538F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775461534; cv=none; b=U+aV3cSeRisYxYQvgeF/s+8Fg9KEKx7sHNuX0zb1E/U/hQ9VQT5JgO8BcaiHRU4TDIHK6STRcqr8h4L34XYorL/0FU+z+4Xs9dhgaf+a0XEvoKO0WgxzX6M4gswC0R3v5algVZGt50A8lK1X0QB4T46xXgwE8Ow+diZbidZw2uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775461534; c=relaxed/simple;
	bh=GTXxwbn/PXlbvGjpVzqZI1xO1WJFEjQtsNLqUmxa5yA=;
	h=To:Subject:From:Message-Id:Date; b=YKmRsVU37mLIT6xW2GLRiDnuHpXNs773DzBodeyOEEAxJ1ceUdBl1hvB8y3oXfO4FvADjmptG7mP1HnbOwAQuPbPPd9nHQaucU+ru8IUmX8yMllDQnktVCSqpe6+hJ5Fco+7h/Hpld//Y2WKfZoR7aDvWnRnr2tu99Gp4d0x700=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo1iVKGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo1iVKGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA40FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775461533;
	bh=GTXxwbn/PXlbvGjpVzqZI1xO1WJFEjQtsNLqUmxa5yA=;
	h=To:Subject:From:Date:From;
	b=fo1iVKGrNubMlDavalwgG+VqlexRInhP7GYbD6ZCZ803W48Fmk5I/YlQNbOnfxjMI
	 x+lGA3QxNW5zxRcj2xOGR4mNeIfykXaOnod82V2+4py0pvh7GLlN8NK99e6I3aJXOT
	 vSqNLfD/5hzXhNLbZ2a+5tGqg6NL7OSdQE7o3SDoQS2dRkcitr/2yS3IEED4M0/Ye2
	 3Km0A2peE8TA38vq2B0olGtl10Kl6XaNiihLuqQk4jjQ8RfceJV/X7tmY4U6G/fsBP
	 4k4Pu5Q0JRB6wfcAa5cA5IgEttzf5bvtFryqh9kR/sa/RvN+E+9rslidbPzYVMLus7
	 FtMvUlIGSXmcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50F0EF4EC0
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546153373.14854.11475254201795103786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26910aa29a1e683d127b5f141dcceff3d3e279df5c338d7e3100179e03edaf62
Date: Mon, 06 Apr 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775461533
