Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB9A186E3B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727441154; cv=none; b=leOLCyx1W/xkQSFgfjBLk3/4fO43O0oBFyB8yVN7db1ICNIQO+dNl46VJYH+aibF4IS0/Y4ywhV53+gTixmgDTLHAm1+ErnYl/hsgjO8NboTLpEb14ZXgnXc7lwX70PQzVj65CXGBE2iizn8m8fCNxfJ4ZcrcHLhLD1Hr8kLJzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727441154; c=relaxed/simple;
	bh=1dF/D4cfl4EfuNAKADIeXzCbvNQr9YQVspFZZXMN4VI=;
	h=To:Subject:From:Message-Id:Date; b=UhNvViv5QahV9V9E4hY0W3VKGCFSb9ZLM5c8sEHI/bTlwcqnrMD8uUgwH+Dh4NJLiJn31fvO7ux3uDxwhuLTdU1wYtzRD3lTyv144ARzSE//7q95JCC9ivdM6KKDwHB79CfY0guxgbwzTe890q2wYAa7eTWSQDlTRnbp0UxR7gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WR1kXpCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR1kXpCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8C2C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727441153;
	bh=1dF/D4cfl4EfuNAKADIeXzCbvNQr9YQVspFZZXMN4VI=;
	h=To:Subject:From:Date:From;
	b=WR1kXpCkyLU065rb4lQFR7pT+Ynj+5B0izRJ+L/ISvd11/11ktDyetND3C1lkdIpp
	 R+KfJIS7PgBie0N/BO6U1K9eqx1WWgJcaSBljKIVbJDWpIZNoiB3bBl7PnEX7MoXRf
	 lqgwdwUHOrN6ygj0ZfnJBm/vlbRDNh6JPkN5QxxORaAJwbhkukmDH3W6U5pSSvUIP1
	 xZgqxlTtcL9i2frGdlLPvaA+BLmJX5lzecJdqr+27D2M7q5HO7oQIbC8qFZXZXUuaZ
	 2al0ooEfuPY327l3Uy0BeYPPpehukAwQSAlZF3hITDHTXN0gOa3n2DH8W7sDtWh2el
	 1PtoxJ42/K61g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020ECDD1A0
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744115358.4253.7502964446739451963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f58c7a65b8e689070bf19b0abc02d459d2a3c24652c45f59a8c26146aeabb2e
Date: Fri, 27 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727441153
