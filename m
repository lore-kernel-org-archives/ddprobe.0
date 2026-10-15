Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D952D2394
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792039234; cv=none; b=VUYU9zdC22kgICdhamgelosQr54E6fF/HV9S4g1K1ixq5Ai/VoDGex6Pt/1VcAeijnjiM4hpVaZeNoO9699yf3idTuFLiX2ZDZqZXH0cf9cNVNzdgnvUdHMUAUp7pq/HJuLPmDEYPJPiEE+Oe2jGX9IklJ9dbzBb5BIYWiUEp+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792039234; c=relaxed/simple;
	bh=xHp1ehzGfjH0IE7s3RLAVBKpsgzOCdpuogWNZdx+EUs=;
	h=To:Subject:From:Message-Id:Date; b=C7pbSz9/jWZZiSgPCLJeUphEncyR0Js/LsuCiYqdzRrkvelSepq6co/UKfISMCR1ndRSp5KqNq5/iV1Dtd2NP4RO7g+O8QOgx+k40SnZmK8kF/JuvCHDGKPthVLB7Jneo/pEi6AQ4Ywjrg944tk8WwZyORQeifvAM9O2SXAqxyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKxUzHsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKxUzHsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14BFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792039233;
	bh=xHp1ehzGfjH0IE7s3RLAVBKpsgzOCdpuogWNZdx+EUs=;
	h=To:Subject:From:Date:From;
	b=LKxUzHsbOK/3ATD7LJBNwuXRR+ZfEq++EE5g3bePuzo5A3+8PIyMzkd/aHK7GIS9w
	 Z85TWih7ZaJw6EfY2RE9lDxXovJOTUsf/dLPGjmYYuYtCg3bnRb+oc08B9oR51OpdE
	 TTMRklPKMRwi0E+qi8PgxP34LGZGBEMOh70dbe0pmS4dU5HOZVp+4THqNsuQ7qNmea
	 dl/OleAcnu+Hetncq1ifgYwNhlBxfw2z+kztiVQBk1Ksy45vXLjzCqImzF7ApN90wC
	 y41utIZYjg93ygXhM3xFuY7FjcDTxLtnY7znRMcIlM4lcUzUUmH50t78keLos24Bb1
	 7N4yF+/0ZfUbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FEACC6B2E
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203923372.26236.7366643762372682533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338d87ccee1f96d09c1b849a3982d10fafff0de4e127aa4552e36d3091f308be
Date: Thu, 15 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792039233
