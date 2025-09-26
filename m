Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A09E28399
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758849594; cv=none; b=B0CxEW+E4bWdEptCWNk3oeXM/hyeCQDhwa5dMwBpFyAgS6GWSfr1hPX/OLxjZdDUNMg3UZ1ConJQj5wB0YDRVDI64+8sokY1A7PK5pNXzdCmSKddnk37MR49Lnq6tMPhWjoxmlf2csbUXJjcBa+vAjZZdML9g85++f7KVVK29iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758849594; c=relaxed/simple;
	bh=hZ9NwyvSlACCenqIJ2eiX5V+7O33Not0mN2h5FYcsGQ=;
	h=To:Subject:From:Message-Id:Date; b=iPsr5F54d1W6FhTYlKLiy17jY+xb+j2JCxS+sG7WA6tld+iNMCD9rx7Vz/eZ91auR9JM5RJ2IveDFp88bqJmAj77P2r6olbWpWIhj23b4jNH2sXSX3PEFIhfLjqv5W2lnrvNbopwWHHSYqkUb6ZbYtg49opgtW8T8uz8QjMkdt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtUK3u/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtUK3u/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0388C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758849593;
	bh=hZ9NwyvSlACCenqIJ2eiX5V+7O33Not0mN2h5FYcsGQ=;
	h=To:Subject:From:Date:From;
	b=rtUK3u/sOav/xZfrRcR5jJGx7MxtCc2alo/PA99JsQ2mXGA5ZkGfgayJVh/VDqiqX
	 967tXC/x8ImIXRXr5y6r7LXex3+fiKnQ9XjdXQE8DQ0V9jnksKw6SagEsDq5MhluVi
	 SYWxHoMVFPkwcqcwSXPHWRj6t5m7fGBL4MRtSGFiEhBETnh5+gCtIWs4sV9JYFD5QC
	 AQ1JsKGvUwuQ76s14ZHaTk8fDYugzJC6iSECQyhKQmNsIAVlASue73oTwnNM1ssxpy
	 40A6VgiQlKWfYmCMkUgWrOQyluW79U2oq8ipxAmdA2F+Qz+EP0cYN7CVCvmNQp+BQS
	 NOFGvNLLwp1QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE3CAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884959358.4411.11576421613488762938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f4b3ad3f02dd17bb8625794f415a0984d915280fbdc05a87d999fa5c755aa9
Date: Fri, 26 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758849593
