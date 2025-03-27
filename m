Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456CD18027
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743055194; cv=none; b=lkOSL7LjhdSnwg3yBwCfRlP6dzivU7O9nR2XocPygUGqCdunZkSys07hzs6hu7Q9Z+OnjQyjvSbSKe1uTHWiN4U0+CpUEbYqWtboBk/bTyQyoJ+Z+PvFSRn20fJ+dpsqDT7jAz8RUZoM+WzKIYMrDO1nsV5wsiwz93jGkXVMyw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743055194; c=relaxed/simple;
	bh=fY4t81Lm8NX/Wwfhd7OBRkWpUEjilkAyRdvpTPT6otA=;
	h=To:Subject:From:Message-Id:Date; b=RMiW2g40bg/OpA2iC7X1UyyOYkFO4EJNRN7Z+9WV7wnetyd19+KqcdOfjaRGLwpZJmdsYbUA5BIrbrzHn4JBAWpVY8gfYwe/HMgkPUxuE5IVCXmmjKJpbizInXOtldditKSgORrDObBtTdCfX3edQG9+MWtoeMqLu5HftM4nwyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYv9zVvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYv9zVvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C83C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743055193;
	bh=fY4t81Lm8NX/Wwfhd7OBRkWpUEjilkAyRdvpTPT6otA=;
	h=To:Subject:From:Date:From;
	b=uYv9zVvbbo58V1veeG7ZfFzhftrbSmuM+BARIe3SX+eDRlD3WmJGb4ivHScsJVcch
	 kFaC0KuANggijQVyuZDRfi4WYJxXPwtKAY8eJh0A+RPGbhUMxU9MDP5HyKuVPwJLFj
	 Ex6HNjC1BQUzz/zWdMvOYnucFyWO0NPGnEt5JrduGw1Aj1yT0INQ7nb46H1TVv9pDM
	 U9+sldX0wInF3SMU4JljhjcJbWi+1MKIVeelsF5I/fTBCNThrlURBe9CahvP2xlRx6
	 qgOvLixwu34B821iYZxsVpCsbj2jm7d/4Zy2ikuFesLriwpUZZ5ZS8KfeWjSng8+Wp
	 C8Orjd9MzoRXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAD4C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305519359.32043.10088754334860666480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9d61c79170ac849b4c4c5b1b479d834771cc5456a72ffff73cf1538589bcda
Date: Thu, 27 Mar 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743055193
