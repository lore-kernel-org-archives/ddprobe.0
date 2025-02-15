Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378C6748F
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739594334; cv=none; b=kuWEdU5GTbFa2a8SNCgwo/jKRfPgbH8n1OJ7aPPIgbyWDWWJJkkdG3HWa1Av+Gc43zATzwUPivXvq//qQvCdrIjXplIgpXWufBtfZL95bi+nN+rIVyqnCJu/ga+AdbTzkX6wjOvStdGHKfPf6pPveBPAG7sg0ebG9Sq9XOyq4f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739594334; c=relaxed/simple;
	bh=WMBiz9CahGTByyLKLIv7h1L/tmCh4gNgZRF/51iHYl8=;
	h=To:Subject:From:Message-Id:Date; b=bnIbTizehkmGauJYaWWlzLOxl+xuOjbjABMWuUKpdsIa6shPLNTrrs9VpkTTgp6i1eO+lMcRGSiYc4Ut5/5PxffBuDEFn5P7IS7zft1lyet1c1QjIf6BzoIu1XTtSabJJqqtMdTcgcdcbskQkanfur3BoNCW7BbELX0iq7Ox2Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osZ5jok1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osZ5jok1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC36C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739594333;
	bh=WMBiz9CahGTByyLKLIv7h1L/tmCh4gNgZRF/51iHYl8=;
	h=To:Subject:From:Date:From;
	b=osZ5jok1Z7YlzaeK52f4yDJc0qgQYcPeKjeKC/51l8o1ivLVTvW8MbSnVgQ8t+AX5
	 2fWhjwvWSMcLp4bj4tsjXFSJhwhs3qw1+VSYaMmVcIbtW8SgY949X+9anzeLEktGUi
	 wbZ9w+40ICN61EogeZh33BN7Jr7SwWg4H/A5P7MUuA/UPf0ecdPtLGcCsRbhtdRarg
	 SAVjzpsSABKgv3GcCEFgIHsfP83hJQzqql9Lti5fkKHRWsqOmyJoUCb+tFi5r0Ab8I
	 ncATdXRzLelhYp6L4NXshn0wJ+61RaR4UqGdNf2yqUP+t5EgdAP95z2/9sv5VTihq0
	 JFe4mncjtJzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAF7C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173959433361.29593.5729976090757045193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d9b67ce933dc22c91ed45c8392a8836a6e53b32eca11f82d9afda45dcc8778
Date: Sat, 15 Feb 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739594333
