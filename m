Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C8A137923
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782531514; cv=none; b=TgipyqGOsfdJ+qsemY2T4leQhnc/owRI94bC+n5Um6wP9Fjp9QXOU8qviPWHyNceseG5zOzMDkxmAwvYhmwe/Yra/SRxk6MGqk+5Sk3bnXjbGMv1z10ussilIyHDT/oCeXneGcNrHI7YTAmSXG5y29oPyZhxe3KPrgsLP2UF4BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782531514; c=relaxed/simple;
	bh=VgjeqzqQwjCnyQ2ta4WATaEfW83H/EYLjiCNXWBIxck=;
	h=To:Subject:From:Message-Id:Date; b=reUwj/eCduHsctmXqNhiq/9EgDYNvpKZCCI4ihms3FrD/XuBq/oG8GQvJLViSIyGUpY1rbD8hxaNCZYyX3nhyspQbH3q0rG3vBTnfrVylFUPVqmnHlRZHAhRgmLhKZfueYBE8VKBkdda4tIlcfNaMNh7I+zRAXjzoADtgZhhZI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfizorGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfizorGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06BCC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782531513;
	bh=VgjeqzqQwjCnyQ2ta4WATaEfW83H/EYLjiCNXWBIxck=;
	h=To:Subject:From:Date:From;
	b=lfizorGKxffYrcM8J1+zXW1Jk3mFXJZ5ai50QSQ7UUuW4Stx3UWciiKV4brVp1eEd
	 fsZy/YH273U2xbU8tsq/Y+vjAF2rW76zX85Vtz0wpPEfU+wMxCuqyFlFrv/Mw5qZgw
	 0MocVUBNOX4Bo15GlEcia//EnXlARjefBsZhFIV6En6k74lm0MYmOXe3JzXFQ1Sn/N
	 VuvRZkYObSWin7CovRaPkNip1O8Uvd+3dl8WB+31GsNymIgSWBfCSRF4ViGRemM3qG
	 drLKKfXUeFKj5dHs04LsVmaTPJBmqoFJYauXW222waWhWIBZ0RUxVJHrS+PabMWtKh
	 o2Zl3051MAUAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B603DC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253151369.19564.17699627275362809906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0790e16bbbf5abf6e982c38cdd2355a2e6e552c9bf3cf711571ff1f273f148d3
Date: Sat, 27 Jun 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782531513
