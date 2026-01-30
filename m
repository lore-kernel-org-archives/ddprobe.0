Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9361B4138
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769744034; cv=none; b=JNn3jvcTz4Vvnr2WDGpa+dW7i7mRauU+JYDRbT+og2O5WRqSowLSIgk9EB7a2XY2CI4bZMbHGtZXbWGxOsgP0O1H4DBEgM47O1ZIdMphKQl7F+REkubMw+XpBMsSK2cbPFVG4c0xSHwUfPkMDf0EVyOR2tQ43MHnkwkKyuYq4/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769744034; c=relaxed/simple;
	bh=KWxNXbRuJJXXlnpbmN8xq5Xsup3VHBJ+ZvSB2hAC0BM=;
	h=To:Subject:From:Message-Id:Date; b=pjjO683s3XjuTQj1SA/UcUqH9SmlWXfWzX6WRe6UlG/5SeTod0IHPDWh/FeaDCw+a0DH4GG1cCVXw3aLDPQY6Im0kS95fCud+LUttzH0+pGXItbNyLwVkymJoguwTT5WCK10fnh1aCx738fY4yIvgFfkfJXJ9r+j7VDeuxNksxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=li0bAXPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="li0bAXPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDB5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769744033;
	bh=KWxNXbRuJJXXlnpbmN8xq5Xsup3VHBJ+ZvSB2hAC0BM=;
	h=To:Subject:From:Date:From;
	b=li0bAXPATEFs/QInwLloa2+XfxrrqjFdOgzv8xHcpe5FDUrUadYLbBjLBMTrt3zts
	 D3rQQRIzecJMxVKjByKhh5WI6sG/gPhk0IWtzwsOk5eRHpWN4S8SR987cUv9i/DSiP
	 HwfspdnmChG+wWO9ivT+1rUv/moLXFtgHM1R/hBXCUyZETHEMGVwMY/Q55vnen7UoV
	 0EDJs5+APWqifnDuNd6RkukwFs7cjC7yURI10LfL+n1uCOJ6dXj2MJbnQb7Hpwfb4z
	 KHJZ8oIXZmkpSaqh1t3r7PP+9lKCRNC+o6rj8vnfAZpW7iW8A4aqV5ckaLsgXCir2b
	 ijd1cZSDb7UYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9661ED73E86
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974403358.10557.15854347156958320720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f855c33a386b2842ab0e92e0c4578acbbc92b9fc0b3cf2e69e99692e2a3e06
Date: Fri, 30 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769744033
