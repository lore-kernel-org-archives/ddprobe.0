Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E15158538
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751940594; cv=none; b=EaQdqV198BQWiOCfon4HAQs1Ef/Q+P+B3YhqO9u+tBLuqsHycBqfTU9w8z7lYZX1ckmsrJVtfBn6CjmRYBdvwvcvi8dZbb8xxFj+3yD3/SHT0SolVx/L7vBMgZICSjzQ3j8rx2YQT6GKn2tEheD0kUCsxEEiHQgcgiLQRg617KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751940594; c=relaxed/simple;
	bh=9Fm5uerMnvnbhIzeO6LBldXkz88byl4N8F+24k9bULU=;
	h=To:Subject:From:Message-Id:Date; b=flnIvPMRsrDphr4pY2fERG/R1A8pPzUBIHNmx8Y9sdOQ2KO6IQRF0VDZJTxa/5WHzy9R1ti62GgcLrvOCubO+0SxUitTZtryeyTBFvaK3jNw1QuYoyL0CoD69vdTWc8Xrit79MsSoq34aWiB0hlXTPO9LRPtEMYUmxf4hVAuidQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B50tzvyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B50tzvyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E42BC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751940593;
	bh=9Fm5uerMnvnbhIzeO6LBldXkz88byl4N8F+24k9bULU=;
	h=To:Subject:From:Date:From;
	b=B50tzvyLSGs/itHgZGdusw1j6hxb4i8b7p47XPQd+z2BbZvMXZVpY61EP2ShBIjvK
	 vxzBACSOStaH1Td4FHjkSvZ/LG9RPCBV4bAJzC+OjuVC24DIfcWuW7e2OPtqRmVmqh
	 jnLidpmVz64lXCiISvwSSnfTl23YgNX5/rSiRf1qg7lNDGNOOOKhUwJ12nuzQWukEc
	 DXCMjj1QbZAYOqvsQZVYChE6+n05rISHnS0sjQoDp8wZRTPeOrNfKFUgfiu1v1w1qZ
	 JRVfqKAATozlGaxl18WIhNh+kDSsHT2HCAqg4b44zKO4HwSC1GwLKx9Km7dy6uxDi/
	 yrQ/5STMWyhVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE38C83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194059357.22119.6158417967305361830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b052865e3d37a4746d26f36e694b5078a19316f5ce4d23a78c91af58db27bd8f
Date: Tue, 08 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751940593
