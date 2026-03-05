Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD2B29CE9
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772684094; cv=none; b=P5CBagy2iPbAnMOAB7bBOEaqRzv2C6yeAVvlooAv3hq/Jk4jS8NDRkZR6BkBnMq3W5jE2PZUkTCDaLBMF6yckCWB99bV4yuZrZd3zBLeooz5+FALHuR5jXh7IzUAf5JRwxPNb7M3kZfsl1B3emyQnJoBBRU7/9TAj20i6hWLe8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772684094; c=relaxed/simple;
	bh=QwEIavEL0MqnMhtemx21PoMzJcuIFLIeVkQyZA5KCbc=;
	h=To:Subject:From:Message-Id:Date; b=SsXv83WDzvJWEJo9vxxGobfin4kI1wukOf7XYCe2WDgO+l3moum0nJh6mNamGMD4YhdXE1HjhGLoJfx2FctvJaa6yuXy17QPT1VatN4rpHHf3N2Vr+nBAUGn03SMF307PHWHsqu5l3EUaOhPYkkyoW1rnv1Vo0P4wSAU8qNZiFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opBOLes6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opBOLes6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F1EC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772684093;
	bh=QwEIavEL0MqnMhtemx21PoMzJcuIFLIeVkQyZA5KCbc=;
	h=To:Subject:From:Date:From;
	b=opBOLes6IAx7o4KzRFWbY/uquBKgLW1RfQIwhCdIdYtcl7Op0mr3dCXW68wDl90/Z
	 MoEYuQWcXlXV7ja6LqWsEs25bzM18Cj+idTst3pAGEnlxwMVWFyEuikUzI3HtCdMnE
	 rL2qqM2zL0ZA86MuiCGbk6/h7gpcoxY01iRO3Zz68bTX7Rf1/DquyqWfD9fDMj59iq
	 +wDiOYzv+eC/z2hIb+P9mFPLb4UrNnBgQjYQEIvLDU9hxWc1CPycn2LFEaUkdNp1we
	 AxpWn+tAB79b0UvHAmFGjaUqVgdCsKMua+8eLwWKknc0Y/jKb+JQoaGAoBFjKVrW45
	 cD2E7fIt8R0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94853EFCE5E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268409357.27558.7444170996580544692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140d41c23a265e443657508d7c5c02c9b48c9de9ccbd282b20b0b3a59f6511a3
Date: Thu, 05 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772684093
