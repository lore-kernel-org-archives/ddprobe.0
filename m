Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA552E413
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761916794; cv=none; b=dWMyPM2Agq7D2QU4zPWJTSu5hB7Ss8zMOfj5WfX4VO5p4CnXSGHKTMWSSQv/7Bk7gCQ4ZEh3P5xbg93kFcOC74I4/mxbckPAZlkN/QlmfpNh9nGtTznfouJyEjj2lCcuQGqR4M40kdd64WPGawUVpBXmzG1Laga8yyFaEvqiPOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761916794; c=relaxed/simple;
	bh=RH6Ekzh93Vgcd4LEtPS2pP/s8SMsqK/zAl1xH/P0/wk=;
	h=To:Subject:From:Message-Id:Date; b=IB9ZGq7KfqLbbi8jH2nfoeA9wTPhUI8IkBtgQEq1PQs/XtMwe6WcWh9wgV+Zay8AyDoHgvCXLjzwlXF1zwHfOuLFgOJFIVqSb5GzMTXYuoQqZT+99G7/qH9g8yrJQHztHFwy1oRjoq32xrgnmVmxNMOKfpYlvSWOrHYwiVDBEi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OekCeqEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OekCeqEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF14C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761916793;
	bh=RH6Ekzh93Vgcd4LEtPS2pP/s8SMsqK/zAl1xH/P0/wk=;
	h=To:Subject:From:Date:From;
	b=OekCeqEAIq06H8zaQgri5loWaMYg9ooos1F7CiiebDanqcNu0xscsXrOQy0h7jrJ3
	 enQJzNY4sQ3a8okPM+dSuNKrwIPQL/h7G5IZUNIyBARJ8BrQO+qY47a1tUdo3j4pyY
	 yWHKBuzOByOn7KvYpakFGKNy+aODcEU1c5V4gqIEcHwbXcOb4ZtQhMEk+ZYUjpOjYm
	 1T0Gnc/bDMK5mbUi8rrSTjNF3Ta2zqudtKk/WaNqzYWHZV7Z/8M1M2Z4+H8SUtibEt
	 G5yc6Xi18E7nS0F30t8syfpbEXsE19z6D1hPazJoevE6LohTmcRH/uGzPMqwLX3rsJ
	 qWVnaF0ArJY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D26CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191679358.23816.13286314312707628961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76590810a2de18501dfc6ffc661e0e9cd9501eef2c54d9badb24d5bca7289cf
Date: Fri, 31 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761916793
