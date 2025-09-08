Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1457425771
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757290794; cv=none; b=HtdYCwix+YPiPS7mJeFy6DboXBAY9rLxiM4t+ZuS/GLQk8DqJSQzA0TQC4JvklPce83bVGD0+qdD72ILPnZHS98fKanakOGuXLLRt2adIJkPpfuFwZZOODKTrfZZNR8IRNNlYM4Sq3+lAxUGWDHvsOUvK1CSnfB1DnSGEnTIvMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757290794; c=relaxed/simple;
	bh=yZs5EpmhGBVdtO4CwWKecpt7M/h6efKzfgx7CiCyi6Q=;
	h=To:Subject:From:Message-Id:Date; b=kOKlIM7nzvOA+RBr1JymT3UJecWGUIu7tnKysw1Qy+c4Bo9U5IPf3V8gw9oZOuKMKjwOANVavd49rwJtu9NJvqFcfpN3BE2CNveFe/ZQXgvfZvIId8mhHf94QjEfo24oH2DPnt08W/PEBBcNr0/OmveS52mL0QsKzWY4R8YpFMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz5uVlOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz5uVlOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A46C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757290793;
	bh=yZs5EpmhGBVdtO4CwWKecpt7M/h6efKzfgx7CiCyi6Q=;
	h=To:Subject:From:Date:From;
	b=bz5uVlOM7uhx3yjXFLitLyBp1ooGheWxvQyVgK5kUX+f+imKQdIia8bfdSan+a8QQ
	 bzAJzWJHPqqOzBZe2yqCrBdskEpXeQU2uw+lxZYfDNXZu5eSk8KwIcKsF+2XYwRygY
	 RnngHYKZ6UClkbYa06fwHN2/NESyHNbYEdquM4a/T+WS+oiqTzSDDUt+Ky3F9ZS3us
	 aK4KsfiFlY+k9YIe4XqYD5gGROPODJ6wL+/yFko3scCVKEQEZJsLB5vyZNjFZ6R35Q
	 v1goV9icNEOUv+VchdROEykyaXuHR4sl/ICV7qdlHYd0JijcFCj6jdk1FRakKGyfOD
	 qlH1B4W3VUbfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B0BCA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729079357.419.4833516316673439962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a34b757bbcfda26dd03bf3006c081f5295dcd44a611bd044551a56736721a23
Date: Mon, 08 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757290793
