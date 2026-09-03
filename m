Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F71A274B46
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788411034; cv=none; b=U0FkTdxibqkEBZyQGkMc1f4OLOmfzo5H7iitXKsRIRA57YIwRfjRPWDNIBuo8bC/o7uxP0TfbjkieiilW2zcbEiBQ7XmKnXypN7SotBUzmRxTGY27Vst31xaR+61q9K+vPTKr12Ii2EDqUbtAKo7YLoij0ALf+jyLhXV0MJWglw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788411034; c=relaxed/simple;
	bh=Mgrq1y5h935N+yYPn8fFjk+Vi9UVJL25uplvP5jeYZI=;
	h=To:Subject:From:Message-Id:Date; b=imrda4FM2AbPdkrgO3UZO1spQQDUvTQViMTi0xbncRWlyr9zYINyrqht4jflaDS3HAXmiC+eNHoqRuMbSgfbjGUDzUILHCAc1uI0ZULWozVlgBaAsHWC5y9ncu9tebkqLVTcnU+KBchpiCFsHywESSWpjnHjpGKb7iWjAZDWaoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVD/BAqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVD/BAqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E20C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788411033;
	bh=Mgrq1y5h935N+yYPn8fFjk+Vi9UVJL25uplvP5jeYZI=;
	h=To:Subject:From:Date:From;
	b=ZVD/BAqnhhftH2bjIJIpK7AYvUJS85HPAhMRlKee30QuMywcNv6Df1PwESnUYKQkZ
	 dywUBUD06dRTKc0Cr+U6KhIvfwJUKFSCBd4E+d+IZ7+HyFDf9TeLXrIFmEFCiVkbio
	 JLxidU44LhzJMglIFn6cL/eRk4Rq36OPHOx0SZr2VHccJ7I4VXX3Vsk9lNBwrAPvi8
	 Cj7uzv1eDJVSPCEQTE90NbUkrWx3Jvg2wQrEz/IkKO+Wk9NBxY9S5e/WQVx14DOOWG
	 xw5tBReAd9xPvgPYvYFvL8RztsxHCcqskDDw2MDEBtwgo9xbGJ8VSwMA73Hw79FX98
	 QUvdpInTQzs+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE85FC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841103369.21387.13718639859447431345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be875deeda948c354b5f3af421508cebb0af0c2129e4025c88d8cc29e565dc1
Date: Thu, 03 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788411033
