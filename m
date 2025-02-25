Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578B9254875
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 07:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740467334; cv=none; b=pPABNO9lRyNUH3bwJ1j+fn3Uu0EQenaP8zJXk3q+Fv9VYxtO/UZEC8uz+Ay+9jD2vtzwTQ++C7n8Uxu7xocxPTFg2OMkoL7rnYSA1ISinbLB0cE7Xs0bZaGSPJW8SNPmP3891PAuNBVF+HFifwNPo/8PhQity3RlTO/wT/VY2sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740467334; c=relaxed/simple;
	bh=71o8d5V+cmShuyiwvld7h3etjnL7O87iwR9B5oYZUuU=;
	h=To:Subject:From:Message-Id:Date; b=m9aMYZQRY9o+4v+sDzmDjg+W8fwWdIk6uA81wauGqIX+pceUhqZJK0CNTVyKhcjSalo6LPWm3xNVd8b68vNMGQTBxgFSv9M6j7jNhzwXRJOvF9F+ZvV5qNxy84QOIwTUCa0xV12gOCpaqrpNcRFrkwDqxOnWI/MUY01FjikHg8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HceMcxOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HceMcxOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B2C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 07:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740467333;
	bh=71o8d5V+cmShuyiwvld7h3etjnL7O87iwR9B5oYZUuU=;
	h=To:Subject:From:Date:From;
	b=HceMcxOeq9y4GOb2mIPQZB3kFQX8aI0Mlipaufvm+EZjjVkbnusIaVKXcUYr4010Q
	 ubP0gxzrs1ajjGSzbuyRq9ncrpFkKsY7zMV2dO3x5P9NdF6ts+qfYuQ8s7jzpT2ma3
	 UO6Caza+zUj48PVogbgK/CSrK+0I3EvfXc7OTRWMtunw/MafFgKV4q9SdHMdhEJlhY
	 foxWd9ioMIPaacmEJH/WaqFuZl4GA+MSm5fsSO55+TYpsvkoi/rdI4ZnPk4coYUQxA
	 nZZec7mCHJZ3IQl2b805KloQwncvMmbrkheJzBg5v0aGQ45+hxpI1D2Q69+WTrwQJU
	 5GoPUjQQZomKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DD8C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 07:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174046733359.3470.13364695919698662711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5242200912bf012f3229426f7ea9b4f2e81ad081ea4d135f7586da6d4e3729
Date: Tue, 25 Feb 2025 07:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740467333
