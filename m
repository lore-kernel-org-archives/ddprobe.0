Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB0E429820
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768931633; cv=none; b=RutMDNWL8dR8OSHONuf+M4IxypE1V2cG3R9o3T9YzAxNi2Y6TEVSKgGkj9RFa+m0dDlCKOU45RVIRmF/UEd4P6FL/k2mLcp9g6j3Rl4VLpV5yR5wOpHtLkk13GYCxJPvL3bCAbLcj4ThwMKXRw83rLCvTBuOaEwqR7D4ZSBMWgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768931633; c=relaxed/simple;
	bh=LREGVGPKEILuhetePYMFS98tmSJTkFel8GbF8GX1/AE=;
	h=To:Subject:From:Message-Id:Date; b=X5P8zoYO7ITG+QLFDGw1/uk4r0sG1SXNLKVIpe70oJCJ5lEZZdogAR1g0qyDL446bQI7hKFEH2rAKFCIrpLsfFgwsdjvF/jWMaghU2OKyx6BBcRQI+tiQ7HsFGBpIeqJlv4gDGzbL9Z7s8328L9bu5UjW5IRu99bV01guEeZ69E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U14adgzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U14adgzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D78BC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768931633;
	bh=LREGVGPKEILuhetePYMFS98tmSJTkFel8GbF8GX1/AE=;
	h=To:Subject:From:Date:From;
	b=U14adgzWmpHFP05cIG0t34RF/NeRORKn1x8wKDFQscB0WL1SNshDNCN5mlyQgar6O
	 hGQOT3ezrEicCI8z2Y54no/LuKGo23fz7V+CJnbFdAGe1jqXpXK7i+A7P4eAYhRRsh
	 1EF9ZZsnA/r9h6Jz+NLFtpEQFknpPtTH2KPrXMzzutyQkV25oBYcCZ7zjH4C8yXCs6
	 XDYs8YbVoDujFOMS1F0w/4bFWN9lwnRuc2uzYF3n4Z7u+hwmlgw5Rr/WLRHvOXoSYa
	 2LZSKiGBlKwk6aQnDryV2fuRFe0YjdlRFRs2/7wqWP9S2rvRq8DpC+IUCw0Zt//lhR
	 wPGNOsTtg3bFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBAFCA5FC1
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893163358.17568.10565905698509704075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97a89d746aa9b7fc6208698232e7fc48103f498e3b5cf3b97163bfe85411815
Date: Tue, 20 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768931633
