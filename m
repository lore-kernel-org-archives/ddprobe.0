Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB8822318
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721065523; cv=none; b=iXSBCOS0pm3xNvIE65PzfpycUk1MdHlhkzLLjLtMfp36B7DyRBFeqGJElCJwz/qv7PbOBapJmDHbrG5GmluqEThnrdl8YfiypFR21cYvpFCSFkCaJkAphP26HkDfDM8h7Vc76GWiOAF2MgSSUCgWUfmdxJ9DSzH66kECVdcHspE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721065523; c=relaxed/simple;
	bh=kK+fxTal/uFxygFqva1T9/XvyJleXbrWFlB9h7nxAWY=;
	h=To:Subject:From:Message-Id:Date; b=HbzOigfhzakpqeM+M6WrsrRHDt+n7+FvPW6V2MU+v4ppfXJpd2p8lvHF+obUhOrS8XT6/FdHDBhFKvFoHHo7odi2aqu7Jlg4gZCn9/b9tCW+Pd5lrOpLIjYcXayAa4peSK3R5SM7qD+lOwxwMWX3iw+UC9PnmtPP/9Z78SLObaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgG6xofF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgG6xofF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55C5C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721065522;
	bh=kK+fxTal/uFxygFqva1T9/XvyJleXbrWFlB9h7nxAWY=;
	h=To:Subject:From:Date:From;
	b=RgG6xofFf+lyIy4uAgiOdgft1OF3tNYqzbzZl1Igw/SDqT2DpL6dUtgR7MYjvSGH9
	 +oKcQj57IoDxliE74Sv7K+H1uo11ers0fxZtAiwN7kGHPhmQ3ztSPs5b6E/68ctwCO
	 RccH6U6VY7Q5wztlqao+vLbvQIaM8MtZy4sHxUHHCZ8wP3PwQcc/gL1GeRK3VuIrjf
	 Z2d13kL6udX3YN7NLAisGpXMTPoKYFSRaVHZoyoSaE9CR6dAhL2dk1ZHV4Et23imGZ
	 wN1zOLZgTnSsEQeV3B5fqAGITDEckjyR9X/3YjcTkXOz6hT7TmRkvmRYiO0NoOjVEA
	 2zxRCX5o8eWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1ECBC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106552277.14227.7292815732297071112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71293a580c3817abe0992396c2b8ef57bfda9e99dc85a13738f03dd23fac1c48
Date: Mon, 15 Jul 2024 17:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721065522
