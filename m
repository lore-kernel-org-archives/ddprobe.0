Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DC51FE455
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753481395; cv=none; b=l+pHWjqyz0Nx6eloMGpvVMGeZrtV+ziLXjbHi+4aY21nZWR3bpxtHznOe+wZ1lqzjZpa0E215hZsqtbiwaPrlyaUcCenMY4S1gvQwQ3bCthk2Obsw+NKBRm1KS5Gqt/yJVDJJciV1YuBeeqCHHlp6WUqfCqbjK3vu8MCP5gjT+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753481395; c=relaxed/simple;
	bh=/KCWvGf6hA7beInEFtWXFDASCpikipUQTUlgLkNbtTE=;
	h=To:Subject:From:Message-Id:Date; b=KmA3XBFBuRxYjz2FNm3TdZmZp3CdRDMRE65JsWBhUm5drIJ6SsGipE52qU2owu3MM9Xbm9KTVreGveemvC2pIxoDOQ7lAfZsr8FkXnmaxoP1rQqhem8ui3+vcEdHq1cTMhUqTniS4J/8u4hMzRgX5F+rFGPqywD7njSgB4IYLvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RL5ad1NS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RL5ad1NS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A280EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753481393;
	bh=/KCWvGf6hA7beInEFtWXFDASCpikipUQTUlgLkNbtTE=;
	h=To:Subject:From:Date:From;
	b=RL5ad1NSCGR39ZcWD7hco5Tx5bqE31XgvFWQalJtpBOVz621nEh2r2hae/W9LxL4K
	 Es34ReS+jjKUGx1tj+omxhn3y4iB9o8CkXmQUdhlkE7e9GXBEvZJEgMQjdgDyZudXr
	 UFb88chrYNGXXKp8eRTysnMr1lXZBeWhkSqZvtu1BB4+wI0SxPVJ2tyHzHIt2x2iEz
	 4PIS5JugUuvLh0EA/1KUM45b8UW1FcAIdf6Eq5n+zhKvHbUSKsGVE+u+gWbrPtDgOR
	 yhKWwy00SDtWvvz0f/+btcShuikKFhrKiOdnVKweBqODEGLaKnvBFCc58r4WLoy+9h
	 vSYLvBTYE2HxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90072C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348139358.993.9969684347249017590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fad156e81abb9ff8b8163bf9a06b0b51e77e046fbea1e4da8345255b740f6c6
Date: Fri, 25 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753481393
