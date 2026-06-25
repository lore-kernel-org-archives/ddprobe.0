Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBBE3A7F41
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782405454; cv=none; b=rv6YQbcjl/AnBjjusAMjylXselE4AYD8/+Q85paFeX0sT1ngZihiYwtJj4WVyj5veiqAJJY7DKTpDhSjfKjyt5kFGGPRZqHggbZ8jCqMpKQaww585+pHYO2BOZZVZWc5BFgYd5+Co9vIfWayLF/13NegsVwd+r6qIMAkyg8dAhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782405454; c=relaxed/simple;
	bh=OxwEm2vp6Nb/obclKyHLbV7L5mn0aQzvePOM1oSIWBg=;
	h=To:Subject:From:Message-Id:Date; b=sfr4bPUjlgYWhOKXXpG3V3oR+9mAk+XXlbeje0AcKpEIRv6o3aJosJgT9E0Tr7fpX6fRvsecVOTCqp70jyYQoqneDXOtdRcCAxOhnyzcyz8bRuuBebO9aXoQ3zC1sGztMAINrH6hh5qONCOWj4mVVYB0dxYqBRN9IFUyv15Yu6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drdYedwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drdYedwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD07C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782405453;
	bh=OxwEm2vp6Nb/obclKyHLbV7L5mn0aQzvePOM1oSIWBg=;
	h=To:Subject:From:Date:From;
	b=drdYedwIP8EoPxlpgVmkb2t2KgRxi4srXXjdsrf6+wMo2DNpoTnMCxdopF5s9mfEe
	 Oq6XbSEkB+tFpU+3x9e6NzlzJvSVysOPQkggC4xiuYYSFoh5uxFFuGMHDK9RCz34Ce
	 UKX8zpQb9ZgwI4C9o3A3qqp6X0tj9L/gxJ0uaNTYU1OvwTGFLlhwtz6/HgLOU+dpcM
	 P9JklBMReT2gUYFl//ZODu5rdoxNkK24IQ4ZA7Mz9xQ8IFBVIvlcu3IH6FXSm9oV4I
	 puMaQVEZqcI++6BS4/EZHxoEbNbf3aE0s/ZxvHMaNYVTGxbRzlVqfOV4MdfX3rw27o
	 BV43pd+TvvrWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE08CCDE001
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240545370.13600.9219630285820141133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b508253fa7e5a350c8b5fef48250e6aa1405deb89b255a2dc4331927b935c71
Date: Thu, 25 Jun 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782405453
