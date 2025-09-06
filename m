Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241741EEF9
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757129994; cv=none; b=CqfG19mB+Kc+FNJjC6irdF1AfejnhbMVJITSVS0VGNBQdph0phMnT9xR+uGyCv6LpTfFsLDB/ZFvrJPiwDZKNq0lHmWmSahQ5tR9dOfxg2KsM3hRVbD+f0d4v62M+CtiHnCAJxjkvsv1UhWq1s7RTgNtQr6m8rlRaKq0S/I998M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757129994; c=relaxed/simple;
	bh=56M4AHGLiMzJplzuaUu1fPCvKktHXMbyu6jIMUHR30o=;
	h=To:Subject:From:Message-Id:Date; b=J0p5wMXDkYJW00gjfNaKFhbfcxaayxKSfSVw4p4onCzWSXMKQ49+dxjyZTOwlbjjWxWcHFOSaEEvJEsEA8T4C0BPP8WveNu9ccKKLabU7i0VYItwyIqgjl7d0J2Ffp0DO6rcqObXNxzoTuvQyyuaZnr4SuCDysvVtJ/JidKhaY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRedr51Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRedr51Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0141C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757129993;
	bh=56M4AHGLiMzJplzuaUu1fPCvKktHXMbyu6jIMUHR30o=;
	h=To:Subject:From:Date:From;
	b=CRedr51ZMpoeKdSxLLYXU4Gcad8AqI/2ab+ae7rnkEGmcwJ+vAlfN7RlmxGM0pcor
	 dvHTtwgCdv1H0u6v+YkVeKEZ0BeTWg+MYwvFvzVJwC6Fpqk6MvbWUwKhIiy/cqd3w/
	 J/W4OlgYGiWMx/cR8hw+1uW0T1flMS7ZpXE2g984PGzta2l1L02zebJMJPq6BZ+M1F
	 LVGWptRo/TSf85gShSJaMjq5oQ4k3nrb9vVGApsZIiCcWN4rkTz4scOGPumqtVzovy
	 iM+VR08wTVHBLSBZFyrcHzKCe1NyuwzEkzwPkLiJ0xnKry+AndPH4DcY/BAtf8xcIa
	 7/Bry/Bj5ZqsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E776CA1016
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712999357.14647.3679756361948168415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba06cfaafaf29241186e8e3a44171ee5240d168895d87540c74974279c2389b
Date: Sat, 06 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757129993
