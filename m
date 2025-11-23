Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507B21DA60F
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763896914; cv=none; b=irvGwmHNMWzpli1SdRbcCP1R4A9uW4hlsN3LTjS5E+AG+zmse6X+L2MDPfuF6p8zdDdoSbFHBQkQ0dTD1wtTsKY5WO72CElMN5qiybRjZAXK1r/vM9T8A73Y2NxAB2NA014DWzC6ym0A78ya4fC/JrKHfBSN0AUEhe2RD2onjr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763896914; c=relaxed/simple;
	bh=asjVX/t/n3GHbdeHniUnLFqE5Xu69v2awTwG4ePS/U0=;
	h=To:Subject:From:Message-Id:Date; b=BcXrkEore2ODCtvUME/pYBoJ5dQk5501jQB/cpL5EiAQoKCb8rUW2NCbFGHsCL5KDzAkzsOYDrUhBrCY4nH6ItKo4ADrZlk9xXNuWkMXu9aDOacCzapOWwUl8od6mJhijCCovtc16iV8SA0gZv614ciCgLmhkHTorjl6lIkEw2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ih4DFnkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ih4DFnkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD357C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763896913;
	bh=asjVX/t/n3GHbdeHniUnLFqE5Xu69v2awTwG4ePS/U0=;
	h=To:Subject:From:Date:From;
	b=ih4DFnkna5G9Wmn1DCIhVv3jzkkEqPW1RguphponKnWUIdpu8WryXQGzzz4w15+9Y
	 ftR9mQL3Zi26QdxQJF2HsTkrjHjD0ZQJe2+9bklIHRyOUN5FZH8UMzNNRpLvO/lfwL
	 qm0lYBG04A0yGIodJ96Xx/kR745IBODhGhdZSQSb1i6YU6tL2fsMVzbgpNYy2z/XV2
	 fozQfO/ZvfXVV8hnd8ME8HOn75L+0VvcF78JEThkLBoZE/WPjdGjv0eQc5TQXOZr0D
	 kiNZ1wXf8W6JeVgRDuqC9sEbufWmmJImPcPl6knnoGxNQFtjYz1G2DWq7M2CQM6G6f
	 vwtnjsAur0f3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9886BCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389691358.24940.14044237262753342459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df16a91ccb1fed351987028cc51ad89353d862ac6cfdd256a79c3e23145d9cf4
Date: Sun, 23 Nov 2025 11:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763896913
