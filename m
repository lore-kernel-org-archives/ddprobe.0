Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A5D12E7E
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751150394; cv=none; b=GFUhWNoUZ9bZ2+Su12yoruv0F1X2I/54yDt63TsbSd39jmDIRMlpjkM0NUuhJeh0QzXRHOeUBCDCKlr+dqOt/n2IEVSqCeJ+xwKs0s2BfuBDLWb3vY3lQb/v/+mWEjZJiVpVhgrbBvsoflSQl3BSZOojwoibKJKwpDCyc4iC1Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751150394; c=relaxed/simple;
	bh=v8NsWcQcyVE2jfvpRMfTiCRZ/U+MbHkPMZIe3D3aYC4=;
	h=To:Subject:From:Message-Id:Date; b=cOSW8ZRszAd1CMyM17IE+RI6e5AvAB30z2dCjHjLVJCzoxgbQIT6VWgYs/KrcF/asIOh6qwLN9kMdYN+X4BsowKbVw7U5XasZV6CtSFj3YcuMa/Q3jjudcluLyPu11zHzeUUk/CTyVXtC43Z+f9iyfsyOQpuEVf2KhPG5uNbnp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cju6gTCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cju6gTCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A310DC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751150393;
	bh=v8NsWcQcyVE2jfvpRMfTiCRZ/U+MbHkPMZIe3D3aYC4=;
	h=To:Subject:From:Date:From;
	b=Cju6gTCMKUT185Hxx2LtAHvkAcj3nFutoDS4YaeD6i/0ywCVIHdqw280VvY7Lem2K
	 NyJx5gi+8+1nqF9o7d3ahkAqutVcdZiAPmvgPo2d74fNQfVenb1bssIizteoRx0j5A
	 3sfkXVD7o8/exjJ3eCxoC6XxyiIXZq3zXuw+6Oxeo30KwJ3/aAsw33kx0WKr3rVpEu
	 LTafjXD0B/Rb73AHMIa5IvrIqVFSQi1DJNjSaPz61Bf2AXPa6LmG2JVg1YsDt5DkGa
	 +gujDt1OXJCEli3sxnFDQmrnLVovsy9gXlmFdRSvujxNC4nb5crU1QvgV4r6NTZWT6
	 yPcepDd9/8jag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F958C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115039358.20251.1820760789901991435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d36e50e437d4b187cb1ea56f0ebadf9c7109da7a1fe893220a4da300d39378
Date: Sat, 28 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751150393
