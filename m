Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040F322B8C5
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773240894; cv=none; b=GuL94TxlGamGZMAaGt2b3lF1ga/QWs91gZkOPgfNURBOuyDLvp9Tzhomh26Ly/JA5cWFVbWDm5q4DKHuNKVCFIccqHneduPOdCGKlMCgjjqoGHFRE+Ds33KI6NkJOFUZG10f9e/XaR9mSjUDoTkcVWJBulkyAHKKoyU99NkN6k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773240894; c=relaxed/simple;
	bh=GYmTscBBJgSuRRVM6EVZZWSJ7SSq3EARWQwT7GR2+PQ=;
	h=To:Subject:From:Message-Id:Date; b=cbyT7Wyrd17DZTsc1WQL0A7z0Zsq5qi3AZVQz6MN4+hrtCXl8ISn9la/qvx5WPK8QAJ63YuIRv98DBSLnfEpMa1kMjIHSSZvXMAvuMv6qylhQdB7RJ72NuHLD63gFwwcSexfLtscb9Ec9lDNm7DNm+mxIdj8KPfSWvIcKsEkjUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxUlgURX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxUlgURX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1396C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773240893;
	bh=GYmTscBBJgSuRRVM6EVZZWSJ7SSq3EARWQwT7GR2+PQ=;
	h=To:Subject:From:Date:From;
	b=TxUlgURXM2cIFLR2GicmZdjt53uv7n5WggCap7ehiwhEUqZJUZJbuiA7jDVgLtAL1
	 uPWKfzDSqjOXfa42uxk3WPA4wpkfI08WUdjf5gy2qsjC7kIbCPgheLiAgFbiYiqMsx
	 7X72lT0ZeW2fzqfTRPWZb4nxcD6GeQrHWeOMueWmT0Vf/AJcr/Azbc+QNelRYe4Uvh
	 p+uza5I3RcmgiRyt09XX1M9sWKIx32Q3PVAX7/4Z2HuB4eUhR8XZzvXMFO/IRAcXNi
	 OBlNWhfUHjGhg8PupHf9/hxRYDq113HPruvNNsMZFoMMv3rJoMnM/g39n9vSAaCDJs
	 EbC9+enU1WoeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051B112583A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324089358.20295.5352242691277456977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d66e5ebcc55994e214377171d41c0a3aa4a9bf6e1151e1aabb0661a04f1056
Date: Wed, 11 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773240893
