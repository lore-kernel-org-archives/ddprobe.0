Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C02974E26
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722200154; cv=none; b=Tm5n3HsqEsXmSF7uyscF4sktlBGn2KEPtQEKkl3uqZwjFyh5WJFFZ1Ylzk8bFqAGHb8U66turlWhQcWFfkq+6+8V15y3vp1H24mjShOV8If72m4HtzJoHoGwFVz1bgkryuvs35J/JLICA73eCL9S8Sdwe6EYZ+z14FvAEJqijOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722200154; c=relaxed/simple;
	bh=gGphKEi7Ni+2QXEAFuMRtJpANA2Xp4pe+3RVyZINMkc=;
	h=To:Subject:From:Message-Id:Date; b=J9Ce9BK41GbfwC8mNOVZvIncTfelaSxz8JWa7DB6PKmCarQ8XJ7QrnycK8o1HSW/6m8fhoh4bVfP31nKObS+eEdlDDmZyUkrcY/laZ5Z1vvfylndxjNUcu47xmxiItT703IPrCMuL0aB4lyVVssdlh6aipcGD3z8pPZQvqQJAR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqE5XEgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqE5XEgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D9C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722200153;
	bh=gGphKEi7Ni+2QXEAFuMRtJpANA2Xp4pe+3RVyZINMkc=;
	h=To:Subject:From:Date:From;
	b=dqE5XEgTWcgKH+oEzv53STMua406JkMw0gkxSNMicbbieEqKmmjG3gwgxTprx6Bys
	 zxRVXXtqC9s7CGtgxXksdrZfqbfS9WAe2cvh4BUzK+srqvl2DpPTh7u5Inu8QBdPt6
	 qcBY9RblcV5sITsY1YVDNRo461Nsm2GOtKGSPJwnzWZZQQNx1UWKBHJ97PGL7m14Rh
	 5nnrf72WuPruq2AyIh4eZtDafw/A4Tk/q1yfeDRfCX2tyMxbWvY4rzuKikYy77F9s3
	 PUnmdgXq3yH+39Ssm7ZHMEByCWpHRtizGWeiL91mE3hbivAgQKYNpjctGJGRQSueRz
	 IenU+z2gwDulg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9458EC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172220015359.5033.3735649645701338465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7ee339cc9dcee43e865ec86395f18191988a220870d672db53b9f9d73ff58e
Date: Sun, 28 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722200153
