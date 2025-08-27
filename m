Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381AE237165
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756330194; cv=none; b=jUuEzCGPRdeNhR1+7T9liBOyl0rPssMH6QvIJ++J46j9/7v+oZno+IQgC5m7URAl1f5NpWBCC8/R2TVqzbv0dTXusGF1C9140MdF40Pfhbq4kIcJKC6xIdMSRviZDxDxOZ0y947Xftfy9A6e9h3/h6fI3WOkogi5UDjBMong+E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756330194; c=relaxed/simple;
	bh=KXAbk6giL08cI3Y9c7fcn0rJSsDO5gkwDquY0H+ug/8=;
	h=To:Subject:From:Message-Id:Date; b=DjsUZZMzkCI7bv40phTcHnyOLFMndb0iNxxASxCtQdBNPIm4PH/vELK07pJ1qJrQnHgkAd9weKRrNzHpJ/mSZTjmpzAkPFH1GHOhJYdSxJh4NZUiViEy6gnMgjFCNeOc+Y8cUVyHgjNktwlryI4tptGquDKVLPH17kcuoLwJr1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rq4fD6Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rq4fD6Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71ADC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756330193;
	bh=KXAbk6giL08cI3Y9c7fcn0rJSsDO5gkwDquY0H+ug/8=;
	h=To:Subject:From:Date:From;
	b=rq4fD6KaEV3JfegTGOVXGTc/FfMEJJFF7zbuetmYw9BvN4z0pkWZQo16kU4lVgHoD
	 rhfpHIXFKOHD4ZfuIT52m/B1aL2O5RhvpjwiW5SX92lkqyqNGwk1qfKfTxw5A7HDfb
	 NlPjfw7B6OuluYAxx4e3XIz0g0qsyflacju6GZSLNQSnKtCX4F34dfPN95GrsIGqPl
	 LEcFggL9A0ntsi/hg0yNjWCg6qdAWRgqzIS/1m15vFhNd7PjDtdbUf4ALD5TbDUtCJ
	 8P0PnJJxyHpJ+iXEcqoCw1yJueRz+4pxpsBvucvYKLjWSy7M+1hWbYncJTCn9ap9or
	 uZIus71VUpqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B06CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633019357.25876.6517475829293629839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c897f9345b24b33480695f0b524c79041c934843d58b30b632ccb5e2b189a6c3
Date: Wed, 27 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756330193
