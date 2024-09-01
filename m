Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDD8219F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725181554; cv=none; b=JG2qFQXiWCEa/orForQhz8roLv0nFgtIoCWF9l+7J73GNURYfIfVt1V1IBZ+FHph3IWHe+iTyDO7PdXHV5099pw2XsqVq8MfJq8ADBqOJ9VD3Fyth8MCflBBVGq+toUV0loHdk09PR+DhvxZuncn333pMNdrJB4YTVO/8jPpSc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725181554; c=relaxed/simple;
	bh=FTIFDrSOp6yLfL01+a9fawtmRm+Splyey4MQcpvXWug=;
	h=To:Subject:From:Message-Id:Date; b=BfEefGi1jt62GdJxFwxBaitUnemplgeo5Jl93txLkuEdNAPv1KbWxscWh6AFosqFJj/ebUpRqKfOJZNHwHtAGrAIdqXUP7VgmWxTKcPolWEvSpXY6ZH/GVlzV1xy8yLiOye4eNSUtbJRW9po4v1zyHdEmnHh9ObaPQwFPsE/eHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4+GqfKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4+GqfKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3293C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725181553;
	bh=FTIFDrSOp6yLfL01+a9fawtmRm+Splyey4MQcpvXWug=;
	h=To:Subject:From:Date:From;
	b=C4+GqfKjM5I2ymu2aPdQsrA5Prrxf+36uEg2d6+90GQFqoX5xubVX0RSZZBw5jkTR
	 gx8hAWwfyHBX1IGRE3+DlY3hQxfTSPaGo8Lq7Qsaa4lyv2gfK3wp1j+sfcqBmV2CSl
	 RmLVGlG75U1dHpJjR/eosSh6SCaM9XIywBb1D+he0o03N8ef116Ldat0hwTFeD42CO
	 /CCbf6eAXKJoRyLy/vWQ1gsFSRaDbAFip1AluNl/6jVtRBjsOGsl4O4jnzwyOgbaM+
	 UGcfBhBUbwqT5VIOw484s1Q+uphzLC/vPQGnYSlsk6KO4RJv6thxBrSaXIq6SdSy6c
	 KBqH5LY0p2IGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE58CA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172518155362.3984.6858376216615117216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df95f8c738432b2d44f143219a4f443bd30734981d1726edda1afca873456644
Date: Sun, 01 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725181553
