Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0827A29B789
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769837034; cv=none; b=MPkiFTcR3KJW05j5eEX4RcuBOR6rDc1a4Qri8Z4M0rMdsCC4naijKjYFy3O8gOUYVDXg1BgwiOdDyRviLu3GJlty+uIpMYgIbpjIRVo9OEa+enrE6hAlXbBX3eO3/NOTvNa1UZNkz1/eVXt7T6/YKETWYBCkpY1X83CnsuTaYm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769837034; c=relaxed/simple;
	bh=lNAg8MgOm+a7bXOmH7qML8LGhtHwjvqTLWKOKJNJXJw=;
	h=To:Subject:From:Message-Id:Date; b=NAG9USl/QXbhoPRs8n1TDLgGG8Vi4PziLcBqdwuvRQkfcfP4kpOzy3jpOnzlT59pQPh7UZwJ1ic8+AUwAn5cAXfZGN322CNLgRGf1qcNmFPeBIvBiAV5na90SN2k6tWTu3/pu1+rsWZqNflAl+h04hvSuvUI7uXy3jMAdvattu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1aZFFqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1aZFFqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769837033;
	bh=lNAg8MgOm+a7bXOmH7qML8LGhtHwjvqTLWKOKJNJXJw=;
	h=To:Subject:From:Date:From;
	b=q1aZFFqfGq3HFTJxjjaF1Xo9JJBgIz2jCk/kEOUxpeTh1fU27SCpoQDyGXulZ5740
	 TlfnwSqPtn4tdIh3aK2E08pn/GPQ6ML//IAo+3SsjZucGkT7krk+KjAMtplC2+vLjp
	 Wto5W64XcGB/8yYOLOmSTGk6MX59HtzohAhWwt1w13afzQRr6rPFsFQPWM49sO00bV
	 GuhkWysKl8qWzJWlgRL2vHKQnEWlkE6ZCKdtLH7UAR4MLRv2VXpbxTdfzE55u2PJhA
	 rq3rqaBwFV+gwRyclRXKJXkBh3exyud9nJIKcbjgK1QpKL96VsPyOsjwvaoyqRS3KI
	 ukDRxNljP8xgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC49D73EBB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983703357.3959.11648704221902481754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88980c0435d9bbbca0865c0d95366e78344ddef17322d4f3322caa2fe8be2b95
Date: Sat, 31 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769837033
