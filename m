Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E8E1BF33
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767851034; cv=none; b=Yng5ShThKxbA7m5Q1xHxdxTvgZNCWnfdD2H78X9ZEaZ/2oOiQweWuI1N225ONihCF6625FLdWll0vcDSJV19HR7vjBOAM9zLuUJWoroUTewXA0xZWt74iARFwXIBC8udxdTGFdyZW0M0rLYbI0GBoGy45+rxEqRHkiqki8+4jd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767851034; c=relaxed/simple;
	bh=bbn6alXzh3N6Hj2yyDXbYdXufMLZyc2vWvFCdVhAszU=;
	h=To:Subject:From:Message-Id:Date; b=bHuHP0hmdOr2KPGAp7lYmOIXp44gf8ykhYE0lu3gYeXs9stUn2GNG1t90lmT5X4vt1zYFdLrVfnvB5mvJ3+KsLr0NU3RksQ6ACtQlx/urALFJWXhX8X1iR3t4k1uGaXjBqcJyTW6V/nrAEYDrbH8FRC8Rrsf4k1WFjgThHwUB+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTaNxdBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTaNxdBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C52CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767851033;
	bh=bbn6alXzh3N6Hj2yyDXbYdXufMLZyc2vWvFCdVhAszU=;
	h=To:Subject:From:Date:From;
	b=gTaNxdBN0hGe42jDGulAGusV1NIk5a0k2sRM1UHAcsVVEdj0y4CwZaEP+tSiNxvn0
	 /1CUuQQkwJ5nZeUhsFuuU/tbFMbn4ZQLoS5dBW0EecyfXgPis+6KZSTTqNZeFUOXcJ
	 BIvZm/KIHOvmZMEnqF1LcPNVwN5uPdxaz9lwCjbrp9a6MlBoYqPEkoZu6xm0uUlOIT
	 Wywqv41rVPw1M/mpMpM5zg+Xoi3d8kHn0OsmqcNCIfQ+Hojge6h/cUQn5fFL78mHle
	 dW6CW62s6gwwmMUvWfClUNbA7+K3N4EikD83ONguqdocA62tKCyrTfitx3qIcYFlrk
	 nAzzs9i6jYQEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC19D148A0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785103357.3636.458774732703836376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f62f410a7ced88f60e2d006835d4fd442189dd7d2779456b8303fea45c5168
Date: Thu, 08 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767851033
