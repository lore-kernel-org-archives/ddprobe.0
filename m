Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0DF4C70
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720110323; cv=none; b=FS918xp2X2zVfB9N964jiKT8XJjjZaPUjKduT06Hv9oKz9hRydfm3ZICkDWhOMfZNoJwki7dI1X8KnKeehu4rCYbpjQfHlpoWA1xQIQd0tNUIBe++fi/72W+aHWCFAYflq74N7aPU9IiS8ia6lWtlljbQEjypbvsI7ravdvvlq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720110323; c=relaxed/simple;
	bh=Uwd4VtftuFe+FtkO9f9ES9lcThNgH1XHsVjsXxJYTPE=;
	h=To:Subject:From:Message-Id:Date; b=EsCVyjImYIXV8XGyUXSma1xgd3klK7PTqPi2BaIGs78SPfgAIDWTsrOaX1wNMe0+uGKpBNmhxDyIS3w2u1Qmhkf/ekOZHoYdhFEz03KfkAY8+Aohup/ileXCedvF24A/FWreRDKltdujgUL3vLAbugF4fTLEZPwG3OsuScZ7diU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVhnyeyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVhnyeyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F1BC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720110322;
	bh=Uwd4VtftuFe+FtkO9f9ES9lcThNgH1XHsVjsXxJYTPE=;
	h=To:Subject:From:Date:From;
	b=GVhnyeynW6oxR5pE+ksMIWfgHK3eUUeTtgXlJGS7rwRm0PF4mIArD6t1prLEyCP9V
	 0Q2okhxTphT2O8fa8vTKHBBFSCv/N0lCCjb4OJItaOxwkcs8Vxxt3yVp1cVnvil6Jt
	 xwWOoGKoaskJkXYC10W/UrF/nyVshmPGIuIuj74AHWtvI/NX9pfmsDAB3PSQYo2Kxr
	 7pho86IhuPABDIx/tQEy92N0SPGUTCW1r/0qNP1O9RRquKPr7AcmTvmmx2lA/RvAx5
	 gQuvSi6DZtBdMnrFr7IaY3Z0zXliF55rBbfhQgpegl0z107W8/Hs9W6XVioY24vLqP
	 90b6WVyt6tzGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C430CC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011032279.27233.14767122112659650082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11056c90e57d20dae36e91c453358b6db83ac7822ea7943604c525388a56ef65
Date: Thu, 04 Jul 2024 16:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720110322
