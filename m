Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4B4394794
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789635634; cv=none; b=NsMrqOqAqSJ4vQlC+yaKv1/LWsHj5r/XGrL30LGGhe1No0wz+/QU/qH4A8R+DJHTJQBG3EW6SV4BLMYZTsFOOHX3x6rHBBQsLl84yz2lwtoSJpjs4imTrMmMQ4elWXRQdAYUz8jlokUVYvnDgWS8iK5Q9ZZ5F22pdFMDjBhlaVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789635634; c=relaxed/simple;
	bh=DGNcs/aVMNVFwqMWyqoPV1wnMd6JZF3UxKB7nYATBR0=;
	h=To:Subject:From:Message-Id:Date; b=Da2/Ebj6UvPJzd0671dn4aiJeFWe1IuA+gTjEst2Td6fUhXp0QHKj4YgoFsPVIZ5j1Y1Agyun/hMn6is249kI7CVWlAskHtHMxB45hAIozxZA8uuXHy8IkrJkRCppizTUvLDuGOdBNytX4FxbjhMYfH7evmJ+ptlXgs4nF+OCIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4UzbZr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4UzbZr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6776C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789635633;
	bh=DGNcs/aVMNVFwqMWyqoPV1wnMd6JZF3UxKB7nYATBR0=;
	h=To:Subject:From:Date:From;
	b=U4UzbZr0lcV0cDfe3M8WOY37dWYa2knvRkL5uRoOJEAjrR3MeOoS9ntfFygNkCWoG
	 NRlAJUoZsJbQBBpXq3JMu+Ojpzzar8rjSf4NnPutVWaSDafo7fMVBbjEtur2h2Hjal
	 e8snax8HX1psAsuaeaO8TzVBjYlqrNsM/tN1ipPDDsdVQbvUbiZDcPw9Eagsi7ySYQ
	 OFS8Si6F4Bpvxmn2KzW2CtD6uOro0+S+CbJ8oWpkHqdA6oJBxRtq/zMuRnPXv3uh0p
	 y9M7YCTYUHXHna2fBtcZe0VQ1Qztx2HIvn2KYEDvIkityN0c+N8i/QX+3uo8NcfduM
	 Gyfv6hg23X52Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFB6C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963563370.25270.3401432321901923042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1567b12644dfc18f5b4b306662f445c76653c545cd9502e42c0355816f865cb
Date: Thu, 17 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789635633
