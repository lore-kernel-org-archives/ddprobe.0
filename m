Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E38144D21
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734823554; cv=none; b=YckrX7mg/bka+I/B1OLmRkgiH/t7VUrBd+rlNRpgrlISKLtErkIQd1gDP6zyYbsSXaMWMotpP3L0O17bW6Vyd5doJ0+Nx5i7DSznPFslY6xbGAz6Ym1b6NngVbdTj1onWur8KWCPEHIHnQutQAsHD5jBGDylJU6YmaaK3mnZRK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734823554; c=relaxed/simple;
	bh=GClN7nllVYHDjOgg/JJutDI2wE32CgrgabknP7AlPe0=;
	h=To:Subject:From:Message-Id:Date; b=KdmipuLAx8cQYIxvIV00bujmE6kshz/UsCAUcItHOPokRuFdbGyHaIKdT72Nq4MAqQq+X11bjnZRu7jV11zRuYYVeCMzu701DrG37mvChNbXSqoo149ea+NP+MHHZVg1eCxRuesxiuaUcVGmUl96h5L7h7lI02cAaW1gapbJNcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9ygdKrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9ygdKrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C080FC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734823553;
	bh=GClN7nllVYHDjOgg/JJutDI2wE32CgrgabknP7AlPe0=;
	h=To:Subject:From:Date:From;
	b=B9ygdKrnR1MrOVWH0Tj60S774GJlVu4lO3M1COSbVABG5/xGmzmZSxvpgJBZThRAt
	 Tenrrld5ZvYSsRiS2yeLFciDxnYFhFgy/ZWus4W5ywXk6OSnVdI9C3GHyRZOJgmkpl
	 sOhS61gk3Gx30D9vtPZNcmynwmI+X0nkuGNccnjUNrTgfjs/hR2LVR5y/7reh68nts
	 4/xqYuRf6FX5wXjht4crrEkeVZn61vAgWIVtyBhjoDeJ1Ki6XiVMkU0CeySssxTtUe
	 I4UIpZ4FaH4C5U4jUNXX6zSYhKEvdh1HxbkWijbHWc71Y6LaxJ57HlnG5B038R4TyU
	 FxhNAFxDCcCpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DFAE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482355363.8776.1250280308343445085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c21a2fc8a524642164e11458f9cb3b885e447870faefac24f68b89786622a2
Date: Sat, 21 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734823553
