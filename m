Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E12C26AC3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777226854; cv=none; b=Tcyyt4j8kOx3dwkDW9XwtEAK9++6jacJKfU8Yi5kVwfQQUlNe7AWWaiwU6XbXOKcqFuOCaeYcF5S6W/qZ+PRQu41BXMM1Y7vVW5bZ5aqt3+COGg/hkbC0gEfV/JGKmIxgkp2GW5bZzMxcE2fvQXGTEgy05Is4/1K2T5+XjLjBd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777226854; c=relaxed/simple;
	bh=GEjfKRwAULPQVe7F83n94/NJp1N+S9W91aIerE3wQRI=;
	h=To:Subject:From:Message-Id:Date; b=hQJh/qhDXJbTOSm2hPMnrKeFMspAntzQmDDrGCPtfBqbXOM7clpgHzthXQ8CDbNqghCqdx0ddnvw7VuuwDoRFGtaOMXxJsx9oiypNsI3Lw+5UZg0yYFqAsLYX5r6TFRTYNU0WCYKz8fFEuZl2tc0yJ97Ke1OWV01sBJygo3Lclc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHlMvj3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHlMvj3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC93C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777226853;
	bh=GEjfKRwAULPQVe7F83n94/NJp1N+S9W91aIerE3wQRI=;
	h=To:Subject:From:Date:From;
	b=gHlMvj3CphWSw6nPvetcDs/vlCblhlveubN2xUskHKxXNoEYxD/Bs8o4KQwm+qaV7
	 zwz7bVczkWEBx3DFNDRqgnq+BqFFRcSau3T7jqJmaFOz5kHFSTSrEXd9x49tgd6Z18
	 3mHPgXR2tIpyReU9DhVu20rjkPYPU9gcx7NPoscZ8xoDNhnh0C9+hdE9Nb23HRVi+a
	 kcpr/8W50r0uRT5xkTkCjZIfvmGJSuC2SisnPxoWjtMSY04pYCNymD4pKH0R8+KN37
	 DN/awET25V6KowlTjRkcNYydUQS0zuOFStg2MYJMXf5UlQxJeTYJjaFaWw0PYkeHU0
	 edipb8pHHrdWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC15EFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722685368.8598.2339855529160925354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539538042a1b570f83990322b19e4fc8f9593db8c8a21be9f1d4896b2668e1c7
Date: Sun, 26 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777226853
