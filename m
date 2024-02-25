Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BDFD528
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708859897; cv=none; b=Jvpsz7tKbD7uhiz+cSRBlNy7Oa36Fi8HRvLidwmoh4TUijjt9elkiS6A/PjX4bS3+vNqdy/rP5vhyWr+cebW+SlBgCMbfpci7859HZdPCrT7kpyP3hDjnqqIX7Gy/VWDYOhJZk/u0B4pgxOSDXRpGWJrIM2RXCkxQBf4VOY2k8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708859897; c=relaxed/simple;
	bh=Qw5s0R9q2SyEDibtZnzuTQvqVWpeZU45wUh3tmdEAk0=;
	h=To:Subject:From:Message-Id:Date; b=SGBqU0m09/2pdRHYerLV0ktJIujlxuBXnBgtN3970G7w6W5c+b4QqRRtsltsPWpS7WXaQTmMSj/rk5q85AWXNKsju8uTFWGyPPpxovcskZj7tY+ltLvRA+az16Ip5jsq/tgkUOfYQVy1ItGvbqx1g4YPCOlL50bEnt7YwsDyBA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHZ1lPWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHZ1lPWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830A8C433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708859896;
	bh=Qw5s0R9q2SyEDibtZnzuTQvqVWpeZU45wUh3tmdEAk0=;
	h=To:Subject:From:Date:From;
	b=FHZ1lPWCoDnYOkwYwLtvpFg43ADZL0Xy+QK3GIP75a9eHzEvkIRto5v5HBktl62DF
	 SIzOqfQkMvzkcK1+b14R3w9mL3ZihKJJ1ZPrQDd4z7cmQVqnPZLB0hz61XHWArBgJn
	 tQONExuCHjSDIC2H73vXqz+bxxNifD1oCHfDh27ycX8FEdFCbhn9u8Ju3Iw2cQVVWg
	 pOmlEVeTiRyN21qQQMFSo4h0nKBPcnlNQ6HkNn3HRA7nK868vVc9eYG6DRJNnq/3ya
	 6MHeteaAxi0sL7Ob2qp2NbaUL8gVC1ZLDggr386f9UwIYkTk0qxqvYOfO1hyzmLHOB
	 xwlhkXPraHi0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6658BC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170885989638.31155.13456839855673582215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8d3da76963df6c66ffeae69f3d26ce0fccc2e63ab0a477a3af8444b5a2e793
Date: Sun, 25 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708859896
