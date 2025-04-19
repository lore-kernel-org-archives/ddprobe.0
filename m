Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A018634C
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745090994; cv=none; b=agND3icv0xtyLM7hXidlx5mVLqJ1E8PTO4xbAU4QAZTIIa/o/YLH7/2F93v+G8uadiAcNfgnPuyRNiszkEPV0P4B/6vRLkRB8lU2OI+C+hik185VtosQtFC7s8A/n+sj2RXc6HMsLoJTuuLZ7LWEM88KsNabwb5qP9x96sBfY90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745090994; c=relaxed/simple;
	bh=7F/frXDYlIS9H74hsz7Sub1TkaelxMWwepN8cNIMk8o=;
	h=To:Subject:From:Message-Id:Date; b=YWOEAoiDE4WVle85fjE43CD7gmTJSw+3b2bLOTbYJi6eJsJ/dxI8yWOJaV7w2Eh4liCGu8Z4/Bnk3nMHAAjuqOX2C9ok1m5quMO+PdVcfNsevnhnQ1SdgBmvco//LiMwaGNldzDda96y1qCW+yUe0AAgsePxoZS/3VE7yOme5uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBTlmhPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBTlmhPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA235C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745090993;
	bh=7F/frXDYlIS9H74hsz7Sub1TkaelxMWwepN8cNIMk8o=;
	h=To:Subject:From:Date:From;
	b=aBTlmhPCr7WRzdhnPiZGmfW3DoYuX7VzmdukziI3Rgqu6LUO4rWfBzhXU8k/MErOa
	 8VfMJHxFZOw02oQQQmq67iAYxorxbnFHOXNS9Md21ixChiXfq+6eB+ceZRoxIEmlTC
	 K6Uiwm5e2+k8gP6dk5VDY+Ozj3UBW7dWdloRd5gUDd8CqeGryIuBn9AaCpw+SFye/b
	 wmcwkeADxcr5UVK1RiGOnE1YCih/y4JxJ7NHqLxW3sS+ewf/dD1ZFI1PuBgfefDaO/
	 JLOT1jYT42OLBgOrP/iHRdP6z4TFLtpkKvmdzaggtw79zB4eGqfDUdGzUYfa9AycDf
	 CqjUKXteF7sAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9369AC369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509099359.26217.12860611949868088877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de206c888ae5e043d146c808953200ae2a190488b4537aef29fbb9e836c5f030
Date: Sat, 19 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745090993
