Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C64A2561D4
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754054994; cv=none; b=igHVSjwDQKH/LM74mzuWX4UqSqXMx+DkRdzM5D4yIHqlm9InnhkDsmsehkhTeJMDOtZdbhYZeK9b/jPeydW5JTmNbAN/V23FA3uHutN5ECp/fmMb43pHEAIxaDPNN3tb+JdCdYftFYXUi7FaxGciqBeSjIXQ6E6FsAUic0gOcio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754054994; c=relaxed/simple;
	bh=D0HiaXG6SL0VMCYa0FCfH5v1Ahba6nUK4BA9jvqfgJA=;
	h=To:Subject:From:Message-Id:Date; b=pEOxTFms3M7plTcscmkxgvHqOsZyjcqV7jesj2K5RqOkE16bQaQ/vGxwG7mrRbtwuYme+4/Yk832tlA29+OrMcyGiZppKgqIpFBFL1Jb0XLYmUPIarCiO2DkCMvV3Nt5/6TnPUgB5f4hcRdvWhx6jMniSuFKnxXM+7ylxEWk1j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkMwwkIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkMwwkIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55DCC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754054993;
	bh=D0HiaXG6SL0VMCYa0FCfH5v1Ahba6nUK4BA9jvqfgJA=;
	h=To:Subject:From:Date:From;
	b=nkMwwkIy8G9/SSoIQe3UG+rQFm31DDw2axxljuIObMmD9dwXPDvIio+N87tEJep48
	 9lHLsvlnCVgjNvF1cuz69y88NpbttaXwuI0i7dMI/+znHy63o+ZvH34lBEHS4W4sP+
	 qxhUi8cWYsA7tBSBlISjBjPks5YZWKPFA/KM0/rW3WvQI3BWJoU9V5y0Z97XRYV7+o
	 io36NhRQ9TMCDUz7Do0HdUg7C9yd9iWw2c6i5QteGGJd6/f3blXtmhK5DGopxdsV8z
	 AaiYjQRsUs4TWGzs4T0oMt9dJ5/822TLe9Eh7Hri/iWJR9n+Fb3C3aIPo3OYctNv/Z
	 BW8DqF5ujQd6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4AC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405499358.1963.6736346437958879776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccce7bc5fa483968fe3fbf91a58f7545d46258cdde2ff298f9c7686d0088acc4
Date: Fri, 01 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754054993
