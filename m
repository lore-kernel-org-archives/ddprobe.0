Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A2133B6CC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769440434; cv=none; b=rpKpJFnlgufYNLRsJR6hqfU2hLg+7Mawo6Rt9clqR4BKRqTtjTcfXTF+Uehqu9koHg/9R/uH9o9bz4J+BvK8VwWt17Q95K2BTo0DTKIPsKoDu1HdDDvfEyHXKBT4mMO86peqsW6PUkfFtcwTsMph+zyVxSlq4+b+hw4v+AujAXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769440434; c=relaxed/simple;
	bh=5JegCNMqjsfLdQBNuaRXoonLeyep9zSXTyPbI3ZPPUg=;
	h=To:Subject:From:Message-Id:Date; b=jLj+2SyXHgHZBw6v1agUG7tEFo17tppzIosiMVhTCMe3G8S3bqgXSiTfNvsP2fE4WHnneNbIwpYWlNLb5OnwjsGkb5CualCnM9B/sH3evNFbmIFwUopl9hgSpOXaL/F/2P1wWjjemA7q7yLMdqLBYuQnDafOQUfVAFpbe+MR7ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egNFAcAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egNFAcAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D62EC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769440433;
	bh=5JegCNMqjsfLdQBNuaRXoonLeyep9zSXTyPbI3ZPPUg=;
	h=To:Subject:From:Date:From;
	b=egNFAcAaay3en8+whSyUKZ5XDTs9gfzeyYuhyu/3z2g8NE6T0JnoqzKqXPFGaqpIh
	 IQvnU6ZhG8jmNGLPyg5lq8Z932W6IDZkeuVN3VhOgni7QEVhACUX6O6d0rwCvY1xke
	 pcI3o1DBIOmC0eJXY9l33YJnvHPl2LfiqiPcciWvnVe6aVTwVrJPCa8zSOaVmeLhZR
	 bfo+EbF3dP5U9gz5ddEZSjJzIseGDKDrvxrHOpvatLHu95MXqDZjDIuXM0NYDphtw/
	 71nLZiR1pUFGl4Hrh/uNq4AzYTxudddCTZrfUNckqS8dAcXpYFdwjxI0vD5Jhjsv6O
	 x/8xUO57AzxoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F695D13C2F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944043357.2600.2040412042547739269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d45639bc30f9696ad31ef9069b62e6e1dbc0e2bbb1a019d2032fee1c4ea980
Date: Mon, 26 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769440433
