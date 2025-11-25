Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C253284884
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764097374; cv=none; b=mkgua878DSEWidWnV7kwTgQTSW0xHOrPLgg6ZjVtswfROOeDNTdRRi5ApKUyxeJUwG7szZO8spjAJxqaOO98cNjh+EgemqmtBaiwLyT0fcub5REQ+6E9dRFXe/J8tEMvTBeDMrcnzZBBlN7dEZcEDJpm68CYp58hQvhu0AGsdps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764097374; c=relaxed/simple;
	bh=/Y/3/Ghzq4hifOvxugQxYCFJB1+yXCdnnHNp3v9LzoQ=;
	h=To:Subject:From:Message-Id:Date; b=HdIOAGngagZRZHd2NEa4Nn+K0SzlEQSCBu11QYjhFva/dLySQk6lT/oLJex4fnM9DRU/Ji1UqW/Wa0iRfk4WAwkBXJwrx2wqYCChDM8F+bBqAePxh5BTZNdPRZf4rlOmd7PYBI+MH4MJ4GK9AIn6FI0n8htfWYg7rpvdWCucD7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAn0wTvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAn0wTvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0783C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764097373;
	bh=/Y/3/Ghzq4hifOvxugQxYCFJB1+yXCdnnHNp3v9LzoQ=;
	h=To:Subject:From:Date:From;
	b=WAn0wTvwwkamkpcl6jveJiUaanadaDyXa5mRxanoo3b0dG4LEJ72Co8I+nG9roogs
	 2hSedZwF/OOigqPWk3E/vhp2znblwSDp50TflmEyBW3tFPuBghUFzDZw73larUskFy
	 K0kEZEdpKY0MEy1dfkxUhp9msQLnBwPsGFymZ6Gnky5/FCXRD/jCfz6AmlyIDPNBrP
	 ROUroO05CW6mLrWIeLgYC2tWpY/GJHzgAnT9T2kNZURB7TQgseTdZF3O+aUYiU76ao
	 PZ8BXoJmYNyDhmWYtFcgR8Kcm3Fhgyj4x1zRcX2RWGm4kJwRB1SXx7t4FZnuZZvMiH
	 u4OOi9nagPSIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994A5D0EE13
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409737361.12618.10241514774365963079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8788bf62a151b1e5b8aff9be231c2e5dffc745e75d97cac264303f628fa998
Date: Tue, 25 Nov 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764097373
