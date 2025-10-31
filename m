Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265E6345726
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761912594; cv=none; b=ZgVQ2bqQ91xdsHEKvvp3lpQY79EAaSBaL5r/SlN0+6ey5OYU4qlC3AdcvtIkyE+syPPh+AtSwmFI1lZkRLn/oq+VEzXdhfy1xoXGpdYsVpgiqqm8EI+MWZu4OTQDauncEcWISH5j5CamIr8nbAXeCWezja0s3YquEhVQk+kZiAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761912594; c=relaxed/simple;
	bh=U8dELb+r2LM+p9U52DoQUCWpOhgjY2Q+UrVw5g6q5b8=;
	h=To:Subject:From:Message-Id:Date; b=Egcmtmr+2XF6KXmrWN1bwVou9DVIBLCQ0mQsbDXbIDRgUXO9YNJ2YmOzSSNSdvpVaIm5Ra3PoIRjs0wsw475rfmapm2WIyJoh2wom3ZnCBligXJ+ZHnpvQj3Rp+T2RhZhL3T6LpQMlTddtuNOPJdcAwg37tOeMeRojxQN2MjyGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1XWoi3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1XWoi3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72C2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761912593;
	bh=U8dELb+r2LM+p9U52DoQUCWpOhgjY2Q+UrVw5g6q5b8=;
	h=To:Subject:From:Date:From;
	b=M1XWoi3kkYN6DYBScSbTgN5iIgaa0OWbyQEEI8Idy8c0B2s72MiwDwEd4aMiMIRTc
	 OBIdPTcVKBSC+JpVA4FlmvcmNpnUoFL5X9+eYkqR8lR1jL8TcJV2SY1hfdgu/bVZ2p
	 Me4lvCzFRj4cdVllWdonW80nwrhlTzBmkRhFHltla6/2juxitSvAANfju3HewFeapc
	 LC2zgLnWcn4tn3Su2GX0ofAyHywb0KItq3TUB15jYIGMyhcsb7NzawMoh2t1+TjpLB
	 NoH1Su0eK6lvknlcmQDaQFg93v8YD923Q48WmNgPZOkJpgll++Wxgim/wAVH1xoxTB
	 T6rEzCAizlZSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954CECCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191259360.24811.14987662705913427293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7940185c55283e180443e28df157b6cb27628b2f80f40cb025ee3a69ecaa051
Date: Fri, 31 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761912593
