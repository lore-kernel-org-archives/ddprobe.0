Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3689123E340
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761824394; cv=none; b=Ud7e7aUEECMmf4/VpYrdYm89xxW8MoatUjYXPzu9S/hXdMbTbvlksAX/k92POu9pbiKEslGVQ5Ke6b5+BGHjdSPmN2KkuYJSC/i3BjHY8ENJ/5p8kqPU9LwNrcuVvz9665/GNiOKbaIvCOd65d3IsNOVLezDZZJwki0s9dy9T1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761824394; c=relaxed/simple;
	bh=KpHxASL2gNfDUIyQltG35x6ifniEEgAfMyBCWPdv7pQ=;
	h=To:Subject:From:Message-Id:Date; b=h+GBbtwIfSzWnwPofgcOa4m07AJpRrBu5COuhiZMSuLZY6sDD56/8s658UqvjaN0zl3CimVOsgw4lpwQWjP2IsqsGr0DgYcMGOAYDwEnTckKDnGGI5i874372aMcUwO/eoHQgpZuQNnXvRXyWMhAtn063B7tevimQm9YjfiIdCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqG0M/bZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqG0M/bZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACBAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761824393;
	bh=KpHxASL2gNfDUIyQltG35x6ifniEEgAfMyBCWPdv7pQ=;
	h=To:Subject:From:Date:From;
	b=sqG0M/bZ/Y2LS5znTuVIKqLioD+c+zI8vwGzXZYgblLfXtKGTU7x47gTxW9K/O6sX
	 Na/Q8iQ4lotaLQGqlQomm18dEIxsK6wG70FuXsKbsvYl7xt1Tljx0QGRiTQXOanEuD
	 AAxjR+L1WE/4Gq8+mtNgeIyGJbo9+4XRQfWpOGV02pMCxtnK3nomfCm0C9rObgdQyz
	 PpvnRehwOM3lCjsaiKFKU9L76Q/LAYKeAox2s67Q5qUxuVqd8BfMWg7M+Y54pR8kqU
	 enwhLH0HKPmGFYHjU/GpV2j1OVRmEm1RoGXi1cY3HD38UkGkwFVGTAVLd5qFGzTfaf
	 S/5slm8/P0Sgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A6DCCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182439358.25250.8854483040576065559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354a922cfac40eb47e303b7a642e0357304474172d6a60366d524507fded3fc4
Date: Thu, 30 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761824393
