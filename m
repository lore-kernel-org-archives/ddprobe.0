Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1DB1422C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727946954; cv=none; b=erhfyITufn1/h5rLBFK1D8S5Mic1mPdI8mh8UIZ6oosbTVKQ1YqW6WCvsqg4y7BBzu87T6wTKOzYMnjuLic3wnKEtJQfv4FBopy14Jhw9jhbVqhwYwlIz4Z0k0RL8tW0BzoaA4sOdap8NiEXpkZBDuMs5GgbEC+knMPcEM53vbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727946954; c=relaxed/simple;
	bh=oLXRUyC68opkXZH3OR9DiNQRH7S/0FXwHx4ZdNm5bHM=;
	h=To:Subject:From:Message-Id:Date; b=Ur1Hbu7ASQrKOYen/2/mBmc6e/iQD64cbnk3ba/dPtZzd04EGBbv0UMePX5a8De5pVQUHFrx9xE/P/0Fh5FK+LntF4OjltaRrek9cs+knipD3BXXfpWqc+yE2Az9WxRWFGSkmzr4zcgwgUvWuIoFMkruHMXDJtPsc8wz2lx5wjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhyDtDN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhyDtDN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA83BC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727946953;
	bh=oLXRUyC68opkXZH3OR9DiNQRH7S/0FXwHx4ZdNm5bHM=;
	h=To:Subject:From:Date:From;
	b=AhyDtDN0mQqaedDs203KYzEAJIlBCPX6tB8CAUiLbZVftXCQkBwVQImRa/YMPo/kU
	 4S1Apj02snO+pS7YAo1eyiS1LHwzbFdNiECnxfY7nlsn/h1dfnG821Zamly18pyjWr
	 qvZT77Y4cYr6e8IWFG1t4jvHiMw/nwH8WxtMVfI4g8Eh5ekbFmrFvwvVHtyESjepwQ
	 Vj/2myym7LRTMoMl5ZF2Z605WxYCSKzNtI/hlBJIiFbdIetkdCAlAc5kpEozBPIjN7
	 pYVYQulA79HArRcE0lsZv+jZZegDma7TX25PvRBcYZ0bQTnkAKQBHfyFC7ifJQiWSp
	 kVF9JrOZOwJbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A128FCF8570
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794695364.22332.14059972288929974319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecb35eb9bb58a41fd8f057e5107cd8f71324a576a8d8cd89aebc2ed69421dd1
Date: Thu, 03 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727946953
