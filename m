Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FAA1E502
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756573194; cv=none; b=czquLYAItiswcyJPKFJDSSWudhIaAGHtsEsDmIgIhoHQ7a65AKZXIvd/OwfTa7kNpUdcozPu/I7j+turJm/jEIIHCsQUffyOUxW/2A0L4wpHdR4nqDTYyclRa14yDy2lxEsL/5FvktWMsu4vWLxs3vxEZXlQLPfh+Ao8kbNLO1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756573194; c=relaxed/simple;
	bh=96HzNDD5MPiZzzIzc4I5YJ2hfecCSP1/c3nF4nwgpeE=;
	h=To:Subject:From:Message-Id:Date; b=ULeWcFa+7WmvSmxZIiqe7F7qgE+YWBCCx5NHbtb80YPQqiAf9wCErIouqj958BrIwiI0JCqeb+6iv8k7EEDCSIKLhnxcjkfF2aMfZCXnaqvRIK53ahJjk6834eaQeG/aCzb7DbkXIFzfZXUobDpYlGNwHxNnw10PK6pHB1sTRJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlrrHHKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlrrHHKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1572C4CEF6
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756573193;
	bh=96HzNDD5MPiZzzIzc4I5YJ2hfecCSP1/c3nF4nwgpeE=;
	h=To:Subject:From:Date:From;
	b=XlrrHHKxJt2/VkeyiQDX6DbD3nWIlyPsGfrN2ZN/sYCEXhplWFICUUZRt14GAah99
	 hlgFGpOk+tywg+7nq+eOuMGt+JYJ/TytyKXELvSNz7MixgslZ7Dl8V7QRWVZbQkA7R
	 +zed3pMLR4gAIQZB+49JX50Im+E6L8zYxsK36P2JWL81d0eNrgDUjMdU24+pZkB12p
	 TdIAriSZXivjBA1e0b3Nw1ZqZN5Ln8T7ydopvZc8ErJT7IChVBZTU5nya6DT9Fgtjp
	 PQWcbkxiOsiIb45ugpUVwvw3+guzlmX0Cd8xI9PCEmczturlAl8YBXZ2LpbupWyKPN
	 NbosQf3EWWRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27BCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657319357.21791.13559402328028224567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9adc28af215f07c21a586ea9da58f3630b5982a137d174344185f1c0860bad
Date: Sat, 30 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756573193
