Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145E81C84BB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769233434; cv=none; b=P/1tuPkSMxuarYIpBhp+/KqU/3NwCBaQs3Tf5+QSYm4lEeFxnxqCLTj0yuOIsduYOkofSXic27cbsFRx3dW1nriS4W5CJj8F6ECYh0fiGngJf7yIhGbpkpzue6/SpMpXSbT/HDB8XduxrfoheNJG5p5nYmZodvkBcxMfb49WgIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769233434; c=relaxed/simple;
	bh=fP+gMoeo7FjhaR5u1BB4Niyf+rYuH0zuw1TcklUDVdk=;
	h=To:Subject:From:Message-Id:Date; b=f4rtFIwnmw42A+Q7OQpRkQ2PmRwky3gX8dO3QN46NENl9fGvqVs9BHetA/h0Fssb7UmPPuasOIhj8flgiLZwW/gVHx2fADwhNmyVDTgQcafx36auCE6uHdH4y7e1v7v9ztpqDxPC/wKmpp4ZJhPi863cOnmIg82YsBhDphMegus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfv3d+ai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfv3d+ai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FD4C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769233433;
	bh=fP+gMoeo7FjhaR5u1BB4Niyf+rYuH0zuw1TcklUDVdk=;
	h=To:Subject:From:Date:From;
	b=hfv3d+aibO5lHD3kfYn6c3R3IP18qu9qv837F0JWwKodr3RK3z8X/gf5UxBaaRajN
	 8/o+JLJ8JWY/gavq18Na0ilx10fJIqQlsOJhXMTuplrdfVxmcj+N/MSF5/7cXOtYhh
	 9WhSBwBuvhdPfnxNMizf2zNebvtc72ChgA9npRm31n3AjFDrELmJdGZPeSaEo8fVuM
	 6gxV9DqPlDqCnY1Pbe/E2jW68eISBQdIY5Rsl2qsCG8rc5D0Jo+24csUQJG+xIY4B9
	 GrM0peCuig2PVlBAN8YxYP/XhN2Lk52Wh+ebxS5wm3UOSV+8q+pQMY0S6zgggmbcof
	 15unaAqUUS8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C1AD715C9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923343358.4472.17226396590489857584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0541d2e182537d7a3f948e6638ebfded615788bb273fa0a4678f3fb0f1a18e25
Date: Sat, 24 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769233433
