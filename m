Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFBF34BA47
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758356994; cv=none; b=ScvTSoFhDinMlaFF6rE/pzd71ugNkCVqtTVq3MxhWPMMvfDikRH2XzxYyvI2C0OGqMO+pShi7yr1X3q+1Gew4mPDR++aEjDj2U9axSSdfSoVA3x3uGDP3Aqzd4RQLiZivu4cLFCOTmesjyAOgmehSFWWSIE9L0aO9aQZQXuJxSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758356994; c=relaxed/simple;
	bh=Ek1csi882GsSdm/siyRYpJMRqGCnWb4/Yps0Ls9zvw0=;
	h=To:Subject:From:Message-Id:Date; b=BGn7u8yZbL2Efd10kf6pNwvVJrZs7X3XhULjMhNwrV0gZArHwdlTLZMOJeFGGXKjyJBbWbm385LrCgMZA4Z3t+lbG0sRd4DZiRH7UO9ZbrmCtb+TA+/Nm651CV3r4o0iUyBmHw9It9vA5q/paMapCB8MoSDHKttc4gf0JAWDbMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpOS2wgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpOS2wgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0585C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758356993;
	bh=Ek1csi882GsSdm/siyRYpJMRqGCnWb4/Yps0Ls9zvw0=;
	h=To:Subject:From:Date:From;
	b=lpOS2wgFu1ciBKaltc2c5CEJw0olFUaYbustv/wi6hIYBKd7VOWZNaLZvxaXac01T
	 R25s1JaBbiRpe4SFIp7VK0tZRNFvz9F+yF5w58ttqIJ68hw+89satfPBXjDaDWsJ6/
	 YTLjfX280K0e4JzZEYUSVZj2nW2irX1aqFowHDO8zorG4bKsGBLq/r3bmgomieRe7L
	 XsrGzmyxUvBZeeeCXuIiFiQ3MMNWxtgVKfwi2KDyJQB7KME/iUOEXkQ/u7iDICgHpL
	 ZsPA8HHs4Cy/EfymGaegVvMIp2jL/0NXlxalwvNRoZWh406ORhxirXiLXEJxypPRUX
	 Yc1QoJUD5gotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93185CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835699358.5780.17972193817916540521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd50173c031f31662ec4b7b82189188af7398493eaf1569bba46527a63c63bee
Date: Sat, 20 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758356993
