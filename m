Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBB5221FD4
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758104395; cv=none; b=k5CDAdOHLnJq6N2rWw6N84MYqrQuwHw+9htBEznWkKigEm80TwW36p8UHUMCOVq+sJSVEsiwWCVZ+56eu+ULZhAud5ppuKn0kaZFnnRTZKZsJH+IY+FFyY8PCCSFeGk4uv3M3oqdP7GHQ2LZESF0UeJt23n3GyPUabeJ//K3gZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758104395; c=relaxed/simple;
	bh=2sWLHCBlavlJ1AnR0rbtAjMtVCZ/YKzOJ1fFM+zLO+M=;
	h=To:Subject:From:Message-Id:Date; b=m8D5cXYYV7nHd2L7x//FL4ImPlYG9eJVuD6axHMSrI61SwQBddRhFztKd4vLCIgt7pf9qZx1BEcbQ4V3iSzZYdXYid8KkjSK3fJvRq2eTKIysmLyuJ6VqVYlctcGoNizA780FceaWLsYCPZWXnqBaHI/yDpQ7mkmj5DBgPangPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ7d3ztE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ7d3ztE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9CDC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758104393;
	bh=2sWLHCBlavlJ1AnR0rbtAjMtVCZ/YKzOJ1fFM+zLO+M=;
	h=To:Subject:From:Date:From;
	b=BJ7d3ztEW3FbZSyeklPTHSRY9iAKpYig2gWfFibxTqozgUixS25EfmgOg9EiL9pGS
	 Nx7byQ1VHxJSHfWYxgvIKGaWQp7hPO1QEmZJQUCNXlx1YPxN+p/iSySDVydaUE3mri
	 rj6M3as0311cpalhmCsXPfmxnGdvSz/VZ0I7eZEH4bSggh0wMtrsvyMg4uNWqFFF+K
	 p1qVr0P1xou5vmWj5EKK9YwFTErRjlGP73INvcwumA1TS16vH7fy1WjLQ76ZRQjwge
	 SbTfCjd4MmA8GSUKgvatVnbvBWjmFoLco30TXBQKz129/EAoK2CmxpOmrg71GcEEGe
	 PFb/oCOys1EPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B4CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810439358.16796.243013408420994707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46db481ac33f8708448301324afd693a76c3040693b078e26c3f27f9d21e7421
Date: Wed, 17 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758104393
