Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391951B0F2F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737671154; cv=none; b=Jzyn6G/LpUVapAnIQO5FCmHDmmSMLYlxHNKHgpBg3IP1edYPQafDdUqaZbfMJ4xNH4EzNNdKgt6N2EMNNKDU/6WnO6s+csUBcg2+cJiihieJ2dWv2z345/ph63JRpyh9ZWOPNJq0YoONxM7dPS2M9X8EtqG8bvhipWmGWK6ceJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737671154; c=relaxed/simple;
	bh=PHUitzWiQrnUZM1pQdXsXr/JVIhvBawH1/EFCb7VLwQ=;
	h=To:Subject:From:Message-Id:Date; b=KO4lBW/EfHhh/c1yIu35dVkWBgv+eFI+sICIzTh81Auf1LptV8cUBktsMX5MXqraaItYc3eXZ4muiKAoXJkbDadXChrXE8IRw4AsQ7ZtTNoWm1ZTMwsaZf7KN+Dc+IcuYqwvwRZsavOhdOhdhDVXWSGBsuKoPVMwAVo41Gq6Z2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFuz3+yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFuz3+yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B3C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737671153;
	bh=PHUitzWiQrnUZM1pQdXsXr/JVIhvBawH1/EFCb7VLwQ=;
	h=To:Subject:From:Date:From;
	b=aFuz3+yggEcudTKMq2lohuEYDZGHBEBpuDyo0t2zcYE+FGXFml7+9uXHTwqU6/kMc
	 I+WR5CXnRO+X3q5IDL6IZbtzcrb7DxnfW+GfapY9T4g+ZPhNfwOIXMIApYQk1NSigz
	 AHSJuUNK/y+OQL9ndFCWJi4gvNPm62HaLvG8WplsP0J7XV2FqK2OpTZQkTl2rOulMa
	 1fyExLQ1dd7NGEfmOtDrPmQOE0zuTZVuotNyFHbzbVzscDAABD3YMdNjxbQIScTaOT
	 QLzJjEeNJ90ajeBi0eFG9B6Qbt809oGrdICLRbR0ZsuG5laCM9CoL/deHQtiqkJi6n
	 WgNK4JbixbHuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93834C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173767115359.1785.14993766145539165089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081c913a8ae04a65ade00051d7892584f3eea0a4a925b9f0331909174b4c7089
Date: Thu, 23 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737671153
