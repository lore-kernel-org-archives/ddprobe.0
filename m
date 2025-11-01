Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAE921FF35
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761981594; cv=none; b=cts0XFis8xbMITj6WyP0Yx0K4SJqApmK4HK30aexY3ny0meTOLqzBCBKaulCy9ZKSJ15ZjzAFka0U34s+n/siIfocZcyWKU2vLugn+I7rbR5ssdWsweBOxopkMYlm+9gREaWb0URxeGSYWTvaRYUhAXYYDpMHtTsO/Qt7uRFdlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761981594; c=relaxed/simple;
	bh=m2VkHFRZVgqanQKHjm3Te1G45zxOxCpZ600YNF9vYLA=;
	h=To:Subject:From:Message-Id:Date; b=qMSuSki8dEeYj7mScBxN3ZLC85FowmS1Y+27YhgJXLmEfQuAxsJzQ3Azz5XeNgxQ5Ba49oX4BA2J1MN4rN+d4F4MCNVk5aS0auIZouCLXTu2vBc6fFOVSDx+qMDTiltKh8uohGgPnLC6RaAMYc6+OSoUq+LjY/HOBZ6l9H5MYFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSyzTpsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSyzTpsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5415C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761981593;
	bh=m2VkHFRZVgqanQKHjm3Te1G45zxOxCpZ600YNF9vYLA=;
	h=To:Subject:From:Date:From;
	b=KSyzTpscid5pZ1r66sR8UxAApZcByQ1TL8TJ6FWaRZnBAv8PEVky++1vDCmMmGiCo
	 AF9XOn9FeN8PW5SY51JMvsXWV/N9/SSNWfYrGK0yG7tM1Hi/tiFWQsuPHI/4vovBaO
	 6Mzzpg0Igy0eS8awOySvL1TZzUSMovFBSgZ0CQUo7MOHSRfioUZmvWpkQy3ArANfqh
	 C8HjW26rSS1NV2qGfXk9WTetdiHbn9856mygripr6AnrRBBDMje5AqZirpryDFc7pS
	 Bmgle4peSQbHiJuZ9ZDQWDtC2HPGjY3Z5ZuZ11SvzUU/Z/6uzjK0U8aR8JGmC1IYCE
	 egNA2b7uH+DDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92121CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198159357.344.10293569952162166309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eeff4cac0669a455f137abb5d6fc102bb7e3bcf5c1d6340c70968917d8f3f84
Date: Sat, 01 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761981593
