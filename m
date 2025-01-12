Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493A615575D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736718354; cv=none; b=NLfOchaxnlAYOMVxoUtKf3I0UZjdFpkJ+QnLbR/Rz9mf2qCqNtziqJ0pywqyZ61li+jiM+oDNR0jZDaNd1ifRmQMry+nDC7hRNqEZP5H2Th5/VKEjBeqoRJqBY4U/h/Hhh9AJnmVfdlYBKU7ZdR8XE9rTLLMnFzH4LKu+J0Tg0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736718354; c=relaxed/simple;
	bh=B7T+yQtvgWaa19UjBD5AHocNHTRd4hFzCyk+BcqyPrQ=;
	h=To:Subject:From:Message-Id:Date; b=TrZyxkaVzqIEWGupmDDWG7VqLU/5qrkjoIrtjvg3LDwoe7Lxco1W9KkOj0ELewPAavpgPMSE1QamaR30L1yszx/cKtf/OlgB/0ufymPKR+tjFcOJQ0jFObPDWYnU9wYWc3fBS7t95qUGIXaDy0DiT4S4dLAN8ls5yTPRNHJcqj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teZE/4KD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teZE/4KD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF61CC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736718353;
	bh=B7T+yQtvgWaa19UjBD5AHocNHTRd4hFzCyk+BcqyPrQ=;
	h=To:Subject:From:Date:From;
	b=teZE/4KDucYEx/FIqUEMfNzaSrpQF7pqkrih1SmczgfaMDmpTMfSVminTeswCb8JC
	 GAM8qBLsA1twZmuBfuLTfYbgx7XE5p7ZWl9/+z6lb94ZI2lDns6xtp0nq8Tgyrz7bI
	 tXbJpcf6CfxszwhPjtqbaO18DNx84m5lWrDi5CF0QRTUoM2ZhGiYliJnJRkeQ7t+QF
	 KyEGODfsuo6xbU2Gf/55sVyHagheVdX3J1JTAbm9w9co/CUJD9rZvgFiKOET9KG/ad
	 mevXTEW41cS1tj6NzXIfy965+ElEOPv0EztcBm2RCo0+pPfOpuGhCgvaf63X+qZtu+
	 a2jWe1hiUoBsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED66E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671835362.5048.15957698890122831579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa716ab77fb1d935d842285c18fba3e5241fd35970b867910058a9e0caa2570e
Date: Sun, 12 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736718353
