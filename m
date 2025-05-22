Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404A77482
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747888794; cv=none; b=IGjFRJqbPGflOzaiy7l7MVUsqMcST11YHARBlmDnHDlHb2Is3QCir4G2Ewkwh10P1WX0MtOUezlzoUsbdVFOsrON9XKzpa1Tq/Zho66Snbs6q7pWqWaRbctlZhxp30mMJtbaQVyjYALbi2k5sLqPDFD2CuE2Qx1dWMddK6ZduBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747888794; c=relaxed/simple;
	bh=jS2DumVqrq4Zy1xUygYAhz9BgMga36k9ulK+s9J1CsQ=;
	h=To:Subject:From:Message-Id:Date; b=d+wZYhIDwyIqq45xHD0OXCumRL87CtnWXw8gUW0e6+vjQKt1nMCzcIegZz2fCcq4qX2rkg50gYWU92cVle0i1OWJoSZzQoPXlaQiY2Zc7XqjX2za8Xqg1Sva2uH9peIrjIguFr3UUI+5yOdiOgWdi2/j5eL87FdPY8kdrZTg9Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSZ2dfVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSZ2dfVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C1AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747888793;
	bh=jS2DumVqrq4Zy1xUygYAhz9BgMga36k9ulK+s9J1CsQ=;
	h=To:Subject:From:Date:From;
	b=jSZ2dfVzIsvViZu+F+Ao8ueLCupfkXGsME0aFW7s0Ba8lUaJ2oPHf1CVTIicsWkif
	 DME/WrCeKi6PqMisawkK+bdlrGSWq63WMB2xSx457coMw3VZ4iOZHknWjPBpDD4aAU
	 JvP4NyM9QjAJ4wvPOK/ezA7XyjAsuyuL7y4TqNj3iJw4NWKDr2KRhtxE/f6piOxuQL
	 E4Rdt4HIJSbmvEvzma1JBYv7OU47YWhDHr5R8SB/gW2MztA3uRKsaKvHtJvZxd3Oed
	 912VEdbeurs4TgmfOSFwyN3+uNXOZWygERtK/sbuoH7NGsCeBGkQwXkk9XBBKbPxww
	 xBq+JGUMyig4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031CC54ED0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788879358.25629.759460304240686896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f30cfd67d0738dca96885a401c412b03d0ce97e20b57eb8de0d85a96553a9f
Date: Thu, 22 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747888793
