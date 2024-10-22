Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA5D219E0
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729565754; cv=none; b=STCV8YYjjO14G63KF1G3thlH6o+G4hQXUN8k+caqmKXlY0dkcR4LWV9HL9Q8ZRq1LKJaR8a66PkHD+wo5Tmz2amsoN3aaKHrRz8xjAOO/SMf8mw4iao0cz7zXZRGIXE6lq113fH4cIIGC4yqRKP5X0rmtvJw4F2ePOvJrC/mrSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729565754; c=relaxed/simple;
	bh=XNIUF6OIrXUg9uHsUq/Lm4DBxSD03BH8f03P8jephuI=;
	h=To:Subject:From:Message-Id:Date; b=tjA2D2l5DiOtbcZz+VcjGSIm14jD30CAITSRRxCJkY2qi3wiqpQuiTsBBpuMOVHWdqjxUXyvy6XSF4tUAN/npnmwMVJ7I5AwcC6AC2ixYyL88TYTpVc3PTYdUyon+e09f9M/s6XRlsLstnxtcIMnhnIPxYOgq51rQgoSPH5l9Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDizgKpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDizgKpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CEBC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729565753;
	bh=XNIUF6OIrXUg9uHsUq/Lm4DBxSD03BH8f03P8jephuI=;
	h=To:Subject:From:Date:From;
	b=RDizgKpB4Cn5anPRHn+eI+OKiTVkXYMvqP/SsnTanBdkdLM8W6iyTtHbmopLXszqL
	 mez3vWw8/hmk+MT/OyZl0hAbv12Fnh6wGwx1BIEkZjlQgybakEsUek9iFL8MmZJa4u
	 FUTErsN/Ls/Ojpa3ncHT/5JubwV5HPlmAEk9IWRSf8I8tMbMtIsr43nU9uz4I7U9Wm
	 2EEXp6cjZU5U3731vNG93dQXS00gLScjUjS5fFXWViyIPW+1mv9P04ZaroUsHRNME8
	 OoLYcwBHLfUXqcbLSO8ffKak6IxsdcYcfhVA8L3F7bCK3Mq53tV7q4c8NweezGMdnb
	 atzb4pPWNJPPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61F4D1712C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956575364.12593.18283147280759908779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f16bb519d6fad041d90e9843c0b23aa79b46045e02e59a56807bf5b6aacf3f8
Date: Tue, 22 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729565753
