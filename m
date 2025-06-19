Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258052253A5
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750333795; cv=none; b=fWdAcpwiDt22iIWS8hqeAS0FT98vCRVGkaXmt2buDcTDHIhocB+3WM8s+3E3zYLBjsIdQ4nwGgkpsZpeVSKZCKCiykkynz4EijAXN39sY70CWHtuFJyDNUMgU+flUsIJi2Zs3QV0i/704Ekutigm8G0uj82SDV2dSdn8BYUsoz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750333795; c=relaxed/simple;
	bh=wzTX2JsgXVktIeFmGhmZt0sFM4IXZs3Qoj6+TMf9z9s=;
	h=To:Subject:From:Message-Id:Date; b=rytky++528cV0aJr2fvSAdqVZ6g6gfVNFR0Hgfu2LkwD/fpUOVRKByt/6jnjMF77xTX7oeNFKDU548kBJPiJH5+r8uAKgI4fy3NubUlBxXNEV3OiI22kwsdhud0XhXsjCVbkItVAYfLEXutvrRATdaQoe/oclL6D4rCYG381bYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peVnUmRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peVnUmRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3729C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750333793;
	bh=wzTX2JsgXVktIeFmGhmZt0sFM4IXZs3Qoj6+TMf9z9s=;
	h=To:Subject:From:Date:From;
	b=peVnUmRaR8K/pXNW2TmxJEiGmtVbwPvMbWYVifz8BZMW9dvPbY0DJxBz7LJhK5lFi
	 7MRn0NxhcEvzP0fyE5TVBeccPml0D29wEJa/imRuDa5NKUg53//w8COWKgWIwozJhi
	 DgGafzoLHnkabKmhx+zuemUmwQ471AuLTVc7gKX8lAvK3RSR1fNCV0ceHRP0r7jlWr
	 sv4oZ+0aTM/L4wSdx1u8vGUNL4zEMWO7o7RrKjWafCpxM9blNmQn99go+djnCyoyfN
	 K43WV6LnTKR/JdiC0zcQJimGdgsHJgTn+5rq+gOVAH4+KuQ0XgdaXqSJKXarsGNtr9
	 XuzdIjPeo9F8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B3C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033379358.23028.4290516692996029794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74577359f3f1f6ba2ede2cf5e43f3e2204790a631c0c689163161270f8b9ac2b
Date: Thu, 19 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750333793
