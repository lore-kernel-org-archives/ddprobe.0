Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558BF318BB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781246794; cv=none; b=RU4hLywxO5Wc26HjwDb1oZz/QNdtL+XQsl95nnjW0QRhTf986ONyGucll1hjesxxY73HLXYAEJnY3TIZDKfacP9rtcUMF5+s8FlaHTSHMivBKTttxv6G6HVNVybX0A2h0mpOfUsfE8ifiCe8M6qEwGnaRnUxn/AewXIUfwWZ47U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781246794; c=relaxed/simple;
	bh=BTZUuXiClixn7Bnp4cB08O/Et7w8uIsPZEcmcFnIjhs=;
	h=To:Subject:From:Message-Id:Date; b=LeIVduF3AQf1GGOO+jNrEbiyOJQcSR/9VtyRcI7wBNvzigGGnQub23dTQvGfaXGfCCgQkl0F2L5NI9pM/Mkt6HC6zp40XpyeqRvW0s4j60cBx4MVgYfdjGYmKXawiS2woSgVJyOXDAELlumiPmi/SrtWGEpSzEn8p7ypNc2jNJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iR+GMCys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iR+GMCys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6BD2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781246793;
	bh=BTZUuXiClixn7Bnp4cB08O/Et7w8uIsPZEcmcFnIjhs=;
	h=To:Subject:From:Date:From;
	b=iR+GMCys4w5aaNXDO0/Ht2Kkgr68o16t7aLKHOQlz5xdDyhIpXAkHDxpysmhJZjSH
	 EqjyEuDKWEk396whzF1MDSP2s56IfnlwOHGZB720JURzf6haNhy4KbZ+GXLgFF/9+w
	 8fPrlRy+kzB2q58SMXte4Cs76yhDF30vmUA4WNojNSZ6/5kc/jEVXsqjOV7coWn6lv
	 zy7RY+5tM7dl+DhrsF63gyKJqGh2qZigDQ2kEYHFUnHHX8VHIunEHIlG9FN3HDAEhM
	 9a4VW8Ww4vTJwYi9vPi9S9/iix8KZrCfU6I0LPRgqWnbI5Rn7rEmtcsRLSD2Gn0KIf
	 wsAgBJhDpDrow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDDECD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124679376.8544.13502361144689635207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a61ba5b98386395fd659e57cb434a9916f53e402cc094a31aa19e72fab9a814
Date: Fri, 12 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781246793
