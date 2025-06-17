Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8452EF9B3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750185594; cv=none; b=SY8HYaloFOqB2H7A+/hLCJVOG9kEQfJ92aLmVb/6l869S6v9AetJv7Hq0IcI+ujD0LpFUWDHDrYgRHuxIJEOG1AviVBtbwyI+Pgo7Uw15QuX+uiH2WuE1+1aI5vueIjXFj/yb6dXWG4KzP3NdS0nW2yCmtXydHC66szfFEtryik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750185594; c=relaxed/simple;
	bh=4MZnJH4c7/IrDnbaSl1bfc20RWGRu3vJ59JE4vCmnDM=;
	h=To:Subject:From:Message-Id:Date; b=EbEpi1mnxTbi6iQlUKwibNIP8mnSX1Qw+pV0vMZRUmZrXiltTcbTVcC9Ww0ADhB9VqqyPLOSMsO/+MrgDml9O9uO+ibPmtExENPclFLmcHWiL/hwXNAczFsDevWFXXnmpv0lB503Glh/A5ntc2AjWrNiKxnZxV9bgkEX4KhX3b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCbFka3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCbFka3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0294C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750185593;
	bh=4MZnJH4c7/IrDnbaSl1bfc20RWGRu3vJ59JE4vCmnDM=;
	h=To:Subject:From:Date:From;
	b=gCbFka3kBnsTMZVIwEGknH4DoC4KHwKFFUQyex8bhrfGG9u6658D2QElCKkw1N/UG
	 hREQJYULLEY2kXCPjIbng8KOwr+hVfnAIuQU/kyHEMjUVBzMs/qv5SFfDKq97RkkM7
	 XrOkVQRvN/1dCgrzgmqyOK4P5L+xDjXtakyYBydfNn+1Q/ajD0gMvEGCwF+kRZ+GtA
	 F9uGRoQxQep266IeucVG6AL5Xqm+vpwlofJ+KVxSVTH6tUgXXOtW2PfE/ClWOtbJzo
	 oeKWXivsWWw9Wbd/dzoeeTi/Co1t6900E4/Au9DjFKBB8kl9ZB7vFu3jNtPoYIj1ox
	 n1BWkinBT5KUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBFC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018559358.28550.6307857378594223833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707eb45a768ab0c38d21f47bc9462698dab8f56b4b82e57084c033a986bf57e2
Date: Tue, 17 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750185593
