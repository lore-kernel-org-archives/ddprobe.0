Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D881B4224
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777817254; cv=none; b=qBgjOnQKK6QI+MBcVc1lyHXDUzQJnjmrX0cVBThFju0yz/kL+yYt0nBw7Ln25NLQOZYuJe5Uk5FyNF91V/sNpsLta1R+Tb+sg9mGFpey187oESB4ovCe9OxG2Y+iY1KPXCfV8I54ANSme9HfPqX+OIC01e7VrD6D+COMcFrl2kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777817254; c=relaxed/simple;
	bh=hVZ+0Tci9UIx5QYxjNgs7dRgvDjKhNV3lUkf9TzQKrw=;
	h=To:Subject:From:Message-Id:Date; b=iZx8kAlS3lbORabmMSD3QS99365CITMqKo+govSn+bZjpZl5l6Ct3Ev+GYpJ2WzlpJMnIr0BIPTDYGLEXyx18tAlLaItcNwLDlS8EQ3YQ67FpvHQL+KjLNCFCZRmyohQFQ3p8P+Fp/GARC1d8XUV7L2f3oCaP0T3XRuG+M95NAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIK2AnhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIK2AnhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03F9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777817253;
	bh=hVZ+0Tci9UIx5QYxjNgs7dRgvDjKhNV3lUkf9TzQKrw=;
	h=To:Subject:From:Date:From;
	b=XIK2AnhPxYw7jqj7056pbfVF+vxksFXtp24KTksCMOXVZkk33I5zSoe/AnZ94ZsZv
	 JoXvO6eccvYia7OoohdlDdKPhpTR8h+gK1NQojEvumLntSrCigez4ZSAtdOXBimK2J
	 mN7k6o7vyOdmm0G1zv72f3aNnC7rN7bhYrWk3Vp3YFcnZLrKQgr3KTiSo7ZVraoVkW
	 EvSg84yucdVEIksjvYkfESPK4mSW70AZOXiudIGsiIJYkoxFqOlWZJajh3uvtjk2cU
	 LBE33HzTdPEVXCoqtdOAfbvRlNHdIarDhqhoasurXgfXyBhf8rYpe1D6LgMXSBabIP
	 nunOnIf97q7yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1870CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781725369.20410.6221227484989262756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab00750263db70726d12148d7fef886c52b01615129af8aaa8ded561f3ff5a6
Date: Sun, 03 May 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777817253
