Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266E831F989
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778723434; cv=none; b=X27NNmKralKeCI3tleBk19v2nkt/B/VEmmAMpCmSAafyXnhZIs7G9CRQPSBVMSjDWGE8WkQqn3rvNjvnoPnQy0TY6A25YQVrE4qct4xYasznBDmHojW+lYIKFk6qQDSbTqQ6qqy9qsQuc/QsVDWR4B0fivHHskKz85YxwHwcfbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778723434; c=relaxed/simple;
	bh=Zh6j1WbbndrzY1MiQ+lK6DxJSRz2xj/Z7ts6MmDi7j0=;
	h=To:Subject:From:Message-Id:Date; b=cWWzdmmmGIc1D9ksPkKAkC5DEO08H9n+fx/A6XBCHzD9nq5Z60W/1aC0M0y5Ege564cCU4/6lQ1faIsvbtMq5VAtQEN9rNhY1Zop+OGjeWbEM4UJx40fG7c18ORHpTMcZVrx4O8H4dXAT9vrpN8EbsZNzQ72+HaY1OHbddHLJbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9S8MlPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9S8MlPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DC4C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778723433;
	bh=Zh6j1WbbndrzY1MiQ+lK6DxJSRz2xj/Z7ts6MmDi7j0=;
	h=To:Subject:From:Date:From;
	b=t9S8MlPjgc84MoDtN4MhT2mlDqMr3tvOPXYeP72juHuN46OVqvMMFUIDSLddc8ljV
	 UDKkysbTwHOntfrygvmCIrBSiq92pQ4gArIMDHc/cXPp0S2VA4qMxyyeVCp40bohAu
	 Zp0Zi9bQWA9h1L5QWj8lJvedjOhIAvtb5rDeOJpjTxnAWmA8gdLV92n3RmYZjXLrG9
	 LRWlu4sizum1Y82DdJxubZiBVc4Jvul/sYw4mzFErZD7k4FAjeeDPdOnBhkuDsclmj
	 +7fxCuglMvVhESoYMSrYFGHREY2HBK7FLiiQnOdP/4WhPEZEGDD0Qma8odOO7xG3rY
	 6wGD44SaUQ2Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB855CD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872343369.335.4622428939121264349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4431bfcbd04e92233927bd30ed0c41d3ccca08f23176af2504952c118de36baf
Date: Thu, 14 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778723433
