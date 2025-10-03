Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172641862
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759478394; cv=none; b=MGmSanjnYfi/OS+HnxlHzHcImsE/Q0qf1NRnrXFlkJc4hnxEORcSFdLGmhzQ6yiUpVN04DXOkKI3ZYoxcWL/70ZczacxYv0SbHpRmHf/M+ifrepHJEas/IH7r2XVjoBOZe35/A6opXo1IkxORx7+DhDwdgSBToFaBfK7AITRm7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759478394; c=relaxed/simple;
	bh=iWvLnHye8uoVbwWqQ56yPOHtSItm1Od5b/IRs0VjaYU=;
	h=To:Subject:From:Message-Id:Date; b=P9BTXP1CrJQLOPzjAZRBPro0CidEhnGCxFciid8cO6RxeP4XtyYCdrD4WZ4j1iNHI1sX56oaIIprQSffGUE8KWWQS9Gj8fDwUzwGPmyBV/KdNqrzgqpjXmbiecyMPDcPEqi/ti3V+dLnFKdqlO+y5AlgbMhGAhESAn6Xhq8BM/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWBcnMSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWBcnMSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AC3C4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759478393;
	bh=iWvLnHye8uoVbwWqQ56yPOHtSItm1Od5b/IRs0VjaYU=;
	h=To:Subject:From:Date:From;
	b=KWBcnMSpB3roItVi+HX6TeV0LRgwt7hU+v1QEqOHItmG/7GtetRSpMEZLHcwqVS36
	 sH4oVy6KgYoVDg0gQRo99Mi/me/nottPSKeaGRsUPWfuWtGyTKoEOAf7HGpBXok0MT
	 AGddWP7YFfxV4RX6r03DuWuj7ZOVT2smgrNMU1CeW7s7ny7jQT2ULg7MvIU3PFrHoE
	 6hoEeiTvevlEWE4C20n1DCyL6PhLxXoR8/szOiDZwY56lA1BgfUYaBg/ZykjHi+frq
	 Hg+3T1nu6KnW2osQjFwGlUXMkNYmCSADvNBoogotVfIsoR9cHUnshMbYO3KZHNVCE6
	 4g5MhH+376V4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94419CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947839358.5248.13007823090312104198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73fd640de7dd59b6ef266c342cf8abf96ea6ded03c55291f26e2aa0365470602
Date: Fri, 03 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759478393
