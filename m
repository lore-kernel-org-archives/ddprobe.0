Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CCD1F4262
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764429774; cv=none; b=dflv/++fmR99rK6tsBwBBm1vKtZRqy65ih7fgKH/6gLKFQzVCORfQNdZknnQQuRhvQtUupI/qz5pwbXlcmhOUoKktu8qXqr6dXWKUdyKqqMbb6RmeviZL1QJ7bhMKCXAS5Z8m3PU3mlo7KKAla924i6R1g3x/k5ZIWGe11Odg9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764429774; c=relaxed/simple;
	bh=GNHW46OA9/YS6lnYWAGLTcns3rpJcDH/OEJ/etoJ2Bc=;
	h=To:Subject:From:Message-Id:Date; b=nz5s8IQ6Kenp4cvfPGK0nfh6364JS8gkAdOqAHCEhp1HKf5SezukPM1Fe910ytzrAZkqWLR1j4gWIkpu6GLYmCUWlF3GH5AJ2iLIAvoXjGV1as25Dqzz7W94BrAuG7jKH2Wp2frty6xZQHGekh566KRgKSZbOJ3rWssoWfz6QeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msBqVpXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msBqVpXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A498AC113D0
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764429773;
	bh=GNHW46OA9/YS6lnYWAGLTcns3rpJcDH/OEJ/etoJ2Bc=;
	h=To:Subject:From:Date:From;
	b=msBqVpXFUkq3Hr2N8LTFC+gtPBbbehz2FhteBVs+cDdI4NirOWUN67ciFjRMKwops
	 v4eSwyM4IlHApoFEA0pKl6CTa4Az9ykC5UAw6wgg/HI2+hBUMeAKofyDro4iHxCd6X
	 ZuYJeaFkDc+vuMO3oGM3fvU6TVIkNHpt+35EzN4SegxUP0exrZlExhfMzWAA3dlb2Q
	 9kn5doGkinvXzxWQv8Q3yy/NWiuUfHsWWnQZEP0WgWqhmFQiaR4EI698ruikfhIEoZ
	 3pJq0cnGMHFmddf/HVXqhGZoQ6ZOcYN5INQeXi1pqus9b+Hr1djr6BlVdotXmcnGLB
	 TkDI734ENbRJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967A9CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442977358.13609.12304394323647913256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3f22a4d45bbdeb9d19e7ff4b0d3123377d8a8d967916db3895dd4e0aa40f56
Date: Sat, 29 Nov 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764429773
