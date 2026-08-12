Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759D723393C
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786510834; cv=none; b=i7yu/PrXlEycAnXg/GDf++JRd/he1rJ5BJppSji/j5aVLvTw4P25QIrUyKrs77JvVf4TnNJLiytq8rcDCebybRHBQlBBWik+d+LeIVyuvRxNvi+BKPfwasehQ21O4bVkdlX9lTYEqblm7PYov2DHbHkLjtLyOnhjcdyzr4ocUiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786510834; c=relaxed/simple;
	bh=ML5hSRBAH3GydxBS0hMlys6o61v6JOgEC78pqp5AkSg=;
	h=To:Subject:From:Message-Id:Date; b=CmMGF8K9H2+YbDtpNCvo3MAKL7bJAdwmaau3EcbnRJ5QaGG1pIHkL2+BAJ+exCybveROP2M5GrVmEg1/w5INFv9e10ppH3VF7nQ6YocgwaHacKoC6wzsnt9CQIs/g7F9VXR+qCCia1/hU+CP3a/zYKyq6/QXpm7ASl05LHf63iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6Hc8Uz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6Hc8Uz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5723C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786510833;
	bh=ML5hSRBAH3GydxBS0hMlys6o61v6JOgEC78pqp5AkSg=;
	h=To:Subject:From:Date:From;
	b=P6Hc8Uz6UkoHMl0I6ouICQNRpF/qF+fYMwNGAZVZ7Yr4XZQFuXEv8oVxY2BiRiyiN
	 CrOBLnf1R0WMr2wEKWzuFv9um5ZQK/DP+u2DAwQ4ldgOgOcdXEgVKXwwL41J4AkrVX
	 ho/zG49Sgrfxgf2rFVL6y1hFgII16VTrC17xrKGdfPOBF9gkJqgIzUiskTbdR3TaAY
	 suoGsOT6rAqdvmzxauibSGQxKBYrety+JyynvbY2PsenyfJNiX84ywyGSIMnk/BjA4
	 EJMKecCgDwwFQK7fu59gcJoWikmRkCGftbYrBdzLkkE0A8sWP4qLLDoiPrL5rnUByQ
	 kA9h94Dx6lHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8CCC5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651083369.28382.1420616976706556173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db036066ea02f6794544e125031f71d098b44c30aeae57b4f2f54f5bd23979d8
Date: Wed, 12 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786510833
