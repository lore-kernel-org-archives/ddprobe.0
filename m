Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA7F237162
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752017994; cv=none; b=N1dy2YUxjmQ+Ga/rDdnE/1+oIjRPYt5mFWi5Ey+OVKZEbHR/dNB7R/7Dcec4AlLVz2vIV0r2lQmECJKdearMEUMUhVwSKPP14f2gRINuyYF6ZCsrzXX3eGi8Z/Dzff5EYO2KSDAK1dNI2WO0va41tUjHltxF2yeiHVlo1xMDkgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752017994; c=relaxed/simple;
	bh=0RNYMTth7sNuck8Mm+I60S+iu9Qbx/VyUtI1VE0nK6Y=;
	h=To:Subject:From:Message-Id:Date; b=YSDLwxK8RopxFfbXTGavrynGbpvzYdP5s4K5rhzX458kDP0eJPYRChz6hR5PO+u5xjh53dWPBFFxKrV7X1+USqDSRyYR3m5tvTndfQsj5P/q1vrhnJkG92QrlGAIByt1InsmktsUtQPvfQttaimTrJOMp1Vhk25cw9Zrb2HwdTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsnnF3pK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsnnF3pK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E3BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752017993;
	bh=0RNYMTth7sNuck8Mm+I60S+iu9Qbx/VyUtI1VE0nK6Y=;
	h=To:Subject:From:Date:From;
	b=DsnnF3pKaoJ1I8zpLH/Kqn0L4sCnBnsOx1wwv4nUrgW3fEjZz6Q3WhuyZVIMftGWH
	 Xz82xgiUHDEFuMqSVa/Fv7JbPtdoRvnQNjXkTyYQEsrTpXDCqJqQfV9fudox1xR48m
	 nL4RTwoZ/7XEpE6NWkRzAZY+P5qwr5eiqbBssLucH0D32SLGJzRL5IHdDiD6pHunWN
	 CMTQiPC6IietMyh4GsoN6QtTqZ8NS3oHYVcHAJqIJIYPU9O5Wxyn/LsW1VNx1VKY9z
	 WrLAdZoSKU+TTDbEn5te5NL3wQtKPKuMjLSD9SbDBpdUOz8TyY9KUXUFT2u8pfWeA2
	 qbY9iYCNqMwXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A3DC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201799357.23992.13508311127873162402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd6bd438fa7ee2b07fc4af6bcb3712834197f0c0f9a80686ecd276eafd59193
Date: Tue, 08 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752017993
