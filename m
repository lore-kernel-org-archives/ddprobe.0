Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203AF25BEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758320994; cv=none; b=mBItm5f//T4Fg+/HoOBCK+pu9phLDyeb75JNp94u9JgxOEV+lNo4lA655vBTe2W2x1YMeoD4iNrOoRuusQm4GUoOK59DlwkGB1s3AuUnZzKd994DZT2b8j/auGqIY5o0+KjwAkBGeb+jPeCoNELlUWmSMAMNycvohr6BoItEOXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758320994; c=relaxed/simple;
	bh=ZouCrQd7NSkQz+KZhyf7gNC0ex/4Rw7LsY1GFdDDw+8=;
	h=To:Subject:From:Message-Id:Date; b=sGDfVPq18FkdWc/nziPnoAos3OiMv1109AeFCPNQF6vpZkERAYBTY1YX/Lnvj5/dKYJkgH3Yiq4OY+WdCn/WKRU30n29zutF6qDDNWFb1Y9ZJaehBg3JcBPDbu8svlyc/iC72XEl0i2/ZZzKppfZrpHrHqsLYIie+6c50zyVJo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAvf0h/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAvf0h/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CAEC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758320993;
	bh=ZouCrQd7NSkQz+KZhyf7gNC0ex/4Rw7LsY1GFdDDw+8=;
	h=To:Subject:From:Date:From;
	b=SAvf0h/aYkKt6PTVzYmed7e4+K95O15pDfxcYIzGeu4R5lSzYufM94JdtNjW2WxSw
	 +uWEVyAFQ9ACDwgeCK8kfl0ua3WJUdU9BHKQFFKghPbGWFPxRNjpAp33K6MPxV9ojQ
	 2kj8MMy9tgN6CPOJ73RR4O5pEF8/ql3N2vrc+mk/UsUgwRp5B+4OIQgtb4Ph4R3OKv
	 tU1XHcWRwLNKy4kCzhwOKIMvaYGlfOGTAaBx1Qm0O53ltKqn4AuJrKqFXjWeI4YgaV
	 C6WLzM/FVNBnz48MgBR2mOBYButi7Cw39xackvA96UB3kTQcz9FTlGekK1XKCcd/Ea
	 81bHS0JRereBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D1ACAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832099358.28916.12878606781778279686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa434a6372fcc28fbf2c07dc2d94f1d75c519893d2c8a4ba6ee8ce0e055d188
Date: Fri, 19 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758320993
