Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAB7411FA9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784740774; cv=none; b=huVWixBPeJ4LHu/FCPumBRH96uRKSPdH2Y2rHPHggI35vTpvpHmmy9nrx517L8+HX3LXe8M9hxp9aet+2qHWhZ9fPSLoz4JgJlzgQxftjKoKR98qxjp8ujCR9v6zYGTysdh0KFpTXOnRYmCv3KyDcePCTY8agachLDKTRcRmyEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784740774; c=relaxed/simple;
	bh=SKNjTwPlXV0U9lNb6IH8ZDwhQqlQ+iBrSHb/9hy2ZiQ=;
	h=To:Subject:From:Message-Id:Date; b=WeWoHq6GDByzmU3wpR/KH0hdOPAeiPVzX58KJfFQ+vaSp8/ipCGSSpzqFrbo+6KLB0R7JsNXq5ESYGWkkciFlG01LxUcOfQCZtilGfdd5UVLtW1J1jTpr+9i5gP0lof8/GitWX8uOpAO1vgz0n2TpIcYyyjBSPirf8f5ShY2H/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBcUDYtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBcUDYtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF14FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784740773;
	bh=SKNjTwPlXV0U9lNb6IH8ZDwhQqlQ+iBrSHb/9hy2ZiQ=;
	h=To:Subject:From:Date:From;
	b=WBcUDYtScumGJQOXMKPetUobzXBtIYWT2KZYetyHvHPq3ADGBkcxNFCb6TmxCH4sf
	 vk8Z2yjaVTkcotFumRpGxPY37r1Uy+ZXX+B6/qFbtASLkdR36UZIOqwla/2PL+W5XC
	 V4NllUQSLO4woDZIJhrIoXUKMPzGQ/EY6MmlVkDYhDX4JJR9Y3N7Cc7TB6n8t5jwUb
	 1g5TwMlfAjyPOSaDaP+HGTZOEiCOWaQEj1Yb670kGsvEg6P5tTwyRY1NirJ8NzV5o6
	 O03VwVU0T7dpPLKhkND+dRwaBbDgsuYH33qArxlwlQZGSABSsPVAzohq1+m4jeHejh
	 hu/keEGeRtqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9FAC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474077369.27351.4194763297454405135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b22721cede0718972cec786a39cb6f21f7d9312ef94e8b74bdaf488757ea5b7
Date: Wed, 22 Jul 2026 17:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784740773
