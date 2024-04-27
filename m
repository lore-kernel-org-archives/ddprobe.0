Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A539127E3F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714258943; cv=none; b=d+FAn/MFe9rACmeGMpDbF+KCJDQvIkXm/cwuybsYRThasV4kwvPTMJZos+nafhybsOHrhnrgDGSQLf+ifUjkM8wXpq2QuZNtFflKaVjNIToz2vXzsn9VwKgevsK/L0Mre191/PKNBnhp4/hEjUxaEkkhBcfgCELnkMpNbOsQHH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714258943; c=relaxed/simple;
	bh=iQGeNRORciTDutjuSCmDx4ipmgLNr2jlT7fW1lFFjf0=;
	h=To:Subject:From:Message-Id:Date; b=pV0f4gqob2tb3JmqK9Cdz8gnvWKPini93VdN+BxRh5zfoa+ozScrRjv5/Q875xz1UVU1+QjvfxZ97FXrv4IrWQEVxYlstqWmIqiwa2zXpYhb80Vj7b3HyqDAEQlbx5LV3/u64jnz1gVxe1gLdUaJkHsVqx9TNx9QGKuQPNt16nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrSVkmA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrSVkmA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8059C116B1
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714258942;
	bh=iQGeNRORciTDutjuSCmDx4ipmgLNr2jlT7fW1lFFjf0=;
	h=To:Subject:From:Date:From;
	b=OrSVkmA4wOudElnv450H/UTFwoshLdpo8U/WVrMft3WtcnQ/7IIYTQWdW1VSo/6eA
	 DpQviJid9grQgmX8OMRNQXKqAM0Se3dCpz6xwhwStlJ67jamHDDW9Yj4AB5pLn3HD5
	 drI0joW6kAuE+2Iwnn5TghXAe/QRyB7CEqss4/+tJH/zC9RZ9GQ1pQRRcYXcymMIz0
	 FUvx7ibLmHn8hmf3WGbu/f/UPkpRHLmsO6GSaLLFBaSjdXzwHwYFAGhyxcelZQeroS
	 EoM7bCOSruhKwvOhe3APtDif7R8+huUrm0Y7YscIZCytJW6aBo/6MwdG8NnYiUMvKs
	 wt4aPT2eqf2nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D46C10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425894277.11040.6099481855143341737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d4c263727e74d35f2f5005369404929787d3561df6a1c500184b95dcc6017b
Date: Sat, 27 Apr 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714258942
