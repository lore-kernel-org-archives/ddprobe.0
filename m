Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117AA1F4190
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767272034; cv=none; b=cu6XnKa7IY4uqyN12loqbag+tscXMplZ4N/GBSG75P4zcyX7iiOV2PSUJMdARp5Vj+2lgmkooCv3y2lJqRzj737zOcH/SEg3Nfk8z11foLt6lJc4JssRcyn/ylqY3GNecnquDsE8pOfCC8pWFvqvu6dmckwf8crv66Qbk4yTBnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767272034; c=relaxed/simple;
	bh=Xg0RjqtsK6HrD5ZOIwD4M+IuQu64wJ/RPXlrm3D0CqQ=;
	h=To:Subject:From:Message-Id:Date; b=YrhaJpF/byJ1Rweht3K3g70+M+v+VuovrTSMcPq5vmkz0pDmW84SWS6KiI68eiT54/6u/BBxLZJYm3OyasOZ5OQLtiAgn/P5vMSBXU9a8sbPd7TM85ppKirKty9bz+d8BFMBmuWwGezSHMhWaZKUrbF1KRzJY1xPlWClSHr454M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaMjxBo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaMjxBo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BFFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767272033;
	bh=Xg0RjqtsK6HrD5ZOIwD4M+IuQu64wJ/RPXlrm3D0CqQ=;
	h=To:Subject:From:Date:From;
	b=OaMjxBo6Mwbdlga0Xla2h+vTlt1VTBYFT54iXRLXoJp6EELN4zvS71CPZd1OZQree
	 znIHP0dGnbZwA9bDQwlNqnqiwMY/7lpF7ks6Ua4q3hdpEzN7qv1prrrNQq/V4wty/L
	 OZUlTX2NqRU/+S71siP4Chi+EqYOjBzcFeg8p3PbBjtwL+y8yJSTVSHkkb+iDpH0Lx
	 CTR/FOz79w1vb/EDr8CbmoRNIBbXmmEbVoRo2JR++ewc2e86/05bmpcc4HKdgV1++f
	 ZjFiZhlrnQiuMnpN/tZlowli20g0ldH0m8qqDAodTwqSvCIRcsaJ0nQrMMspKa/4EC
	 VpmOERsd1/3sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B6DEEB597
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727203357.9066.17947724382066958508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a210b797bb921ae5a83b95d5e272fddefca8144444f1ea30d18c1a9a0f9aeec
Date: Thu, 01 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767272033
