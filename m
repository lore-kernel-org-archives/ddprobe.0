Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA8C7262E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748068193; cv=none; b=ETsv6cWpXbcSBa4UXvMXDtlRd2251xeiyzImmiWyynbZDZ1oeTh4Fo/UJ9pBrKm2FHCha5jyJBWR6KA8bSxCIniNWZj+XGPPLBfFNikVXJBaKVa+R00BqpgQdDpdqOr84dLJe87ZrVYOT0qMh+oO9nl5WiIx0Cfj1jF/IEhXrpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748068193; c=relaxed/simple;
	bh=JUjGs+IfwW64xdhXH4MaIFHnb6mTF6p4IBWl8y1MiGQ=;
	h=To:Subject:From:Message-Id:Date; b=Q3BYwEiN2ABY+P5zw6q2Mc6J+qLh7qsgrEyWWmYhliCv7TvCR1ag6k3IS8vKPtp6iZkmyMHPr32UHABucPOa3Rc+BkunsltYOgfKc4mmOTrmkTyHNiNcRZSRjhlpVXJM8J2PFfN9AFWDsadXAupajX5QzgNttP2mXpcNUbkW3xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSILlPXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSILlPXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748068193;
	bh=JUjGs+IfwW64xdhXH4MaIFHnb6mTF6p4IBWl8y1MiGQ=;
	h=To:Subject:From:Date:From;
	b=XSILlPXHv7K2BfExJ0e0C3MI0mRT+7BKjAnud7G1Tc6JLCMzA5AgxDHfl81Q96CqQ
	 Sil/czlMSR/1mG9YwBz4Q7ieBRnBHDUk5WNAngcOQ+GrsmSDlgt5+58UV2F/CZpgb9
	 apBSRARU4XH0qpZTBUYkz5izJwk1MAnHb+6dpyffTeRt9Sgy3JAePRs1LpS59kOlbb
	 NWKbX1iPCWGRCXnP9TK3ENliDtfHa7sS6FHy9+VEs9WqbNlTyW+0paFjkYhXy/r8Th
	 xTVnLbybRyeRvtBvpw/TKsN5T1mzeN6Z9tfh0Nx7/Hyis6K8y2EeNPOZk43mXCkV5N
	 k/2+Bfn6LUmpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155BC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806819358.30758.3286677329281234676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90fbbbd2d16a718767edd2eb135ae5b6a81fb9912ffc637de600620a185a2f4b
Date: Sat, 24 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748068193
