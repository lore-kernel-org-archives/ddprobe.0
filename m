Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6219D36F908
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781990794; cv=none; b=MdCM5S982E/3gWBwRId5VLeg/qIe+WDKfURI1E89/SkfgzsWC3UTopllljbRtH/oDNY67MH1BkggsblgW8YIPcSLb3NGwwugF1uant3K5bXfjFMLhp0sEa9R2Aq8CEYC4e9DsSYhDmOiJHenKs9LzdKwYmdTXO+3pc27Tut6cpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781990794; c=relaxed/simple;
	bh=MBdcSVfzRUYcQ9MJoQlIbKbwRdnl5CaBaltYooqQqc0=;
	h=To:Subject:From:Message-Id:Date; b=n/6PBS7eeykUYd95r26OSYzMhGJPQ/7x2IFhHSeoioLGxjKmXFHTv2f1ULIfyo78piCPxWS6NCccLlOxPsXN8/zxvQS1/DYNChYvIMlqSF27wX10lWXPyHsrt7s2TlkjZJpOb+fzlX98zRUw3Nl4NSBySNh+KQikgTG17xUzf60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baWZql2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baWZql2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAF3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781990793;
	bh=MBdcSVfzRUYcQ9MJoQlIbKbwRdnl5CaBaltYooqQqc0=;
	h=To:Subject:From:Date:From;
	b=baWZql2kATzPFNakmw4o/IadGgU7y9XGhAyx09eGjx38LifYhMWoc3C9QN7yaNzu/
	 lHspeyt7Cz5i3NVelt3aNs6dctIaqkuHNxu1cyqv8Thf7YK+2u892VRtYqAABsEBgS
	 65C8iGEECzKlMI7pKJ/e6WJCuICSMs7LhhE1h7ZQoxVuVIGUIz1/nE97Rwx21+lWc8
	 kpH/s1xAjw2tk7KeGtLHtDfpI+CC9rhveARQjDPGSVx8K91yqqZKQrHbnv0rcew2iw
	 SkTVYEzywOUTGN72skTVoVCDDGsltJToElIYaAcdUWoHZuz91mJxa2wCpoDhPMINfe
	 OAZE0y7UdQwBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF65CCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199079369.21604.13868894650032747505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7dc5e9e055344ecfaac9543fb8895e3b6cab662fa63f8e40563537220d3fbc
Date: Sat, 20 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781990793
