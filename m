Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACF17603F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732242954; cv=none; b=M4h5u/HCG+MPZn97/cmQnbCvOyel33wsnTxG4usIqOpbm1F5dO4riJYxa+g2tU88YQjK8Ww1j5COYu2R4U+4bP3RWq9SZTQV6zRr6DG1Bpqi6+vUuz3S0vEWpCALwJCzLIeEDi3sBZYSBiyO9nySu8ZqGvas4n1FLsLOnTu9LxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732242954; c=relaxed/simple;
	bh=HPeRo+OzA/3Off5A0Cc3T2LJkbut32ybyQBOHNCwtOo=;
	h=To:Subject:From:Message-Id:Date; b=irB4zBfuUeXa5e2F1hol9c/ZQvfIKK2EZX0ojcCvgjDi/2UTki68pcxgThryw2OQHyvTLWrakyJCjAIkIih9aFgx6CE+vRgsbSQL/Yl0E3CJns++5LnynruhGbeVqHY8aGGOchg9yMmJ6dcAx5q8u/D0U95fAFLhwYQhv2wz1xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktmNL4JV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktmNL4JV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5380C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732242953;
	bh=HPeRo+OzA/3Off5A0Cc3T2LJkbut32ybyQBOHNCwtOo=;
	h=To:Subject:From:Date:From;
	b=ktmNL4JVwT+NaoLGxgiecnX65dtJntlCXJzEboGRQLWVPc050mQSZu6uLEYviJJRx
	 B3Fs3TULiFImoZbbFmgtERNKyPvbuZdZFgB6GySqS/byfehSpM+OWK0mLEL3YDIQbw
	 wYmfUj6YQ7AfScTlL7dY2/kuthYTuSa5ZCik2dwIF3qgLsy2laKmzuSKtHapaI2Cj1
	 tXdB3TAZwa3JKXQ46tkbeo2n8V10D+McVyG8lEwgrd1bViRyEvrEbsmVzcv1Z7VHLz
	 xQiSDax5EE95fvljl7sss6isM0tyM326xjB4a9OcSx1Abpeia8rlAH5rnXLqBCd7mR
	 u0VB4Ewv6Hidw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90973E65D14
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224295358.5179.16693634776833065720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49f82a93beb32dfbbcb88cafbbae00afc09746c56a9223a96b17cb7c7e935ad
Date: Fri, 22 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732242953
