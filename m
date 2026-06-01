Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535A8175A79
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780277674; cv=none; b=NExcMMW5CDyI1JMRxRYmyLdEeJkD0mHXWOpHQOTwUD2tCP3iHfZ48eIPBtKJClpyXaDg8RE74dBRt7aAqhSKeYF0xc873eXSIGmeWafa5hN6J3gsjmucveKZFTXXcmQDmHYJLS7gy3eK2knpenzs/7rKsKNY9nx41howmj4RNtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780277674; c=relaxed/simple;
	bh=RzNAyan9ZNvsGtihX/MjwMTQBAu6s6zMxbQ27KHXpq4=;
	h=To:Subject:From:Message-Id:Date; b=PoJsdodbiYpuJXPMTVX11ALZsNdnhSc/13KEc9zfWsvipAcK0WhFocNe9vrWX0OJGPrAX9QW7GoZKGg7feajuA7GPU+wdd7EgNabB6MxEHtIwyKrEfYf7ZD9+njTdGSeOaJJHTQt1Hyitu2DkpzuRk+SndEApunnGrDwdIw303o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxKlSajz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxKlSajz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC12CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780277673;
	bh=RzNAyan9ZNvsGtihX/MjwMTQBAu6s6zMxbQ27KHXpq4=;
	h=To:Subject:From:Date:From;
	b=HxKlSajz5udal/RZCiT87+Pu/LM9a8hTZsByE7RRTs2nOGhd1Q4ar8NEutLu+rA7j
	 zAHpWgiei7f71CCIDH87SYNmEvGD/h0F7hCi1xR/q4ITw/frnmMp7ID1mTgy+6kRus
	 V2zFChcr//U6rtBrcahVIslAZdrctgtzu+OyVvXK8T+WBhcXb1Xw9tu09HXaL2xb1q
	 4HgmsEUZiqaEepSht82qRYqbwSeBvCzSAjkFZ9EU5w/xplZMe9G401nZTzuNjcWRqi
	 Aue03+CYNi9eMxA7kExuxATlLXvzCZ7PgVVAXP0ZvrLf+snYVLwWwRZDu8hHuDFhNp
	 7fm+HCqphbfpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5786CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027767378.26264.2917642914292858720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46a7c5cb944087c558cc1f2787a8439e16f2c5ef49bf893351c68dba21ee039
Date: Mon, 01 Jun 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780277673
