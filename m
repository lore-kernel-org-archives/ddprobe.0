Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3672E3B1BD
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771216494; cv=none; b=Byb48/rnufUx7vhau7F94TAp6vvBjBymG7m8nrmTrRa7bcCTnFk4SgD0jRMjJbALk/+rPsBkFk46Y3PfDaJBtx8RCzr4I2IS2fLjrmClOALGMWsNRr+C+pQFhFhLElEdxhXmp8Sy13tjZQH1HdJREDilcsPNsuYQF+Bk7u4So8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771216494; c=relaxed/simple;
	bh=YtGg+bWiOZptGMiA04y+/V6iEOMTD4CWfheqD1T2+08=;
	h=To:Subject:From:Message-Id:Date; b=CsLy2+rtEIKriiufta3nsebsjOoP/aHMPreoqEQUjc70VHh/DJj5UvHreDh1uYr56cdRGpMIeTnLIvh+wVzvYcTP3drd09WDq2kwhMjkyqTO39wopoJ8ikX2yf7dRKFqL6OQcjyE/VrXoAWQrxMLa41nkvMmBuKnzlRIHtCDfAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGbDoJDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGbDoJDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0442C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771216493;
	bh=YtGg+bWiOZptGMiA04y+/V6iEOMTD4CWfheqD1T2+08=;
	h=To:Subject:From:Date:From;
	b=eGbDoJDzjg1Yhc+e2xBW9X87C7Sif2R+TuUnKxOVYfXHPqgGW5es6ZdjlaC3fdBf3
	 tl7cMnisjCxWKzOxtcBBQNZ9L9lXC8ZlmI9CWqzvUR4757r35xMlNju3W/9vnK6+SQ
	 jlH1/AP6fV5gYoWv6xRXajAR4i7dqaDyztiGtZntfEJOUUXHppy81lGTWjuw/h5VZB
	 K0S8m4OruwkelQcJ/hpSS6ZKZ0BFCk8UMhdr9EFEK0KgB8lbNflg/zDeMs8Cyysvo5
	 ZZmslFRzAFhfbtc8m26hKAGePnL7yEUlyL1dUMXSbxDKY7SC7NJJMVe3w8B7M/mWMR
	 KIi8imIxoSdMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA830E63F2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121649367.3391.3708711394657468172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a1824c111b55a2fa6a4420e39822b855de3446d5ca0bac76a09a8e21e73d1e
Date: Mon, 16 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771216493
