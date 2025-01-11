Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F2424B249
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736593554; cv=none; b=sgtVGvq2LQVoba42kUol2rdsxQ0TpcIaWFXFg34mF6yHTg6OSleTaWwSpp11ChO8qr+Cg9j7ZYIAixdb6BHOkDGQAXm/Ns1mWYBKmjUahwTnz5LOjKouf3Qoa5wlbBxIMizLvmvaD92TZizmRkcQcydxm6st0TTyTNqalNVeV2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736593554; c=relaxed/simple;
	bh=uWXKR+WkZGfR5aWBSx6xBf26zC+tLux3U8C6Ruu0a4k=;
	h=To:Subject:From:Message-Id:Date; b=rf9N46J2mmmUMQ3j96J9PM7LdnFx0ahd+zI/EcBPHWGo6oiyXMwOYj/gNdtNEXrQDJj9Y6wA9ETK1jRj97wzpRGRUc3Aa/k+20/zRP8XayIHFfjENsDfiPzV31FCE2m+EPc6I7YDkmfsplmP02ki7nVxim2Rd4R1U46+IsoYHso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRoCHO4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRoCHO4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF357C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736593553;
	bh=uWXKR+WkZGfR5aWBSx6xBf26zC+tLux3U8C6Ruu0a4k=;
	h=To:Subject:From:Date:From;
	b=QRoCHO4WisIBH0Lt+l5mkAXPoRZ3pFgZ1TiQ71+9IzVciPe1ag0gAeDue+hrYiLx/
	 mc1YcCisDWiWNbw5iYbe9gz9jfnCXrSSKUNZtdSJRCnAWPRxYlNPr+ACB2xLI9FscX
	 sdkXsVLBrMZa1tPaYChPTzFFKxpu5Yj27jVa0tdRZLZEvOy4Icbs53kf6bCQr9WXTz
	 5FP9+unEiwc1U5foaIVgNZqaU327R4Knq7pEfp8xig844sRZi/BE5FnvEISB0BgzXH
	 ClSiPd0txDMOkabfsFsEmoCx2B+FE7cwa0Qbpugr8YwgjxPOSQYfmcKr5bkpz3Tfzk
	 4sb0uTi+9ICRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9691FE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659355359.32507.715490258828021459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abafabd5768f4d7089f0f39d7d46c2ae33a74a50c4fb689e7c708a618d318d9d
Date: Sat, 11 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736593553
