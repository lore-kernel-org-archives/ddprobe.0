Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2D884DEB
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716543203; cv=none; b=ZBJu6W0VRvYe6yovvCr2G9Ht35fmZ8+c6bvquD/GmJxJLsbhkg1IwSPDInb8rvjUJ8I8DmNdQmEqZB2uzUfZ8I250hhktOn9uhhUGILPk5YEv6ndIyG4S0GgVK9J6sqWFwDHcOV8M8xu+KZg6k/AqrRDWwYCd6g//cjcXNHPQ9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716543203; c=relaxed/simple;
	bh=4onuyhckvY+dnF0ktfb8nOIC3NumYhCGBiR4Vp3FpSM=;
	h=To:Subject:From:Message-Id:Date; b=I+iNSGpC+h3snIyn/YRUCOZBTfD94DiEDwxahZbQxQceqAii5WjaGIrFw9LW6By0PuStpWaPx5ez3uTtEp1X9ZW8r/DvkFe3RCxBlvpIucRMIfMtTdqOlacVujVgUBW+9CAuACaPjVPDmWxxQ3QEj74rWdk7ePHhkw/QgBzUorE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqR9kpkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqR9kpkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69F9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716543202;
	bh=4onuyhckvY+dnF0ktfb8nOIC3NumYhCGBiR4Vp3FpSM=;
	h=To:Subject:From:Date:From;
	b=dqR9kpkhfwYQgcLWbQZqIaWSC0Vx9QchY1dlNE3BPGdWKv1oqfg95VIZgJDprE9ob
	 ZJKeJdUPWzGZ9R7iv/YdmFf/zZUia1wFT8J/tdSsQrMSNJvwWL66fV8l4wStNM7tTP
	 V60FYAMvBdcSFYTp1Q1rx5/FAg1psc01s7pkwmfy0trPvz1uAMRbjbxKHOglIthV3l
	 eHKsxwajzIEwJn2ztDkpKB0ODD200SCvCiuq+afwogLhbLuZWh6l6nW6IzA67+uI8C
	 sPKC3e5r2gLASoxXYdPc2LQMNmzlNPPDrSO41n/+N/X1WKQw5QibYp+01CyCbzkM/o
	 tsgWeBsarDWrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5A7C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654320277.3455.14037997427033877611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c05e2af6e826c2fa6e574d58b4e3fe1ce2d574a13f4b9463233b7321eb22ed1
Date: Fri, 24 May 2024 09:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716543202
