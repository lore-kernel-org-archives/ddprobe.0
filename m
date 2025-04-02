Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D7D78F44
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743571194; cv=none; b=pvoAdFMTdbQbU23RVpylOyT45VwqdR1cpyugEjDWtBkzeuExAnqdzBNtYnPbk5ewAfpZLt6eDPxBuiDFWawtA5erRMFtBYnTFBDbKkq6FMOyMyMuSi8pf/jc2UngIUPgn+OxuYPGPnfNkh6qyQ2avTXcvfpHpgy4o4HoShPcy6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743571194; c=relaxed/simple;
	bh=r3twSf02ym1Zwlcchjr2hjAk9Ibp8yvhabD6UuXChuc=;
	h=To:Subject:From:Message-Id:Date; b=SBhdWfdboJYZqztbyGsWQ1Gvp5YFRctFN+5ErHSawsnmc3gXBVz1Fpj8ZnL2NlsYCV3EcCIHHAqb8jDVuNc4pa0PC3eT1UmUHrzGf0zkgtFXtbxo42L6OLM/kZoRZo71akSOSO4OlgcooI+1/u/hIq3J6BmUu7dByelG+mfe9k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af4ZSVck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af4ZSVck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A415AC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743571193;
	bh=r3twSf02ym1Zwlcchjr2hjAk9Ibp8yvhabD6UuXChuc=;
	h=To:Subject:From:Date:From;
	b=af4ZSVckCz+TSQmWPZJtTcIuhuRgh9p80voesa47/K/tEnTEg9scGXea4j2T2mcxB
	 mbE2yVJLZ2YBUtL7TmpI+DIwcnbHObZsoVinaiAx7uJz0mWlujLq02oIWirfAzzX+F
	 G7OKRtSAfn2+hOs6jEnUOnT0kW93X/dp28qNCUXD2FH/7xm5A4N4f3yXpVn5aqihQo
	 bXNFYHpoxVVhxBxDrzPCQtKGczjUJ/GCAGjVCwukl1rkTDaSaFzbiU4jWlQosepfrC
	 fEzfZP8ODsift/Xa+FeYrRsGfQFBvCJkglgQ2TPyPMQg2ctuHpldnyEoJ7Cc50GWm3
	 TgxcgbmRlPjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9EC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357119358.28957.4788414638631216872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f55e37cc888d04057c7d51061a48ede3177dcbf30939c4cc55ea44536010e37
Date: Wed, 02 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743571193
