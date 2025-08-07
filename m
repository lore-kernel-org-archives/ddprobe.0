Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323944A11
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754549394; cv=none; b=kgEwKP1F9pc5BoIt5RKrMG0/N4lYDSk8EezvPzeTIHd/ZBjhDeyt0S8G1kGjQgT9CEXiLGBw+I5J9bPIWuO+cDlh5UYm8vVRl2pF3zGnhAbGFEH6gKtvJZTmi+CvMsFxy4N7SKpaLDDTF4VA+l5UjRvPf4y9wgEPqrenNoRgeL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754549394; c=relaxed/simple;
	bh=j6MTBEaJqPkP5Sj383jOT/cTXZuY4IYjA7JmMnsYor4=;
	h=To:Subject:From:Message-Id:Date; b=BK6fkEDL/DYsyX4S+u7P4OBwEPnBMiu2i/o5bYdQIlJpJm6z3HsOsKTrhMUXFn9e7ymRqtPqGQLEx+HdMTS6A2mPAiq98cNYRcZxOntBCen/OQi5Fp7RfhBO3b2LbQhLtPVpZSgpIucJ4odU/5TeqNwWj0XOSYABd6xyjL5kmsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbmXWHRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbmXWHRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F982C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754549393;
	bh=j6MTBEaJqPkP5Sj383jOT/cTXZuY4IYjA7JmMnsYor4=;
	h=To:Subject:From:Date:From;
	b=mbmXWHReQWMY3tungPTZjopysjdZQCVrHOdzAWBOoL0lV1Ljmv7DH6Gf37ngWIIyp
	 owAP9p2FNK9/QZN+GGKGO4yTNxLIJ+tqCPhm+sfQuyNMrU1b7AI2ZXVWMmlSZgWS8j
	 zg1HOSTqxWM/MYzKVPthdNflIkVsO01XT6KDBYC7GnL82pgcnn3d+Z+QGQy13JPd0M
	 MlZ3UXOyyx5jkrdMpzZoqJmwKiQc7+pEThuGxDKs+yNO6uZPW1X/Vr2M2AP/p8nhAW
	 1DY3WOSeR6+kas6PjyQom1lyyPUQm7/VTCtjR9wAkS00ZyQQyYQ02oFeo87gcS7zJ7
	 Tx4gBBsiOyYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9068CC87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454939358.9394.3876174318686538605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6741dea0f2db3473d07e84d19fe27ad70f3796b4e14c96abeb6b3b90321c99
Date: Thu, 07 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754549393
