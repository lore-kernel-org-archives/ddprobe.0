Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2053264D7
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785481234; cv=none; b=H1DyoH2fyr6t/8z1OuQnve8btfTWS60EYwHOmnR+yoUCuFa5jWOOKmW+LvtX3iNLgNJv4vNdqIOrkmfVPb+uGQ+y4UK9PiK0job0RT3Uato1rNZ8k4MZu8ZpPTwSRJZfUr98qQIYhIpMn7HSoX0iUkZ3Ip/C6CSMVrSjasieRZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785481234; c=relaxed/simple;
	bh=s6exSQYP+fx0Sg4fTtuyjRvWgIk19JgkaxhYGCsFROo=;
	h=To:Subject:From:Message-Id:Date; b=Pj5Bc3YyIT1cbPO7Vt/y0724FdgOGEJqJL1aPbmz/fEpN4+P6SoiN7czJsE5w/KTwgCYcq07aJH16uSYImgrxfHaOAUWpieYYW7a0+93YMgJ9oJuzGOdEy9JensDSrax4KS6fZtbg7+3FX3WKyotPYX2AVzUqGGTPdXnC1dhfco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEjT6K8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEjT6K8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD92FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785481233;
	bh=s6exSQYP+fx0Sg4fTtuyjRvWgIk19JgkaxhYGCsFROo=;
	h=To:Subject:From:Date:From;
	b=SEjT6K8vPEW9m+pEqGcMIDPmSy2PcihlSgjfuTZgCC+7fVKUY2zdQ5pSO8GdWziiv
	 bOZuAqLeBJjzp9WXffBr76yRaog+1l9NCk+ENEftdfzMC/fyUz1pdEo+kAssNhq25c
	 ACukleq0dURZri1BByPY+n9r3qq6qCceAOfuPACwwDEws7Z7xb2CuCSgTb432+m9g4
	 mTA7HFKw50WOY0OxxGuvKv1fMOogo7Wi7urotIO090+AE+ph8ZNLZDFnDEWY0ipbJp
	 DxCPxzsWKDqKeqJKubQEXjb72FNIiY7WeGIlnx+aD3tL4P5YbnqNCL2IPpU3AZp+o/
	 e0xWgsoxrngyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB195C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548123369.23288.12466681210167089398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7388698fea7cda54ecb141ce834b2248e093d2d5ca99dbddabf0857e2c26bad0
Date: Fri, 31 Jul 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785481233
