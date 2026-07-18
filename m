Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4217F38F22D
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784386714; cv=none; b=BfRMRdZ5OHN3Ujl1LB0WylYKAV3wH6yr2DGfxr/PeGQ+SqxrnLxV7hZt7rcmrCw+R9hNKSCuxjD0te+hC2hL4cBAFSzw5YSeX9yI+58h4NbRRiTW55w5+J+Ej7gpv2EVgRBSUe/hvozRiPaC7KCYVTcxpxltluZDLMviCPHIbwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784386714; c=relaxed/simple;
	bh=wxTDaLxmqvaU6nELMHyyNETykvkfnkzTO1KhU+sOeD4=;
	h=To:Subject:From:Message-Id:Date; b=se6tmh5vaxXbpwY0F0udewVfXssWhr2migATHHR/ifGCQBhMqDyfq16ZJkUaxpbAYWdCmdTeDXrhvScLh6Ni2Kc2d/B4aPwiFEn1nB0GSrORsn1cRQqeQoUDEMOLtl1L48eB3lEgX4a9JIB9cz+9Xr5zbi6oW67p6NWtG6vejOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOVb2SXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOVb2SXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1850C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784386713;
	bh=wxTDaLxmqvaU6nELMHyyNETykvkfnkzTO1KhU+sOeD4=;
	h=To:Subject:From:Date:From;
	b=lOVb2SXw7EnIQvqnS5H2m0jUI+E+dibNxIH5cglkrIvyJ2mppXocsvUKo/Gm//JWk
	 jSqNaW3eLN2YFsK0pFYISvEObaJ39ZINV4ZIbGr9dFZWirTO34b+YD2ByHJxmUTxae
	 tKJrq+XavavG3VYD3t0uWWM1Lqikq5XU6A8u43o06FtT+ndc8TyPds8osxFPqd6KaT
	 z0hjJMcuVHRSnaYL0joEZ3wABAw+Ueh6JgAagnVpHzJS3Lrjhga1b6J04GqahG5pJI
	 5OiJ1prm3I4XBXkGR69we8nKMqRPcdklcgBMX33sGSIUpHv3/qZvk0o6JqX9KgXJDd
	 4LOj3sNGiGO6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC7C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438671368.25975.7697022822138258460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7806e2a78a118330a987cb407bcd76ab5b9803fcb7d3d20ed6ee9a850edc5dce
Date: Sat, 18 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784386713
