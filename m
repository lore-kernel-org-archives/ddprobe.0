Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F126D3161A1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761946194; cv=none; b=GX0HYWZEvDu0q2yrCkL2d3Q4tfKTdgIhAaHZW+yDLWUViSpQYl/Gi+OrnRLHF1EZ3+l1dEwsjCcBpENnFvSv0aKAy9fwnTcpxNW0pUT7w1DtYeXHOl1/u++SMPrVSxF6o5ur4C2paazReu+nbe8pi38xEILaU76dIZZMt8vQ4Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761946194; c=relaxed/simple;
	bh=QDbYQFXzNpgi7+c1n8CdIxUHZJD3LiHN6g2lbp2bXc0=;
	h=To:Subject:From:Message-Id:Date; b=r3x+WcLNkXmCGlB+z/ZspUNJanQ5vqtPLVntCbuqvfpH0ENOWB9OHkHZ56XV09h++wKPRTw8ZYiK5r9ElXUT286ULGJNMt3GED63AiAmomL2MDmRM9RIFK6gWOJ5hynzBwAVpE6mJIlzzo0zfQjwHAzRnfle+6y7sLd2yWvgShw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXj91c6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXj91c6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A072EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761946193;
	bh=QDbYQFXzNpgi7+c1n8CdIxUHZJD3LiHN6g2lbp2bXc0=;
	h=To:Subject:From:Date:From;
	b=dXj91c6Zdb3eDvR8nT+7O7Qq+rMu+c++opOwADqJXTURzVRN304Dgmv0Ip+tV8ZIk
	 gQmXOpjgmEYDHfg/w3Azu+L/2fU4DEacOp40pIz4IKCN6nIC4B6Kn6tR+aSPOmrWmd
	 n2ViyRYmaqM8iU40PU4+XHeHpcST0Fi8ZtmuG44r6r2jpFJEu/VDH7Si1S4uvHKNRy
	 J5c9bmn1WjqazHYey5InHwUqLr8JUrgDg9wJZGpy38rfpl653SiFfcqq7bt4zXUWr7
	 K3cdkGai8OWKdd2IpwJE7754B0m4LvYetUz93C+qXfppr4FsKMO8bq/kzJqnENexkH
	 UDMVTDW+pPd5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCCCCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194619358.27955.3962013076838861205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04875c96920aa3cb71d33b7bcd1123256d7d2a924d7b61d15332a1955b48aa75
Date: Fri, 31 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761946193
