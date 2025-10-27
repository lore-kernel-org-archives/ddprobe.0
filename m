Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE81274FE8
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761575994; cv=none; b=e/A0ZEeVVZ5fyEJf7A9uUwaWPTbRYWBfCl6pz4wP9/6qxpSSP7dvZ41dJBTZi0HxJffy/ZhEA2tiqSSN8MdD4wF1tHCtnYG+8iCOoP+PHwlfAtMsVE4ornOJfoxMeYrXJ81RR0OyP7RopjQ3sh6coh07dUKBk+CX5VIju02O8lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761575994; c=relaxed/simple;
	bh=5+Dvr77XKsFsUbGlppdQaFxWQuLm403PNrgRaYdUKSI=;
	h=To:Subject:From:Message-Id:Date; b=MURUjrc5zbJWzfCpqNjYBU4Hs/IzFnVaNMyWsc82c1ODB374lQo4XU7+euokeKTcfpgK/90GLVOfrg2AS0RrZ4PrAX/KJTo4s4lfnvCONh4wNfXk2kYf8ZmyfluiPOidgy2qwlf9WeTUNFKyAA+MxoywIl8E4KSTVhI+BvVuPE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVtwAwlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVtwAwlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38D2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761575993;
	bh=5+Dvr77XKsFsUbGlppdQaFxWQuLm403PNrgRaYdUKSI=;
	h=To:Subject:From:Date:From;
	b=cVtwAwlHh+LCdrte1C4/sa+Op6dZqPp3igYtl2ozhG3LR9r3VPsnCpyDJetfrFbcD
	 wGe/s7K2lyfUZ2D/6d7eCIe7q/4Niga7/QxWeP/q6Uo6n+siWO1YwsnAlMB1C8D+Uu
	 v1cgCtVLAAOledWKGNUGykJ9XeGjBlKuDfoxkTzBbPUbJfWzW90pPJ60/fenH+yMeq
	 X1zJdxklaMnDmwtZaTK4zrRV7tBIkxjMFNipJnqZOJuwG7CrAtDJnQlR8HQCEMRyJK
	 sy55yP9XNW+zAnHsUwy2Lh4jNmvz/QU8ulxYWdhs3pHNqdcIjG4kE9fBFAY9qYlykx
	 fSuk9KiXyDqXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91644CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157599358.18764.14318606951588893187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65090ad03b1b4b54d039460f5fd62492959fb87a45e25ff0635d1cabb92fb66
Date: Mon, 27 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761575993
