Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2361F20B1F5
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756577394; cv=none; b=CFW7Z8St771vxOZ0sutgFeMAmwrlreD+MFQFO2YFdPYxsO/SqZVSRio89v6fE3a7Cvttj8eQd+Pk5c2akNJkK/3M7NxNTFK04+PiJn5w60HL6CF9i6Xq3ECbj2zptwNp/fsNDhqw+zwRgU5gHxyDxe5CXyWNOAbYluinzFhFcr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756577394; c=relaxed/simple;
	bh=+4NS+/o1sh31AvhyKnoPTVUbyoevtya5Y9vHPrNOWf8=;
	h=To:Subject:From:Message-Id:Date; b=nXYU0F0sNWBuzO1U9BMac70pxFXBc8ReI21yY5FJdzWj24ckxBS9Xem0PiO/vCHaq0AVAoHcYN4PKtBrHQCvCAgh1ci66kWbOi3ntC41pqUXOQlm0cyUaGWVdn7UPt0go0R2n6rV3CHyXzIrEtoGUND1tOJ/pUN7tlLpV/f699c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppRYyVpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppRYyVpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E164C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756577393;
	bh=+4NS+/o1sh31AvhyKnoPTVUbyoevtya5Y9vHPrNOWf8=;
	h=To:Subject:From:Date:From;
	b=ppRYyVpAAXGzBiCXIgfIFHoQ7Pf/Lis9vqRnsuuuuT7exISMs56QH4YLfji6ZaVYD
	 yglwiS9xKbRQZPccZ1aO87X+8vWnLyu0nwsOXkFYBlukQoPndud3EP4/TkT/Q0Yt87
	 3ndNZYHUjB+HPA5WFJYFWl1n2qHCcVpfJVvCevTDb49NJydbo1ccTZFf/ybV+ltKWM
	 lgiCKRy8e4krpoiX5QXk6EqyTwXHx9ZReL3GxbL0ciUN6+AW5emLvBOOqRlGuH/Kle
	 FGayevjxfraRB0nlys5KJtLJegj6kuDw9u6Mb0NF/1OXO/Syp9+wR3pN1SFWYL9iG9
	 WHy0m5U+scl/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC45CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657739357.7432.7627961289028374989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e33ae16bf7e49bb36379495432297f115749f9f02f3be87f13f13d96fc0ee9
Date: Sat, 30 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756577393
