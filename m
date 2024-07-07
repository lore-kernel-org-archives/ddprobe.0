Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE8229CE8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720363583; cv=none; b=pAlGILbBn1H/6Gjv6zJvaC2buihmYChoaXplXkWwqo9e1zXGc6Y4P/DrhT+Oh0eE/OcEZkR0fj8dMDt98vSMPA1sSI1YZEK9+j0h3G2VHG46pMXSwQqZW9K6hE9btyebed08VQEChy9/X0Fl5DiwaHxyg56sNw4e95ea8AKUXoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720363583; c=relaxed/simple;
	bh=Lohqx1T11wZCXqUaZRKisBOXVazWfybQcEWt6wOhsKk=;
	h=To:Subject:From:Message-Id:Date; b=s9mdr72PWV3h54dBa8KbfVY3pt5ecb9BHh+n3CGT6UP+PIcYHLX7DH/y2YLdEG36Cj1mYsdug680zZcpgg1p5hRUXfKxFsjf1X1hcpjDoreC2cDYus6YfX/Dc+8L5S2+1+EcEnU3iLw+stlN5aJbdO098PF6EJ0FM/FZGVaSdlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP5wHTTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP5wHTTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF847C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720363582;
	bh=Lohqx1T11wZCXqUaZRKisBOXVazWfybQcEWt6wOhsKk=;
	h=To:Subject:From:Date:From;
	b=sP5wHTTDiWToPA46ujBzSn45KeYhp2fFWXVtEjSGSGqGu0pkpWm9YAu9D1np6vmxA
	 j7/oF2qoLU1vLo/GD8bCe4gx0aEAmj5TiAzasF3QogzdXZ9Hr53xgOtwluLI0TFakS
	 J5bXV0Nx47BZNwoC6ybaa9/jtnSQtiWD3OQ74ocKo9JqmFTfT5B5vVmsIxpH8N2oAe
	 yJ1AHGKJBa99AWT8N9eVNk1v7KZfxMCFQti7CAeTnkJnWFMSaeP0fLvtMRra9O6i93
	 dCvMocZB4Ky0dd7UkmQJdnyu0e+pv0FrbzrVBQJjJIQ5vXdVBPdFbWFiMTVUsIvVpe
	 7HSpxdmuUj36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98CDC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036358281.19529.10354927041115164137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b7e048b6b657c6c2d51da0e040e909134264290cd98e963eb8116657a0c174
Date: Sun, 07 Jul 2024 14:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720363582
