Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DADA1E3CBE
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723035354; cv=none; b=Bg5iQ13b4QDQIklt/p4TlUclPsv6OMpk+MoHKozfEaSAXmilHSodGzGG4NhT030M2uUApB8aCp1oTvVbZz9a+/EH/MNVUqk4wR5JesnKJZCDVkP3+y69unDPaefGWEA8dsm7n+akCLmmv9cVtZmvNV9nIunGPPAOt3g6CQ3EB0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723035354; c=relaxed/simple;
	bh=kE68xyeR0Yo+h8g5Xe1WftDDsOjlfTarDR8mfs0kCEM=;
	h=To:Subject:From:Message-Id:Date; b=bhNs0mFWzjmhQAgI6xiZDgome7N0SUEsWceoraU0J7Ge6cIoGR8mi0+uKDPL1FchDJXvDNoIjXznmFkb9+HBGfdSs7Xg1mykHD1BjsmZOKYdXpKTwCbMdnfxwx6lCYrRshFC1biq8wRC4pXtUn780hWWS5JqIJZpHEdu5NhTlpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGqdMggQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGqdMggQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E1CC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723035353;
	bh=kE68xyeR0Yo+h8g5Xe1WftDDsOjlfTarDR8mfs0kCEM=;
	h=To:Subject:From:Date:From;
	b=lGqdMggQkQ1yTgo9/33PCZP8Jp9X+jE0X8twscfFFyIJWgXRGuoiGwvy3xGQp7wGE
	 r0u291dhNoivVzlP6+eveXI8dmtKSwOuNZFicTbrktWeKGSM1dthmQHW2dSmmDjArw
	 eKi3CsD/2GkuO5IxzVoR98/IXUXr5Oepi07/dYmEqIua+oi2Q+VuycAgxvNtubtN0a
	 FrI5YdhJdzQnN4sMDBspy1vKeNfAqCIVwqBWV3JmBrJB52sORUF5DG0OaLyoIoQKNU
	 6UHvRlHafc8hvDUXqLzki8mtJL8sm8ee6tByqdhNd+LteHfZhaetSuSH01n0bDTROj
	 caycTYVcyu6sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E0C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303535358.24089.13431777948646708762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df84d883e634157e45cbbcbde08dc078e9049f0ab11e094804e54071eaff1e3f
Date: Wed, 07 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723035353
