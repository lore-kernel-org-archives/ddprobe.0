Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187D31C32
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753142394; cv=none; b=tFc0h7pfD5tNJmNGVlIHRQH+E12zFoKGp1br6BBUCn4AAB6JehymTLxm7HM8iEvpg5gtLH3liXIjpHME7isGl/xWe1euQEqsU29zZ3WpkXnWYrcQBrCrpHk8cOwyMh2SI9vNz4GGV0xPTyKe2agYyQJnWq76UKhM4aBEJWwvyeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753142394; c=relaxed/simple;
	bh=i32m4lXVsVub4DNApaAiR2xlCBoEJ9Jud8CJ7vb5+6M=;
	h=To:Subject:From:Message-Id:Date; b=uUcDyDnDyCMDL1Qpx5rqDAbeHX0R3xkh4dEHBej3MQJGTZsBb32Zh8Bf4XdqXxeLxu4dpYUKT+ozF1hA/YXnEBEOJ+A/zQFPCRGLbGjlQ9m+lejovrRRHxQDCWKg8sXCmKW2VU5zFOxZWuGDjlnbrC97xEcpJFrL0+Jvlyg8tqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffKnw5h+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffKnw5h+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FFEC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753142393;
	bh=i32m4lXVsVub4DNApaAiR2xlCBoEJ9Jud8CJ7vb5+6M=;
	h=To:Subject:From:Date:From;
	b=ffKnw5h+CmaSqTuO32kudv9IbR/4PCI5iCmInTKVmDtls48kCOb8LgXMHd10h8old
	 5UCxZ2x5+6BU8PowLqjBJtldRZuY2MkHVVo85Hv+DvdOEpIhvbLVVzxNaPwi+0IYp3
	 jXwZVzodDPYnDc6n8e7m0qamzMRa34ejK/yhUVzxurvRtxO7D+49lK32JfrjUgoCyz
	 GyjiaDCvdsQ9ZCUax7cFtg/nT0x1wqANlvUYrex6rpA6n8EljnEgL+zfEAESqaxGD7
	 cL5YWK1sCRIDLazVYCYhwrKQh+5n5pnh+5R1vwvckcCiSQw2IECHKkRcaQiU0hzs8r
	 +gP902Gj7tdIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94590C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314239358.14034.6690715203127902963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1a19aa4364b6bc4d3482130ae2e3fbf610b184cc23910d3564fe834a8a48f4
Date: Mon, 21 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753142393
