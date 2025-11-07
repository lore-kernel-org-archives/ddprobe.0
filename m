Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2AD334C25
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762534194; cv=none; b=uIhR7Yv/RAQg68VLIpg4yDaeIkvNpKKjO8op6YNHV++cc3thA5i0KvBhUVRIAuqlMr62LjIA56Q38SW0AVx3Lvlex7wTZU73U8Y4kOThJ8Y2M7gUuKfCpVNEjn8sheQHHEyKXvyORnLuKAzoEatgEKabt6quFpGo22/gkpkF6Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762534194; c=relaxed/simple;
	bh=tAnFOI+Hx8acBPsrQ/5xyo9Ha1NENpM/zqr44P5cb1M=;
	h=To:Subject:From:Message-Id:Date; b=DEmW4w882t9XwNZXdt+1aaqASlakiN1S1toht5dcH2p5tReETgLt3g8n3I5WgoCYH+JD8hrFkir2rLNKj7Qv4LAq1sgXCRQt/L4KJYXD8qU8STNUdym89j8coeLV1RBb62LXwsBbdQQ/+YBAuCpdxd+Kkklef5VTcOYiGh441Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgrwsLih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgrwsLih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5FDC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762534193;
	bh=tAnFOI+Hx8acBPsrQ/5xyo9Ha1NENpM/zqr44P5cb1M=;
	h=To:Subject:From:Date:From;
	b=kgrwsLihXpC2qiFt7VxMTypOX35ty2PDJ6f3P2bxd3qZyk316ZbGZ4710ljViyqQP
	 86rJGeATk53J6iHnKsUaDbOrmaOrTRjR7Bh0/XUSzflPnm7as5qB2qE2aowI2nTRN8
	 OIw4YWGeuOHbwNFXljFb5UzIRo7VWnQvRRBgW43jas6uRY+ZhOa69jU3hZ9t/oXndQ
	 I88wAB1TGEXAFLJE9Vt4+UfvaFhKUB1G7GNwq77Q8j8V2VWXZvKTZBPlEdGzM/I/w1
	 KLHNRkD26wxJwzcvIi3YW6dAsP7T5Szb4kYrAvFSehw5CkVBMM+8ySqm6iSIzBoogr
	 WBpI9NN3Bp9vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9FCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253419358.28556.13631028433459938791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555c60109b13b3d13abaac97bf5fd05373785e21cab33265a1f42dae3bc97b1c
Date: Fri, 07 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762534193
