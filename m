Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522B273163
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717675043; cv=none; b=nr1vz4DyJt4j9x/8reNSW35f54OVwqAwQkB9TFqZ25Oj3YG64eHxbjPwOoVxHE5LUliq7EQU+HL2w0M8ureY/hxJheGjXEbEeMFPraq2sLEaPu0PXDWKUxWTrg7TVAmJib0pDWTxhxQTT2p0MakrgV3lUkQPiLTu/WRcqIjWXjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717675043; c=relaxed/simple;
	bh=vmwtCll43vjhtuxT9bQjBxaTaeoN59fdnDKvfQTlmyI=;
	h=To:Subject:From:Message-Id:Date; b=JM2GkRVXZn/TlIUB6lqN6T9AevgjGR6uaX/JUsvUvvcrpnNMnjpiU454c/bvz+3h2rbrvjEIiqajpTq2WWS436tiaLd3l1HRHp1Sldw75WNxVFmka+bFgoogUOyjcXZ/1i0bZ/hB5yc2Yz7y0MjG5LJgszZABovf+CGLg46VKRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkCVHslW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkCVHslW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EBFC3277B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717675042;
	bh=vmwtCll43vjhtuxT9bQjBxaTaeoN59fdnDKvfQTlmyI=;
	h=To:Subject:From:Date:From;
	b=bkCVHslWp2CeG3IIvBs/U6qyu4ujnX5LQvqqWZ/g6/Cp6ySnAQz3kszx55Ikm6FOS
	 azgtoDxDUug1219bNY04vVyAfCAE4im81dPcDWtIPyHLzoFV4LfirNTtCfvHoBtaDr
	 QxzTqmjyc7P7mH0f9dZGUFwIvo3qiIS3deSXaASmuNq/qg8Mem0AD86hDIL379ut5S
	 dDDdK8WmMBmyrjpSrBvZu0Dz4PwnYJzCJoY1h5IWLyygLU5K4wzEWEzuSqyQSK/Vbx
	 JM9J3UrlhKm1YrGOOoTFk/BEHowzEPr8uHsns6kAstqQj+qnxHXhywDDpAMzJ6svx4
	 MBQh/i45cgurA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AFCC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767504279.27272.10835777429170896205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e691968641f6eeabab2692d1d93a18d6298348bd273682e78becc6a4cc622d9
Date: Thu, 06 Jun 2024 11:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717675042
