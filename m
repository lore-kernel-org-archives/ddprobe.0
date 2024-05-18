Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9361B950
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 10:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716029543; cv=none; b=CDXOzCLpo/lfnnSVoHS6LkV8pXQ6wWcnKiUO9KWmIaVUdnVHxzGhmlsdz/Kwxic9k3zZAJvchHzfdRbT8SjOFyeWzRg4N8fXVm/nnhOoTG7QLP4WuOKxV1WIaZzC4cRyoJmxIt49gLaBjaJCWaNFj5BunWi3Wmc/iZLjdqJ87a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716029543; c=relaxed/simple;
	bh=QCPo7GOciIXRK8reIQWtLMSKuhBvJWTOEYnJjV/VZEY=;
	h=To:Subject:From:Message-Id:Date; b=Dz53Zki697n/EHq9Gc/dla0PVJ8H72dCkoFm2SmtsrzLXVUDssSmXyeupnHcPYXhUTQvkkiOFbKDb88eaaLuC3k5Ih2+fmx94tn5x5aQkRt3u4OZL6yfX0xAL0rfI7FdqY+ywqO9rjrHe/jkxvykg8lZM92WjxACo/5v/pucAgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwrauCgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwrauCgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB44C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716029542;
	bh=QCPo7GOciIXRK8reIQWtLMSKuhBvJWTOEYnJjV/VZEY=;
	h=To:Subject:From:Date:From;
	b=nwrauCgbxgKpr1YiK7E8PthKE8Vqu6IdmaFgNHwYHbheaQPDhEstSLiUBcn7YnJNR
	 QX8qROQcVJSBJ+L85GRriJEwUnp9GIulH1g+xO6ulm7FfAk3keJdR7XtNPtitwdLTb
	 wtcGA/k+3+XwThxI7z8+Kj8DyrkxA1IxwcQ3f9p2hWLGWlbc7soj0RPrN7FTGxogIx
	 bXGMDUR6QzglEP3jkrSa91pXcA/UJZ0nRJ/V27RDrshtwxXj0OXuY4m9PJE8XVBhgy
	 U+dkL2OECnpIGQMK+5nhZyEMgmMQ8sfgWlqewILYJ07HKskMkzo0rHJVEjhqReqCOE
	 ZmZ2J5RWsuNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE4CC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171602954276.18749.8702895002840398948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd6cdf9475b0931ffa19b78b28800bcb1a5c1ac01658a2a228253061711253a
Date: Sat, 18 May 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716029542
