Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567CA1A3178
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743877194; cv=none; b=LW0usmtbBUC41K5OUzg60MrxzFqlbE445Fy9iaBMWI1fdIsU5A4jnIGgfoJtLVK1icF2737eOSiGsGhsjliJNDOBCePQ9eJz4mXUJpZT1H2bQWkqAj8b4gQ/p3sajD3ncrh1bPy2zH/LyA/ZqfQBWkX+a3zSJcMbVdS3o77U9vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743877194; c=relaxed/simple;
	bh=AuGSAumu+5hYPqAh3eayD6fKOzE0xkox27g97C8evMs=;
	h=To:Subject:From:Message-Id:Date; b=P2y+wfm9y9AZ6ZBNI11WJKH9m7IFPdV0uEaMjwLxLo7rjVwNx561c3xgzCV6AJKh/jqneoF6MkmGzI4Vm0Kn96mBebv5pBhlDU/fyTSn9w6yb9h5dnQStYgB354OPX7smsG3kg0dWoe2f2EAH207j9RIo+BUrPLaLzt1F4Ic6Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKPqp5mS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKPqp5mS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69F7C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743877193;
	bh=AuGSAumu+5hYPqAh3eayD6fKOzE0xkox27g97C8evMs=;
	h=To:Subject:From:Date:From;
	b=JKPqp5mS3GiOmcxkSLvTbDrl7qZf6A74s+BhtW5gSF3Y+khpJr0MSyzVlRxkpSOOk
	 bL/2+o5rUkn2VbjD0m1ZQzcE9EupAN4T2GeonmSzqkbZoOIXJqvASzalyXp0nvKZEg
	 YG8LhGOfM8SDKEvuDKXxlMFCzjog3CsgrYEGgPALHu2lpbUHF5heXI98vfp116vrbJ
	 8JOHL4vqYjc5HXL8KJL7m1xbU/n4o5Ojgc21Xg4vOWjPhvqzOkEYHo4aYjjeaNBpol
	 pFYNCwvo7yTDJ9oo36663bpzoSTvKwbFaLvYdnG+r3zPLLVvZuWUR0T11TJYNglh0f
	 kydpP5hlQ340g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B54DC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387719359.20951.5895948210334285669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1ebdfe6ce0d48909ba09656f90dc1c82dc2a14bae90be5523c759c079d3e2f
Date: Sat, 05 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743877193
