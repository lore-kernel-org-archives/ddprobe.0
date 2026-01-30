Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D88346A01
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769810034; cv=none; b=TkZImfZjjehd5blodxUWp57GxDtRvTfzD1M4wuBcjP714vpEQAXMk1jDnrHDoaOZ1TFeywVxHPpnYE6UfLT9+nA7+Ea/a1i6G28IsJU3amjtCSIqkxQje8Kfua2b9O3w4pfEnCfpEnFzb8vywkSQoR9eG4cvkqNll7npWetEhiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769810034; c=relaxed/simple;
	bh=o6qlG+WPKABHk5ifqUMj1VRHY1Is/aif5MkAyuB1k7A=;
	h=To:Subject:From:Message-Id:Date; b=LEv2wEvcRR7q52TiV2aDhSa4xcMTIto9gMGyHFuO+nVI96BzxFg7ax96qHV/LJ/Yn34kbS83PPPdVtAjpobf+vmouz9od1QmfVq+pZurycLD+35UPcZ35/r9E66ExUm7psHcTECtzPdLdo9DwbUbhHfkQ2NyBaj+jRxM+oInD7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ubg+AQsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ubg+AQsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CF2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769810033;
	bh=o6qlG+WPKABHk5ifqUMj1VRHY1Is/aif5MkAyuB1k7A=;
	h=To:Subject:From:Date:From;
	b=Ubg+AQswjnYaJOD8tZBsZfENM4QXfALV9E68eTlqTzBCUkDIv3PoUKDK+2oCg9uZp
	 IlFTb9dbdHH/aoEhG/ONZFYedfl7whjqmm2d7zWsSIl1qqCXRaHKbbgoCrdIqaca8z
	 ZUh/P4NQaCt7wGrJvCYmZJIxP1Bib5iWvRhEJzYpJawm6nzGjf83+R26l3KT0mG9pn
	 +rJe8mHs1v3/ns//umGmdB4PN6eJEEmom9Yn8IF7aEw6ewMs6wbzG7ac3jEIfR/7tQ
	 cX0ASV8BAi8PVY4uFjj2whlNG62uK1+D/9nQFOtgjWNnWW4uyXvHw5AcipBBZk0nB2
	 QcqMlgpbQ/SnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C6DE6BF3C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981003358.9471.2929800413181640782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ccce86bd7f2e1da61f5357edf84bfe26d488987e30b47f26c55854afcae890
Date: Fri, 30 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769810033
