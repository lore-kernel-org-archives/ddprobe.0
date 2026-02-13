Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF731F30AD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770942894; cv=none; b=rv5i4v7spExRYxvQ8p0PmBFBuXCu5IaX1DLHVO/4FRwsTB504jxeH8jHpWCfM22LMqveGnZRxpQL/xYqI+VvwWx2HyInieo3MEc+tOXv06lCZuQlQc9neU8wGyzNxOyykTIMMlt8rXYpQA5aifZVsXM57AwzkkXoo5eCkdqlxhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770942894; c=relaxed/simple;
	bh=eY/XTGWcKq/iHiOnn89besIH8oy0+dWPI1tYHWFSwEA=;
	h=To:Subject:From:Message-Id:Date; b=Bt/HhRkmV/2cJDO3yiYtiK8r4ptOmEq65lUhm5ScyWpB6LLHDRzIsrqc4QYiP7XfdNMLtKDf1XAYZOEZqYf2ZkHpxE9Fr1rL6ZTQ0/1oAs7iChcO3WK9h+fzwdIo/xW9mqf5eesUcIOBphuCkwPpHNkAW19X1Y4EVpYvxU7jwTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWjfmzJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWjfmzJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F4AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770942893;
	bh=eY/XTGWcKq/iHiOnn89besIH8oy0+dWPI1tYHWFSwEA=;
	h=To:Subject:From:Date:From;
	b=oWjfmzJN9EwiAchas1ZILEdDcjjRCi9Gvm3OQf0J1rE6TOC3vWowWCPo+EXj4Nzpz
	 gO72v/0F85nGa8lWDomV3fxqpQepMofPJIpckTEUE1FOyj4E3KGjzVTAyopcQyxhAk
	 ozTY3Sui/W9kCzN+pDax2I3WRVtfj9+mx5NFv/U/6w7kB/L7lESp++574u5qHRePcn
	 KYpmKHIBHuzn3+oqTZTzSixum8ctuyFOH9dtttlufJWtHmixtTAwxNN1sB+IQjVMbo
	 X0sFuZuNT0fdzJiGnqYAtNL34sY2Z4vY8eXhE9LetBISp8TRHIfE2E/MTjjfFBGqeQ
	 tiT69JJzm51mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E65EEA853
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094289360.26067.17879840503842691802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84eceee8bec6c66daad059c106ed6df8b12b40024694b7713ea2cd04f28c6a4
Date: Fri, 13 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770942893
