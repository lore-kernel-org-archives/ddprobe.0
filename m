Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA9963B9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785081634; cv=none; b=ep/hWyjzAJQtkR43q0fwr8y6xEwV5wLmijkQyLRPAgBIGdIyoUjTUOZ2hsugFSa63wy2wW5SaQRaCl1V+uLlh5Jc6v7fC/6n7T7Ic8o67xPM1lTFWJNhI2BX4YYQkIWOA29sq+v1qRNmdW8NEjJobzefADU70tJXyftRzaMjamk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785081634; c=relaxed/simple;
	bh=J1LQu/BfYoYS0g/Q6vDz+D712dsB5PjJB+Qb+TIAAQQ=;
	h=To:Subject:From:Message-Id:Date; b=GuwQoT3k8Pd3FWsMMAuVDB92b9mkZu4ce0ShL7mrVyxbTLgOv4YDy398bYIuN7pQj2D83oEtHJ4Wrhu9W3/OD+CFKHxxAgB+IEkPSkkDdkZPrVtt4wo1/Ebnh8ZfDKOyU9lqSvHws8M9XSazKxenHSDf87PYZY3puitu5mIRm3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbY4t2W9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbY4t2W9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D565EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785081633;
	bh=J1LQu/BfYoYS0g/Q6vDz+D712dsB5PjJB+Qb+TIAAQQ=;
	h=To:Subject:From:Date:From;
	b=YbY4t2W9b4Zlb1y4mCE97FtC4oyij+mmR/pzq+bh11xkXVfygXWsGOvsGIJ1XAruL
	 9vAarazhwBIZSBikIWRf3YiZUPzyBXbAodalfuFqbvzG7bUH6HCtRLvevAXqGcQHfR
	 zbtwxNCdwA61iGoRP0cXrqn1N/tmVIicQgxDaHvnrRCqCxG7nDrjV6eDO86NKMNtnS
	 2nCaMXtw8hzIpUo46bOxHdpprPaW4YggIifdSBMuZ/yWPiK2dGH5Aet+l9C9JqVF0A
	 9IFstVmYPdyl9BrGLdvkYbqZR1oz4/zvZW3D4O9iYZG3vqLvpjyNoao6hDpl2hAzjZ
	 PYfvg+LrEyU0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D7C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508163368.25829.17532866931213458012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3351b671315d46aee24ba0ef919978e9ae3075e7108a0f0e3de9c382300bcb7d
Date: Sun, 26 Jul 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785081633
