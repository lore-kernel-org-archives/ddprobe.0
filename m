Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FAD196D93
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717684043; cv=none; b=Ca+N2eWL3pL3wCaUeLDMriDyVKkfjn8eek3VpaARNS7r3JHaoS8GqJ2GJ+udZ2g6k8GA1zpvOgTwr1VRCaWBlKv5JpmS3sMjGy5H1ugh+1JukqhP/N2e5gkCIGFJQDNjtIrBeQHBoLWT/AYRKUD/JF+OzHwetDQKbw3WYkBAoEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717684043; c=relaxed/simple;
	bh=Ca72c0HuzDZTpkfvxKcszp8gwGAFAhZ+JEAEQqLHsGA=;
	h=To:Subject:From:Message-Id:Date; b=so1ehQDwiKPlI0jDDnOpoFnL0qKS/7RvR+fPnLHj518Gy0/0T4eB8vWLg/MnWijyruMIhepLGeoM1pDnq9zrLoUHUp5vq7lIi3Z88hkT+No8b8Awr+o7LgiyEVyjI2f+xSCwk0hn5mLprOX4aojGjUSQVq56el/D4n5DluxDgCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8qcZLwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8qcZLwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D6AC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717684042;
	bh=Ca72c0HuzDZTpkfvxKcszp8gwGAFAhZ+JEAEQqLHsGA=;
	h=To:Subject:From:Date:From;
	b=e8qcZLwZFpCbKbgD0mTTMzGgSnSDm1xEx/0G0/Mjj9pwefGcl5A5z8E5liIMQcWnV
	 EG858wL8ZlPNeeLcv9zI1pOSy6YZeMxYkoDSLHqHZFooi9gPO/up9z1r57WfBV8Egr
	 TBsnu3V6jd4BjUlpc8DJWcoOd5NXHr1sG+HyeambLQO3hKPakovAQFFNbMSKZx364W
	 2pf5St9UZtedwBfSj4wLRFzN2BKeg118RiLEiHHpdaHpGIbeonzXr3b3XK2qEliXEn
	 Y1Euer7UZga4kazeaJwp1iv7P+P9AblIpnNmUY7rSXpfvWX7I5qUUmc72tmjiZlGIf
	 au3s4nYUMaS4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4CE2C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768404284.5112.1027943484959535151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2069942de842b11f4b99cc61fe89619914ea4084ad476f21920825493ef106
Date: Thu, 06 Jun 2024 14:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717684042
