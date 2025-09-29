Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD481A2C0B
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759114194; cv=none; b=Upyn2YCdOcMidYkmlFT7L0GkwnlyJwxpvyfwgHEnXWJqUwQCez8O3ZyV1HRn6QXhw+q+wWyj2Mlpz3EP+1IBij/twBLc019fGogEgmdp9RKBSz3yhwPhFHpCTCK4n+PYZHNSj5xHcvaLitzPtr2U5XHHCCsrMZS1m0hao2Hd/A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759114194; c=relaxed/simple;
	bh=o0qfAN+z9L0NWPXn60kiz11dgUilw9rln5UUq9vU7g0=;
	h=To:Subject:From:Message-Id:Date; b=uVx9oDol2QKCvFagsugUYbev7ky9qEQDDeyFb7grzMOAFS9Aqt0UD2L1Rya4b1LlWFboeyvGYRXsKrEt8tmGJYJDVltse3/Oc5zvEi7rLy6lxkX0ycuVTQYGkpxv4iRsh8sbc4+OaNfHa4L6RZTCq8aROIxwQb6lfri7PS+T3Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMIMm+zH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMIMm+zH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B2C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759114193;
	bh=o0qfAN+z9L0NWPXn60kiz11dgUilw9rln5UUq9vU7g0=;
	h=To:Subject:From:Date:From;
	b=aMIMm+zHn7nxz9j4t3XVZt1/7vRkSbc228OobOymEhFRRxLi4GpFkD4hcQy4Eax4A
	 ZonMjBxuUW7SdO3NZXbuu2z6vJGJE9tAcncuTlztPW/MvFEmf5W/knzNjIBbgMQZpO
	 RFXGb6t6eXhlSFBFsOHH6NsvqhTSPrLZbQnB+IQAxxmdpt5KNxQTRmtQ1TrV/HwpEl
	 ELgQQMzCZvPtWwPiaCWy3wkMXA8UaqxHGcBTkd17CZ6RdhPjyu2rW0n8G8o//gwBAg
	 dvHbzWHfPZatO8okOX/V1GQRcsaE2Cw7b0m1IRVTJ1WohfPndTPHOtOM9T0YLw02Ln
	 Yuqkw2nJOxv/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C7CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911419357.30300.15241263179309931426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d336903ee99e9398106d384ec030d3f821032fdb36d456d6519f0ac12e537b
Date: Mon, 29 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759114193
