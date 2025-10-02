Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DBF16132F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759382394; cv=none; b=YANe6IuEYm/BVpyAoMnPfiZPaeZJidUhz+x4oVPVup47xSGQktBc9I7QU9gG+dVaEqjkZ9797K+cTiIYQsRxnE3wo6xztrIyhmdjjMt9JtJzQ0I8T2nqp1jn7HvN/ZHCGmcppk5jndR5RKvQmLDgB4GK8kl5iqyE+IU8VYRsUho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759382394; c=relaxed/simple;
	bh=v4wnIqwtSFGJh/geYh+r64Xd8Nth7X6kgu2eAx0Vhaw=;
	h=To:Subject:From:Message-Id:Date; b=G1B2yU99clH1jtsH5W1O0IH2nlRZt8jS8EiSmYnQT/M9w+s43bBUWmmpcc4eq0PcIma4FaBo+3HzrHXSDbg+7wWEDjOzTlcRHKAJQwiUwT27EKhmA7RFfXKsxO5s6fPVrxAjnZNyK9PBjZyr3EhjXKmJEZiO6FE31vi1KM/7WKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqRn2upB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqRn2upB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3040C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759382393;
	bh=v4wnIqwtSFGJh/geYh+r64Xd8Nth7X6kgu2eAx0Vhaw=;
	h=To:Subject:From:Date:From;
	b=EqRn2upBDLjX3fxHShx99ISM+EbUcRQgMgKFtQ7aPhczDYglI6L4R6TGTiNjk930u
	 LZjZGoDpTCwFRfDMbPq1e8C/LsDJQcUFemBYxbcMdtSEw2IR9JlDQKQtrg6k100O9S
	 oyr03Wyc8wsNZEMNiqfwmlNQWIrWOYZRlL7qBonxPGdcpar+hiYiy/ubEFWtNArnm/
	 GfUfjCB6YrkS8sLFLZoJM/cDdp1kzIIqXUZn6/f+O4kSYAwEZrFQK/MoQWRvmvq/nz
	 BZox7m6hgNXj4zOG4mayG36ZEDb+kvpIdPp+2g1zhzMzXA/gepAsdH5sQbx27GVOfZ
	 GYUElMivZqsIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D0CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938239359.9259.10469363200405993415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fe65e2699ab301e3290acab0bdb83148eba5b96c72fb24c381d6ff50eff44a
Date: Thu, 02 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759382393
