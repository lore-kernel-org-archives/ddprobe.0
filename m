Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E4378F3A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777177054; cv=none; b=r9vYvf9VvOv+TjP0SxCF4JAb+IYkBXCVOJmW/CH9DNHNegzxzWzN7Va7T+vlPPeca+w1ckrNSBlxb5Rywa7hQFr+xWolSOPT8U3wunW+YVAXUCDPX+gSU/lHLcbdesXieDQVfOfwxXnPQWspEipXXT9RrL7MsHHHLxsjqNsReJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777177054; c=relaxed/simple;
	bh=gEQ0QKwxGcLFxZ4yDTM1euPTiHowfkQlKNHVraYKlqM=;
	h=To:Subject:From:Message-Id:Date; b=ubC6ojNzk3ZEbNfUpgLfDG5dmMGG/K67LT74or3PJ2KqaQFrdbgwe59gwNdGrCWTLzFxENfbltCSqzRqoWSZNtjyQ+/2i4AE8B7f4WW7m2mIyCJP0mPBLj3Oj3vS0TAvMJhgNac1egiWXrmtzog6Ens9DJbV6TgLF36Omv6z1HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzWbxIei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzWbxIei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFCFC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777177053;
	bh=gEQ0QKwxGcLFxZ4yDTM1euPTiHowfkQlKNHVraYKlqM=;
	h=To:Subject:From:Date:From;
	b=DzWbxIeiPS3wwKM3U9zeOGfulp+1ZljnyGPtaSxPkF49iiwnSfYdfcb96AmkpSWuk
	 X9wbR/Ig0J3ILh9Q19oLr4+UQVlt9NuEmYSfaz60ZMORAyXy3uoqSHDUnmkSlVPANR
	 m8JGSVkVtHzhqXxaGmLqs6U3gh3Kyi0UbeBBbXKWnnc8oLFtiXpRF2MHGkUwAFqjLA
	 sJj0w+ldvtpi2DKUHt7bbZmJgmUVRt7I0r/CwoG+XNCV+dGh/3veVC1bsx0UvytsO3
	 qmP/9MP3xh3Yiri7RiB53wt+ALwQzif/cyEvFE/dqrLNOzUX3qwnGb51BCOv+7syxj
	 mDWmAqHB0iiaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0C9FF8864
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717705373.18436.16633939851120547330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596ce84ffc00602b22d9c62bd36f905772f177c22333fc3f4dd08fa9553ef1b9
Date: Sun, 26 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777177053
