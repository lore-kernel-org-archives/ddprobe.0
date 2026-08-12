Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C4B42885E
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786532434; cv=none; b=TeEtn7e3RaLQb5Bf5VrInhcqLIMII7M0nzImia4avxsVc4rlr5Xq7wK7KACezEFvQux50S3gM530nUJgNVdh2xbe/LUSLwpj+kOIx7/5h1dNQMSFRinwgJv+34WmqGERYwJKyZdLw2Fp92zBkyV0JTSbRQWnGd9m90726vIn8HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786532434; c=relaxed/simple;
	bh=L26s7iCKoidLWnr45l6hTpn4hKJyusZOhb6anVMMxr4=;
	h=To:Subject:From:Message-Id:Date; b=nAGUhXBpBDDZwIxDeYXjGxNmrWqRHnM4UpoqAisOuCyd9s1WfX9Q11LMM2cdvZD37Ll65F5yrLDWVedkZ0l6dbhTEiGaekwk5WIFUXImqTmrZk3gHaqu3Y66bSLCF4DeimN9pU3otj6RV9kw6lK2TbNJGtLlJFB27BVKksgqmDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJJ/eam3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJJ/eam3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75ABC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786532433;
	bh=L26s7iCKoidLWnr45l6hTpn4hKJyusZOhb6anVMMxr4=;
	h=To:Subject:From:Date:From;
	b=SJJ/eam30K/zD5eFFvW77U0erXHRuQY086U6MC/fuDmr4hqgwh9gAMEjlXdBW4Zzi
	 ogHhvdP3p0RP3KlelOC5xsZ030N6gPAVdP9Y+udK/9mA0VFp+/J6dfVsS2nlCDtiAK
	 c4bIhwp6XCAbEPU3f2m1NZact2ZXIfJr4YTAyRneMp29uNKdyKMrcgeYru9LUYEmTj
	 XxKztkd/pL1HR30NGH4LsMSwOVCs5nVDrJKs6HeXcBNvSIzkjvym4xjXym/zQwIAM9
	 b0Q2LVZx8rgguf8A3FAEmUi0TLZnNrZeGTKNAYbYjj2AGu9SP3Sqohd6FxexRZpEln
	 U7YnyJgt34b3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5368C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653243373.32056.5890886666001980992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1676b807a17f048977050afed1ca3b441f82e86c1f6e70fdc9d7af223181b9
Date: Wed, 12 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786532433
