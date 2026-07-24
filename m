Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7803B47D5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784879434; cv=none; b=KMoKopShD62tbi2vx+pTgtV7KFuPKTB7bvcPesF1yJhbneCEmidlKuiW4ppNX9PUzHbVC6hdKqL8f0J97VAqwye9grBYi352ZBg75CoyxqsGDhWLL1T3odes4YEXNuixFibdx/5yf3xn1WdCXviSLr4GgUnobhRct0A755Nsxl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784879434; c=relaxed/simple;
	bh=34pY9QOfuxvXee6KC9Z3eeWwrFL79qCg63wMqcOUcPo=;
	h=To:Subject:From:Message-Id:Date; b=ph5TxarIXLM00pieN6Devvy6Nv6UVJShB/1v6LDNNqtCGRUKvp9R6vupONC8AoAYmmAW/CMiedaVHL1QvC0c/JzB9O1PfEj/R1D3gNzCiKLBEO+YVPerpl+hudTjWtmYXWYvCT1fEMy/bO+6MgOomS99CkagRTWxAHCIhx1PPJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqkmLMr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqkmLMr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7BAC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784879433;
	bh=34pY9QOfuxvXee6KC9Z3eeWwrFL79qCg63wMqcOUcPo=;
	h=To:Subject:From:Date:From;
	b=FqkmLMr6HwWX6zz+phFXw7lU/26bYPyS8lNBRaYSIFlxlnMOP6Tkkuc19pcD/Pa6B
	 TChkEYRjYkOs4pg6GiQspsdTSrdu6PZvjILxPW86RUhwVIZ5Oa3719VfM40uDfOa+J
	 TTLueuC/IkWsIdQubEABUynftgszc8B0OsoYxDwm9zAV5mGdjQT5nbrctX21w2BWnB
	 6jT5jdaW3j/zzi6yVL4bquT130KS1eZfKA0gF61PwO6vTU2Vrl9PrrDOiCvSxLGJTa
	 p7PaAfVqdN3RpgiqR4oY0n+L4ja1SolDyVMZaVqAlDpYIVOz9nsb8WPRd7VqTJUTxg
	 ABd+yYon6dKgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DEC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487943368.26723.17780603082985182051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10b75ce94a43c71c3fda703d5e6be5da5b2489a227ef905b985ba40b1df2f22
Date: Fri, 24 Jul 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784879433
