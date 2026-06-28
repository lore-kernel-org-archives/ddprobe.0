Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4582A3AEB26
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782662314; cv=none; b=B9RsWMBF3Qa11KOIrSO02yqla8lkLcZ6RzteMfzH9sVlkllHNOrT/9rpKd1dyb+GUR7VjwI2fVfCYzoVai7nu/Naedzz9bIRTdUShPaPjPOdoF/Wj3sxW25gi/r5Uu1K0nq8mq28rzJi5AMfSxP0iEbWrGraFkOyWRC4KQ8hVxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782662314; c=relaxed/simple;
	bh=bauHFEPsUNqlFqJbtXGM1YD59Syv1vQp/TeXCmkHYGw=;
	h=To:Subject:From:Message-Id:Date; b=cZjGLCsePQcsEZCaI54dXPs532WFXwnweJY7h2gY7mmPT2DHkJJw3t2xoD9rut6PYLKlRpdYuB29Dk3GWSrzWY5P8eRiFyjMauWqS+sr0Xg9xzZS33xvJm5sG7589hhYOdA88Q7eXFXP/CjMGxrxz7zdSt4DO9Ln/Y5xMHc+mGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCdy3hhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCdy3hhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD113C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782662313;
	bh=bauHFEPsUNqlFqJbtXGM1YD59Syv1vQp/TeXCmkHYGw=;
	h=To:Subject:From:Date:From;
	b=BCdy3hhJQZdpW4cROGHqzgxUvNaaC7bSPIrsBR4GtRAeEcDH4yEhbO5sIEA1PxKmR
	 4Np5ZOK8x4g9I1NA+J2i0yuroylNVTJd55+Y02pXF1xYt6q9/4MuEpwJWOMk2+GHBh
	 peBydGFHDbS8kR0BWHMTuL/8NuQa2097YrjxKuBPfq/jOWQ2L94oq0My2FbEmI4rGY
	 +k4ZsOp6dowwXAC8VpbLocFHuFYRumjHg6ualUrfUyITuLE3yZ7I9Q3dfoqHLeWkDZ
	 zw5HaW6I11QMjulSlWMkvJ8FEDUUcyL1ErEQXxf1KPX72D+05xYLdKKwluiP9UmYBO
	 gDLUA24HBc8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B159CC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266231369.31134.462398928100083758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac54887900ed634ba92a2580411301f3c2773a99074dd77ab3af649ad103551
Date: Sun, 28 Jun 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782662313
