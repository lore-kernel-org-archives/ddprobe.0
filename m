Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ACD218AD1
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749166194; cv=none; b=hGS7AbY8MeFX3uxyRg6twQcKG62gphi8t72tpu5lkMC/6K0ukRUp1F1ZUfCtxY3a79S82DPcx1FzmedRwYCeo6sFwhN2bQfXWMSPD7CWQ/FfB5hxl+fqV6sx2kN4WlyKKQeuheUAs4JbKYeb4m8dfMACAFQ9jtu4zPEgYxIu+pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749166194; c=relaxed/simple;
	bh=dzQ/ucNoSdJuOu1mK9zngHbax+5EeJhHkStxvzJFS4I=;
	h=To:Subject:From:Message-Id:Date; b=VpbUgYrwt+sabiGtFsQ8/bt51qYHdHS1XNbU0KdKeh2v6QnKKz3iL2QPixyjn1/tEq0H9W/wAZSH9F7WC2nN1ZMpGuXeTUEaIlNsDQqxZazkERw1Xg72JV/wIu1G+ooziQJtUL+QplIU1JY4DCp9U6VR5f1wj2PwoGChFiRBiPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBmpn/67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBmpn/67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C00C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749166193;
	bh=dzQ/ucNoSdJuOu1mK9zngHbax+5EeJhHkStxvzJFS4I=;
	h=To:Subject:From:Date:From;
	b=fBmpn/67SakSgc7Hq8IEvaK+1PFCNFJcKYMzOduoMVrxZ/M+WgK/5gdiO3xSFApLj
	 pnRJYQO4a1lD9vW1flXeLDyEoF4qmEQuVwlEKUn9q1sRoSorqP6p1BobnhdfGcjO5k
	 mFK4WkaA6ovv+zBK0oAuCO0jl6sW2YqCO347iAas4cAXCu+KJPlRlS0NeQPrwG37oG
	 dPp1U/2SF/sYzthL6W5aW3CxUQGSvVXEZLg54BLTSjnE3rtdk1occTsEiQTC0Sk9z2
	 dyMnQ5WEgjwkUAbWSEX5Q/ibncxcn+lP7Afmr0STUEtO+K5/a94gwj2pQA8+3XHUF5
	 XmEM0fz8TkCXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D6BC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916619358.25006.3391012146990833918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a893808d7d5ab8500e0087aaa4e786fb5d03f335ec19c28de91970649da8fd39
Date: Thu, 05 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749166193
