Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B1E2E9ECC
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754926794; cv=none; b=P3Lh6pJBtHTmcHf04q2trZB9udg9cnvqr0glzfnwqXDT+w3DB09HHJ+W7mcwN8rEgnASyP4s7hkll0tJj2t3WI4cZ/DD58at3Waa7ii48euXxO2NjvOBiog2jVXRtGk103u9R1b+DdF5b7Ih0H88sKWoCocsiu8u1d8VoWBqrxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754926794; c=relaxed/simple;
	bh=j9Ipvj8EtJ5oVCLOly+ZhFrQ+ws+nf9tyLvYGxIA9gU=;
	h=To:Subject:From:Message-Id:Date; b=BoP8y5YSMPr8epNd7MgCm822vdMlPtgf1UMYNqKG6PsX+E+vd35Q8RPmi6z2jiZ/Y+jes6okgMJVH4OWrFRlVgbk5CFXGnTNfzC3Uo9E7TgmyhLf32Sg1RIl+EEsHadzt4z4vMVQFpRFBAGTMDT7aBdQ/ogNHThSEYzQO+KwRFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9Zz07Fo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9Zz07Fo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D40DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754926793;
	bh=j9Ipvj8EtJ5oVCLOly+ZhFrQ+ws+nf9tyLvYGxIA9gU=;
	h=To:Subject:From:Date:From;
	b=C9Zz07FoPjpcJ3BEm8GybVn5irLC6X3qMpenuhV9apkOu/1/ga467/RgLuzTCQGPR
	 UBmQIhU4vRQIoI0vgoPng1BxsKCknWP4zcMmmXmw+EXt66M0GvUZjVWgl0vWqprUXL
	 EQdqWJa/cUQBnHvlXgk2HlX845dnnMK4uPTm7Yb+MWbdMK/x2xxqCx1v1s56/fkL+Q
	 OGxZckgRc5GDO5gVeRE4LhYsqWW1t8fDhopnEZQzzITiAiye9hWuCC3TUsLuj1lcVJ
	 DtEpPM2mGH0mCXqfIUK/Vy/x/oJAEj8dwabkFJCdm+a3ng0mnXz0hHOXAAi5zWUIuj
	 MbS/g9HOVyg7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBDBCA0ECD
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492679357.23658.11027314148592919889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b520c7070b09737667911facf6a167cf48bd908935d03b9cecd8e11e5e0e4ffd
Date: Mon, 11 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754926793
