Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346A81E885A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780358074; cv=none; b=X+kC65ABNBvcSjbz+PBW4YnUpv2Hkz3x+mZpiRofWFMHNybmr77Y/5bzn/RiHR9GtXMVmYQVdhoYb3OcsqE0JgH5YNClWq1bNfCfw8CdZTLz4UrjzuV1I8TBIy8rS/kF33UCoJ9U+ARJhAj3rloYydCQP0inuentH+Vu/DS9Crk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780358074; c=relaxed/simple;
	bh=ednxnnbdKK+2v7Z/9/G8mozRXdkuuUh6KiKmdQPgS/o=;
	h=To:Subject:From:Message-Id:Date; b=TXVsvWU7DBKXmCxTI1YuAKLas2DJcDq/0pHWfa6tXFzY+df+aKhV6dpuZfwODkJFP3vxbTEG9v0+XIUpV38n6RE//jkTpthlRVT9AEOjXRfxG47VVdIBjvZbOM/X6C/KGezKJHpSFnL7ZLXaPueR3+1QswgQtdFZC3L2LOq+9oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIqmoyvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIqmoyvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA682C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780358073;
	bh=ednxnnbdKK+2v7Z/9/G8mozRXdkuuUh6KiKmdQPgS/o=;
	h=To:Subject:From:Date:From;
	b=nIqmoyvs6zN7phy/GQessemSsZfLUHqvtlycjVtB0fiOZS5Colyzkf+cyn7q0kTmz
	 aD4JlLMRHz1xZeanIBYlqUHKGm8pe7NMEHO78wfeMsFU2ZdrOs3tsmVZBC2AdfcVMf
	 FAiDO7+kU4HDy4i01SDhMDaZLTOw2QnSeg5ONOCVZ37v5ISIVfRDwr7bcBReErAZjZ
	 hFf/Pb6F7eGDueBrl3JrR+QX2oa+eS+qnl8VXVf0zUS8dUlj/kl8FtfTTW35DxoPtu
	 jOUbrctjJyERkdh2qYMYPmfgc/aS2GuhU5sJwSfNvbcy79D334wL1R+HO/nEwafZBb
	 dUNRzqVhcK/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E74CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035807369.14642.2463395183620520223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6f9ade06cb09e30bdccb7925a9dd49eb312a4df4b6475b7c1c75e1f9258a81
Date: Mon, 01 Jun 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780358073
