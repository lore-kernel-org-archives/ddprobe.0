Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B492E8DEB
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785013234; cv=none; b=QPoP/zN6+vF69ajILt3tluXv6Mm2cLJTsrgFsSoI5MmUL7Zj2zI0uL1p9cDpYO5lDq1fgpeOHNXQX1+tCPJxrpV7YSZF+EPpgWiOP4v9D2JtD9B9/HPwzVJyY0GciEYwXNxWBgV1b5uRbQDjEGRgYn/+xU3lM3i+Wys6oOkwt4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785013234; c=relaxed/simple;
	bh=wzDemm1Heg7JJtJMUjuzIJBlYBgdlyj/T0NJTsbRW28=;
	h=To:Subject:From:Message-Id:Date; b=PvO2hGV2HxEN/JW+rt3OJksOd4bWurT3Hs/GCWqm8UHlwGm0zGyj6qHF+Jy3Wr9feOI02Z5qGBT3ATZ3ObMxqKRer8acC2DQCwxZRKMlsapFW5cZG4zNP/KR8isRjHIYQoWeFQgqVVEw9LQs/eNKM4cm9Q4HQRuJTUYEZPaxoTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdYrbU1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdYrbU1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DD4C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785013233;
	bh=wzDemm1Heg7JJtJMUjuzIJBlYBgdlyj/T0NJTsbRW28=;
	h=To:Subject:From:Date:From;
	b=GdYrbU1jEHleOQAxdxKhbF63RSLg9rlhPCoEyuxPVSCSUY8AFuHNHVz5fd18wIhk7
	 s53P8U7dXYrKo4tFOaKsRsrzsfP1U4wRxIKDlrxE+1QtQkflpzEjzXnc95Ntssd8fv
	 CsxViOmM9ZVI42f9epJzD035XWtqjYeRkCVaoN1cbBqzXYPOnwebOjd4+EpDcZ+ilT
	 t8rmSfBrbhwL6AS0LelxAmBAzdisp2y/RwROVzCHQn+DFuHeBgcE/UsZFNl3SPxNtM
	 JNT3Oc+HZIYVIlwrX1kAUAZguqFGXm9JgwsbjveAlBMXVX006BjxmUbLILZ1+9n2T1
	 PqfIjhPqrer9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE11FC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501323368.4465.17005003720521125730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e02a29b4ed38d97db410fd434874bfc3acb326ab994236decfa3c228d7d980d
Date: Sat, 25 Jul 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785013233
