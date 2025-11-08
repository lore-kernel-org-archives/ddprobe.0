Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365BD27877D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762588794; cv=none; b=CMpZNccTCMuazS6c9y72TbOae45ectyGOFrGPBR98UC08BkLaP+S24Hve/f0yzmEOaN/AupiAEn8zRcBcAzq9GCTtG52WY8Fy6QtgsJ+me1NOdAJQRg+JnFE94Jd/0auehQgHN+10nxZKNXpPngzECOLyz6SxOkzMKI4y9uK1uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762588794; c=relaxed/simple;
	bh=GDPEaLDEx8lqAMSRClRtpZGuZwfq8sRBPo92yU+5pzU=;
	h=To:Subject:From:Message-Id:Date; b=it91lK1h1ALeKYDZzGzCCFkHz47MBHf4hy89nF5PjCiga0KqVhSdpYSVVinc/u+8fZ8ZMYmNTOxaQToWi0s+H6OG7cOCWcB2GkE2gPD/YNRKdU2a5uMGbEkaNicWJ051fcuDUhbsN3LprejO1fQIZuJyF7dbxoj8T2gyz9CZz1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unhNipoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unhNipoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8D6C19422
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762588793;
	bh=GDPEaLDEx8lqAMSRClRtpZGuZwfq8sRBPo92yU+5pzU=;
	h=To:Subject:From:Date:From;
	b=unhNipoISHuQcGOBUiTnXkn0RKWDTNorsNiM8sTh4MNelCg94KETXl2PjK2LQsdfK
	 nWjYCAb6lKNdG6fxTYeCU2hyCJCVKnqU4jJA2fi/cwduBySzO8i5pgYsRgaFT4ISlg
	 cPW4t5DEACrn5xbSrVg7vBE+gNppnzaju7evPWLf9Ge16DJqc9KALITnnnJKbO8xbX
	 /zhHU2tCaHZGmvUoDw1Zv29NExHNdvQqTfNzjN3HEo55bs6k+NxrwONCOlVJz5PJjZ
	 JPA4XMRcgeJUAQK2FH46ctk2Ffq7VkyyvJwIFw9EZE4jTpLlIctg9BW8zz964G17tZ
	 Uo9QWz+N0BPgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDDCCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258879358.18543.1123033401067034179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93c030277990c26734eb2c39e69b710cb6f6bba4cddf4aff5a46757b9d5d2a8
Date: Sat, 08 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762588793
