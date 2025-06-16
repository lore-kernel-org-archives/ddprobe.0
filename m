Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ACF42AB0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750060194; cv=none; b=Z0J2wFxRV4T2qBCCaHHUqDEHOaN+rYlGjjqM+FZ+KRlLhZrpWP0vOb/qNTXS9rl26naUZoeK4zEiVQbrIZatuWGGIDohwyZvc1BZwZwrz5Ft8BgTHOFiS1z3FWgpw7XleBShSQ71eSzD/4yGjpzzDMF0XPF87E6Zx1IXkt9N3Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750060194; c=relaxed/simple;
	bh=6ZtoAwqPKcIRrs0HKqyFO9tCPcqG48lYTNQfhG5orSU=;
	h=To:Subject:From:Message-Id:Date; b=BOsIHff/S75Sk3SxrEmLrm+nheV5FN2ec5Ovf0ZNRnpMmhU9idfOgeFADFOEU7xhhwn8f64Y3au1uViW+QBJI29t9xF3gB8haMl8yVVoLyRiAsyhRkOu/HkRzsWhU0sWwlpU1Xw2Oai7xn6fG9PpkU7RTOXEt4pXbzfwpUoTMYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrHLXSpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrHLXSpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4010C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750060193;
	bh=6ZtoAwqPKcIRrs0HKqyFO9tCPcqG48lYTNQfhG5orSU=;
	h=To:Subject:From:Date:From;
	b=WrHLXSpV9PMVLaINGob4aBv5qzDy08HMD59XStd+aZE47iDk6Q3Z/xPL5hPHLKnCR
	 K8YLH02KeFbUrBD40G4gRIBstgnD3zDgVygvM/n+0D97liWmSXw/abq+W20OL+Zgeb
	 3xOQmuEbMZwQZSkZeS05ThBbWk4v37sTGg3XKyiyjVk7H4W1BTIegk3tV5d3ZjUaaQ
	 dxLRT01UHhuOUxFEIOd9lCosocqtlWjVEYcH1NlboYo3LWGC3IOxaLohWK/gDSiK0J
	 ZnpA9wSuZP3hasTHSaEiPn8QzXfPq/SZmk72c3As0s08P94ycub/90mANswUnVKiGN
	 zVLtO60DuIFmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AEBC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006019359.10153.3293113575780401704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9855bf54461f7d2bed1d3f10678cb9361d8559af7b2b9db4ec1d8a4a6bacd425
Date: Mon, 16 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750060193
