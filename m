Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B28EF9EC
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744948195; cv=none; b=NIAIAvGPcixleXuu+qLpdt0ZvxvOewt0gGpxIlSi3QEmy3xZhNaoHX8P8Qtm99jhp2e34hGsO3tSvufQX9I62NWRAxVDSEb6m7HfdtfEXJzVIiZUSZd1XzKux63dFofYGAss2320e3zDHY7LR3hphK31Nwcb7PAXUT7n6ICgZik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744948195; c=relaxed/simple;
	bh=H82lHkoLPNU1J4YLABkeezvy7GiHntLjLMpIFicbXMM=;
	h=To:Subject:From:Message-Id:Date; b=XUvqiH0ZhSPYgzMlJP2QyQfzNcMKOpiwlxNwVn45JsOgclkgMLfbL3G0oQER06Mspz3UpSi7ejW8XEIGSEIm7Zl4eYHhtyXmOjEr9YjodIY2BQ4UMMAFw6rP9Qrey5YakO19ptF9UTUaFvpjxRmHdIQf31sJnGrB5lZ7rmWXTDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTGkRl49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTGkRl49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B7BC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744948193;
	bh=H82lHkoLPNU1J4YLABkeezvy7GiHntLjLMpIFicbXMM=;
	h=To:Subject:From:Date:From;
	b=UTGkRl49A5R6pBr4NmySExIn0fM6ltIc9x2r0k7qjAlL6QCAR9zlR0mdpr4S/02T3
	 /d6BAw5zcB81qCrC8/9KChoEAyVyPEPRXc0vPQUfTDnbli0ksiHh7svpgf5wiCljaK
	 3tWJ7RdyZCcTWuu5ovam1Uu9bF12AHtf1Nq5La1lanMyr0qfL6rrUz4bGX4yXDnPAY
	 OQpYOLEdwysxt4AEXLV811B1kf5rDx7iVIqvZIhevjZEjPYbuYbb2vHDDaJFiVAs0s
	 +VD859doItZORgObW4D8BNdet3281DIHfNEiHirnZhGLZGMuB7LeSN46/KY5yjgCZL
	 x0n1gsWzUYuPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3779C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494819368.23557.8440293440938065820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2a2af2f69ac0cc98889adc82efdc0abad6aa5f80e6c84a047e605a18620e4e
Date: Fri, 18 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744948193
