Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0845735A93D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608434; cv=none; b=nv4DLr0oH2keHqCTwcQzHj9HfrMEN9gF8btMX01sw2ZnjHfyynQCoBEc9fSrdhRoMrogOYsO79qHtxnyE9w/HUic6OiawygvoJKj6Vs9LKIkv6cvctVtu84EugPYEn4I9xAK6U5Pee3DpBS5JECjQEbsjLpWrV1FSragwkJPaYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608434; c=relaxed/simple;
	bh=tqOq7UFJVNeoZbltJSV3QlYdiaOPXB2RGZLUkJ3AVgY=;
	h=To:Subject:From:Message-Id:Date; b=TEmQqTP+Q/zc67pc8QoCU1KqE2P/vAc7MezUfk23/Pt9efqQEPjH602aqd8gPoYQXGIZ7yuWHtPNpelqIU2aDR2I3ZAo8bk9F3Z4nVEnkE9Afmk7HoMIWVlJD9uGE8Uv3iM+FOXphT3QRUboC6/dN4xfzWWW9SyhmrGCRiRR8o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd2yRv/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd2yRv/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEDCC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769608433;
	bh=tqOq7UFJVNeoZbltJSV3QlYdiaOPXB2RGZLUkJ3AVgY=;
	h=To:Subject:From:Date:From;
	b=Fd2yRv/uiGbQSQJxOUI6prIxP9bGR3TsH0Rt9x7qW3JjVH5h2BmpkOIepbOdZyZFw
	 rvdUlsueV0GcNo77vinrxphhvzANAfsMSzObbmxE1Uy/yohO0hRRE5aM1bp1h8N6U0
	 ct5825VSqIIlWQc0ca/ClU52E3hD30KOoVWCj7S1wJuZ3/2FEipBs8e3U1X0sZHSvr
	 wb+uhW/lNd7/Ph0lD+1g/3yM8g+5iOhXMRXburUWIoSHYPag2fDYn/plVAROH0+tWn
	 YP+/Y1ixpuy7kIojnS8lr40g929fN3wymtHO9IKpE5ylIK0B9/QvA+ZPgYfNaLJJK1
	 oWhmVcD/e8llQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB5D25B7D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960843358.18253.1987206708344061752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f079f91dbeb1eac4990642c3676e853916a6dcdbf1abc64b2ba5e02739ccb1
Date: Wed, 28 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769608433
