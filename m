Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A79BE56F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745286596; cv=none; b=Kmfac5T/VDNJYdlWuXoQ8EWN0zyqyv3xru/ZuJM5Xp+U0PS5gHuYUVUgEFRglwkdMABWJ2Y+MK3y+/o3vdCwJjC4LVBVsKlSQLOtxStAE9lRZy3kZ2h7rbQYXsfeAPrhxDpw9L7kYBQX3cTqtXLPLtknQ1nRNCu/3mLFkyRJD6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745286596; c=relaxed/simple;
	bh=P9TQOMZVkAcHI3yVn3G8Nu4/cae2iSoNcY+47E/ORJM=;
	h=To:Subject:From:Message-Id:Date; b=KIfYqRvxAiWo3OScwqiohRzO9/0JLbmopl1MRg99R+1Jm2EcsHbvEdtcPBXg8F0EOjuWZZyNskiXyekTfPTV62FmYcgDmJp7xsbcmqOaumNvEjPPYbuUtPiE2JggmfMABbvldtCNAn1wlqoNFiIv4p8Te5L2i1KICOOHcWI9VSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1RmJekM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1RmJekM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CC7C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745286593;
	bh=P9TQOMZVkAcHI3yVn3G8Nu4/cae2iSoNcY+47E/ORJM=;
	h=To:Subject:From:Date:From;
	b=E1RmJekMTkbp2d+0c1b1QZkarmFldQ+ELCfhfypMxWxMEUt7kxFUhspvQIs/gyttM
	 aadq4xrIyVyM4QNVldgL5knp+jSutb5NWBchbH3u2YLafUM70jj+DyfPJtm047AFpq
	 RJCqPwasKpmkuVm6mpc6QU1WwbAiyvIFGqjy3R9AD88VhvQ92bIbMOfwY2t8IeEY/A
	 DWU8MkjZzX4Jw1QepXAuA4u4pLBY9iPynt8DoGnTAdy+pPXgDIAPAMEpKeZ2JVCGEg
	 /xt/p2PfcYydueFSzurvpAznOpp1fuY4EUIzrzte4gulmlLSMYM3c1uOiPejud6C44
	 bo2RX9BFmGQAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF0C369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528659358.13243.1737634699235507141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac73e7879be832ceedf12709dc589746451424e7d7aac43b6bd1eec59dc26f2
Date: Tue, 22 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745286593
