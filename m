Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459E61E49B
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738415754; cv=none; b=nCg+SyIkkRwVIF1nFhl9v5bNq5ykyaKTUp3nFv96zC7pG8lyX6BUEpmV7owTIimZK1sTw1u7YhnkX6lv0TlTLOGdnQsU8qvfpRHAIIGj6jxPDR5lCOqAvG7ESfCX75FM1j5YR0i4Tg7zk2OGJO3wWcXU9tDkhZX2VQK03Chk2hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738415754; c=relaxed/simple;
	bh=D4DQGDBdn2U0pGH6gvvVKh66K9hArb0UwG44LqoDB8Y=;
	h=To:Subject:From:Message-Id:Date; b=hnU+8357u+fbNEESp3gjQGcrhSIcm3AEI+Wgi6z1Xq/UMTVtDoeAdO3VTetcIH9TNmFywLwtZ2PeOdS566rRlCioQd72N6UQ8OM+kUSPP5amAnPDKSV9p9hbrikjQRhfkShiIUP06xbI6/oZdnMTIADTjifqHIumQi1tXDo3o0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEhBfmNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEhBfmNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE78C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738415753;
	bh=D4DQGDBdn2U0pGH6gvvVKh66K9hArb0UwG44LqoDB8Y=;
	h=To:Subject:From:Date:From;
	b=qEhBfmNCrJoNm59Np0NHlTQ3sSrWsGbodij3z+RJNuER8Ty78023nuxx1kb5Csosj
	 Iqg5ephEjUblNv6m7adBEkYa2u3MMJznFLd3JeWGoPTeQHXV9ZcSpyHvCaGUpKw4qh
	 E7vEvEi1f5YGlbkiC5gR8tu9BQfRpjj4oOvou+AAvUuW3Yf8ObaIxozZIisK3HNjY7
	 POiST9oYxq/qhE3ENf1M3en9scRRjAsnIRFi8keju2cX21dFZTGYqNxtOTGGzQrpGS
	 DbZkBkwTZ7wYqHYXKfr/I+g8IoTBO/m1xAz6qvAxD4dFhwH4ovpSIzB8fT8Z5CffwM
	 UGIncoA1txthg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A108C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841575362.27230.1057731440197050466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6156982d7b1010cf51e5c87cdf023b98765681e82124fa9f3f4279b15e8e46
Date: Sat, 01 Feb 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738415753
