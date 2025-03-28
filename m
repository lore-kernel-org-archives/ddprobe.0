Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF7C20D515
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743128394; cv=none; b=iSJ71rHIPjC1iNpI2lNzM8PRD1DNdFP1rsJFzETy/npJ1nf/it0qDVRkG8TyZL0XFR+YAHpETBv23q8rakTQx3spmlZc2O8p6jvlUmhoclCByXI6zqeu8g4YaVnXXeSCwoIXQYelbMG6eiRnbvlKuKyGLhg0ibxfWoSAaIjOSj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743128394; c=relaxed/simple;
	bh=IrLotfJsM9kYYE1KZSb4BzFvqgtQzoBcM9zq3p0DueY=;
	h=To:Subject:From:Message-Id:Date; b=HlKjx2NGBywrvdkaGMEr3Tp4Z2DcL/DZXJMn9A9bOKCeHXYAZIRmkL8Kpk7bC0aklidj9GUA034UGZWcBlJ/LpS8E+PuJiSRFM6rRit8LXfhrKxtG7+iFz2eLVceTYH44CmFl9Zwr8X8oxHriIsE34/2cqSNhe9FjWDbiVtBLGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCZKGU63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCZKGU63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9721C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743128393;
	bh=IrLotfJsM9kYYE1KZSb4BzFvqgtQzoBcM9zq3p0DueY=;
	h=To:Subject:From:Date:From;
	b=sCZKGU63CqJiRF49MF8wbJ+Pk/KZZ5Y2xt2M3kE7WhAq7J/C/stmxN46AmcelYaG0
	 BWQn4UGvUbC08ns2WGdsILI0PQsQfsR4R1gRT8XovYEDNsQFkWtBYQzFCo8YRchv4h
	 gInC+mtpCA4OLzV1Atab3Pg/zUFW44zZDJStB5BOiUA55Xn42nu1PLcLfBYUmX8xGX
	 igoODvudMdqTIugcZJVBWvoIh8nzeUYMAaVyivGU6vZ+IJepvgfN1OPdtjw9iar6CF
	 IJRuTW20xDt1bZUTraayBFN02Jl6p8WWuAgGLyOD1r3rrHAavLuhWbq9uKjLtgLqtj
	 HS05hwjI8cknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44B3C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312839363.19608.17618399765611315774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb303abc0409038403162e3a01322b7212893a72bad62840e714dfaea673374
Date: Fri, 28 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743128393
