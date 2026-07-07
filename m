Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111013C1977
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783418314; cv=none; b=H1nptqDx0FnPR2ygCzNqPoYLwbHi6QlL+8mK0VVgVB4V/Y+Gb8K+ub0Hg99jTDbwTKotVWEPqgBSIqthwzblkAXiuH9Wgr6SR9ERK56qbpTTcOVTx5wxVWGBfZGjXKdK6315YRSkkC3Wp1neFTINRABX7o1pCv3lZQ+Du8XB1q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783418314; c=relaxed/simple;
	bh=Htb4QTok7hUWckpNwOTNTtZMY48HdbPp8NOIi2jlS1w=;
	h=To:Subject:From:Message-Id:Date; b=B5n91S6h9SASWPJgKNrx+gDFCGGqVVPzfGM8kOqv8uhfzxppjFigl49NpcYy1lD4XtK6hYzbDLYR6FVz+Dwnt8bEp0LgMT1OhUUV0HWBrtEAneqgH6/YzyEYKKhjIVmvSarpQlwolrCC7/eU179ANQQslifWDCVrO2BcwPWoklw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfGh5Z19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfGh5Z19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8E9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783418313;
	bh=Htb4QTok7hUWckpNwOTNTtZMY48HdbPp8NOIi2jlS1w=;
	h=To:Subject:From:Date:From;
	b=HfGh5Z19uwmuUBpsMD9GWG52EpXz3487CLtbs3g1Zou0+RMTjbaiPt47w0ZjKby6F
	 DCQxA+3vstegXSJZVEF3lKlGVbbqn4lVOEWHn08zdLpc811B52QZkwmnLY9T7XjJSv
	 GZDTjNgzJ0l/rwHtc9QoGc7FmY2x31p+3KSjKw7FxPVA0Gm6bsmgLMli93Q21Ti2Oy
	 hLqjnquT2ebBjX/xTjCBRmVd0UG+beMEu3fnO3uVEA5Qw46sbNF4ih3uSBMdASnVlW
	 u+O5iIt2cR4+uClt/y13/Zo5dDdpF+WM0aD4VIoRs1ko7Q9TzwaxI+HOWJ7DBQKcGX
	 leRa5+zFXS3hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98FBC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341831368.13096.7102253843920320804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e41ba41b903f307475d22f4c61da3b1f25bc57d1184ef75dbef1544a0ee16a
Date: Tue, 07 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783418313
