Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDA48F72
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719728063; cv=none; b=U5yg1RYhtWzCljQc+Zh2BSUwMcj2Pdc4As3IS0xJ2kdzmDuIS6vc1Wp9+TyTfz/J+wADiEKjqGyonpmVc5Q4ihDduM6ItRmz71Uo5FS5+jX0t8SQIe66opzSsZcyDZ+MpvJa49t9bi6CMltvrGC/i4vx9xOJa1nE4jgFFJMYmcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719728063; c=relaxed/simple;
	bh=URdMrHNugf8HyEOYBZYK6JCwggVsJos7k5M2jAXarBM=;
	h=To:Subject:From:Message-Id:Date; b=OtHpGfYdw1dj6/HFNVLBRk5qjU1SSQYMenNVn1SfOvEFiF0PMB2nRlc90xtdgePqLC/94Zbk3GdvWz7HO40C4+ySAwOr4DoAoH3ISEqAdsOSPEpGUnB01B+hfCAfcyTjnBuhgtJYQx94dlbjCpsqtYxwDB86rcERAektXWpJ23A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSVPk7yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSVPk7yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AFFC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719728062;
	bh=URdMrHNugf8HyEOYBZYK6JCwggVsJos7k5M2jAXarBM=;
	h=To:Subject:From:Date:From;
	b=DSVPk7ytsvkwqZN8jJK/FGer6y4+6fUsjGQFq0u7inWySiLIVEcFUIu1JxDo+Cskl
	 j81KMgiw6sbMms+YpScVN1O4yDR0u1xEa/S7H3evNej1HSD7S7PtbTASYepQwbsE5+
	 sbUK5SfWJZOr6qSP6nqm+8XIbIaLadLfnFZ+NSKGHnfEB2SQgLBWUQPxMFnOYqdmwk
	 kxnFlabmjpo8OJtO4aCXByD0JaFWXqYAb5SUQ3c96L71ZUlKQY7NInryOElhjbmoYZ
	 smzj/FiiMc6SRIOSAZICENZHAoSA2QPjqiXC6jZs8aVLgiU3PO2MgNUymsN6OweRJh
	 /vbep3xqrJNAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC151C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972806280.2721.3390229965601892613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30c32db7d1ad1c73d5a9bb45df6669fd5d9c3edf1e747c73a4d52fdb37981df
Date: Sun, 30 Jun 2024 06:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719728062
