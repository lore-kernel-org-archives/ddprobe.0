Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC9F388E4F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774260294; cv=none; b=jJEeFAtzcMpzuwGtC70hVls9dkTHGsuWicjHfW0G5x5SqIpqunYCYPQBJufyvu7XP5WXEqhV8kPA+Ku94L7pTQercr9oK71bi3Igky79LizOcRxGqYsqSHxhC7KUIPaOkQ/Z5uGRB268UpmZEzo7pfcZbL/LxO+7h6HUC5ynGZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774260294; c=relaxed/simple;
	bh=YzhmktNNvb62g2+RYhDnHAJvJMp+dFQKLQVBJXogtyE=;
	h=To:Subject:From:Message-Id:Date; b=VNcOEr5HR5paJOC4kba3OvhjW1PD5dRAQLSKU0ToEjx22FSQxhFuhzXADhYwhmjtqpfiOhUu8pkbISQq/pByTfLFSdN8SWXPeCRUvqytteYyg3YiUdjU0npgR51AOSA7DMPnR+dOXsWkLFUQqgpff12sxSCgWvWH4iyPO1853LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gI89uTdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gI89uTdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F951C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774260293;
	bh=YzhmktNNvb62g2+RYhDnHAJvJMp+dFQKLQVBJXogtyE=;
	h=To:Subject:From:Date:From;
	b=gI89uTdgwRoAs1ojGRF71tQdLncY/rhERgL2n3M+yecEzRwpx2Wl8t9TzF34lkVlN
	 Nu+iqFM9kGtA/z0AKhD39hCbYcz4t+hWALFLbdHntQ7teZmtcRsmztIc3FdatoOxPs
	 eN55wk35zn9hHlFi3SItJGCOpDHUTsws0JksDi9/30eRFl/Gaxdu6VuqUn/7rlmVzO
	 d1tocXb8jee7OCXUNIHDW9YOW27FyHvLjlR0lS2gqMog6IOPFeXJDFSjA2ZV3s/Ils
	 uivlff2rTS+xs0Sfl/GTT87GrbuvCZtV961Gw6DfTScQoKg/nCCjhQEj5aFaLPAOw3
	 Sj/tvMPqvrg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90098EC01B1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426029358.8391.11433011798647599919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104f9c2baacf3f0a60174b5c0443fb3afb91071266d342eaa9d8560e2d05bb5a
Date: Mon, 23 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774260293
