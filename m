Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20261E55B
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753948194; cv=none; b=RazBr0lSABuQeqe2Ijk1nMlbqN2OhIZvV5D+vxW+nUvBuCWR2tNRI/u0ajIqt0ycVW1MOnW0RkOOWmO01+NLydSicBR5oaDstVb/tEzt0EXQ3p8Vmu+5jd+pFVuxq7OKJPp7xZJsQl46JIoBEdKJN34W7Fx+BkXUf8oZu2dGATU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753948194; c=relaxed/simple;
	bh=d1CU2/2WqbFJ7uchAQAPtmsmfNAnEUi3/j+gTXXrlCU=;
	h=To:Subject:From:Message-Id:Date; b=S8R0/ZIFRBi8ilaMRmhyvDP4KgBVJzBCFvOlZoD/sqO1Ifr0fbp/PTEnNBCm316bwa9FSqoG7gfH70jiuAKx8xCXAV5OoPAHf0JgJO4mvlfCR5pV6nOXPCF56PKpHRgFA+N2STFKQsrL+KkRVC100SIh2YZ5E9FYDoJTGZIa9XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7DSUGVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7DSUGVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B5D2C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753948193;
	bh=d1CU2/2WqbFJ7uchAQAPtmsmfNAnEUi3/j+gTXXrlCU=;
	h=To:Subject:From:Date:From;
	b=O7DSUGVdbcOyxKEl1aNAQoDYfMnAL4z/dxQBeps4rAp0KKNwau+Xyz4y1Khls7dfr
	 VbHdToH78ACHVZEfxgwRTAKzddcklUHYinW8IVqtaaKV3+ATBPPrC7jfJwDs4/Q9LL
	 feQ0Yf3dgMGIowxFE7cghgi0uABiqF2I9a/hFExljt9HPpDC+P0+ZDpeyqcTsBohNl
	 7TxFVe5qStq7PUwB3Mxrg58NLLJmsZkhfXeIvXpMCpMwcAYrD1iX9xthE+BLAyqRVT
	 8kMKBISJCYoPLcc+88ZL68QVSp0ssGRDbYE5q5COvLrapBlPJ71iOZ1cq+dPUIKEFG
	 xrfktW7QtHkNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E02AC83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394819357.18109.15966930936777179553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefd9d64eacb21c9957bda91253244f96aec8853e3a826270385c0803749eaf6
Date: Thu, 31 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753948193
