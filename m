Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2432528682
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750283394; cv=none; b=CenZafqsyXT9fOWj1jLtibMfV9Vod7pSOcOsd11yis2guu5kgTvnr+qLcYwW05BkEgBcJN9yjhcPGm1aKAStVilPweSPJsejYj8JSj0Gvcp8OwIa+3aC9C4K3W23gqh5HaFd0pbfpA3ERkMsGdST4UqV7RGme0WpBJhbZUYYH3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750283394; c=relaxed/simple;
	bh=Afz6E5jZ+igUqk+mO597SzRC0Jr3zp3Uv1Je5/eQGQc=;
	h=To:Subject:From:Message-Id:Date; b=ma74CwKIEsaUDNhFs0/sA/FTSjxW62VaQV9/19x1gfw5euouKKJi9uXWtCAdq1Fr702c4uEsX4BOQi2lgo4bPH2Qd6MtTkTw+GyqZLT4pVeI4fc10/4Ux/ojyBEb8aenpuPzwdkxF1LLN102UYhEDNPe3H5vPDHRyo2fPLyCye4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4x7uUU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4x7uUU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F8BC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750283393;
	bh=Afz6E5jZ+igUqk+mO597SzRC0Jr3zp3Uv1Je5/eQGQc=;
	h=To:Subject:From:Date:From;
	b=U4x7uUU2qXLK1TOgOj6d+EF6d9JicWVDGqPhUOFfNLwDWdIiy75fTohH3WLvefdG7
	 DGGxRIonQ5ZoZ+OWBMYFPNjb6d7c0BuEaqN0PlWVAXFTOGRVJ1Ai2kizzsbEtBjMf0
	 ZEfMz8ak+tDM78FzZTGy9wYTYcHXc29kCXIYKqd2/h1LGgjrpXHlf7Tq9ALo5w8q4Z
	 GC7Vu5Y/l9IvIUSVVFRAOfx01EMseOuiVuZV5jVOtiMqqPP6gtf8CrJmo0kZVe/q6w
	 T+tOe92P5liLSdzeXOO/EWn+T8P+bHu4ih2MvalF1XPWM1SBIXXsPh+pIpYv81tTHu
	 W02MU8zer33/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD8C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028339357.9183.18331630825508592476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22eaada5bba8626ac4042e20de98e158b825a6e442a98f29c6b7861656b408af
Date: Wed, 18 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750283393
