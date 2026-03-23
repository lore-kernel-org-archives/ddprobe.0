Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B566390CA3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774263294; cv=none; b=g9EM1cxpsXYMoYhNZlKgi7pNlkQnxyNY5I7g2NvR6jQ7SXtqnkudhZt4dMgsuOEcYDX0vkn7SHXI0hTn6oYoRhuZizhqCv4xxXJxxsOVTB38SsoEWss/XpO8a1iT/uJd6tywniw2IZD1lMaoZQ8kXGmUVRlRjrF4ypAbcgC9MDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774263294; c=relaxed/simple;
	bh=3xV9x4/QZfQDrnJPtL6xrgHVGGvLCldJ8QSD6lzMfgY=;
	h=To:Subject:From:Message-Id:Date; b=OhHUOqL54ud/0g9Cir7ZhRxHfeIlZ6JBWGtqSErF3f0z4FvkPd9CYeWyjkUukjNkYzHb7c1qblj1ubo25Jgg1/gc2P9SIYW/RZatAlgCXcutLqnWjC9VVYp6XwjrqHK1KOlN26SKgykb3cM4nJ7lhEJsPoJPUvBK7/1KjOeCUzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d07juO4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d07juO4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6FEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774263293;
	bh=3xV9x4/QZfQDrnJPtL6xrgHVGGvLCldJ8QSD6lzMfgY=;
	h=To:Subject:From:Date:From;
	b=d07juO4sUn3R6E3pBz4pMuLOuIFxHrBylF5plDIOyMZExxrRFvqEPzkkotHXJnVER
	 DvAmkHcDsRJf5qg0agWp5oWEnXr7w89VLnFj+5jcv6ZpWiQxZ+QEtqX6fT9fdKeHd6
	 PU4GRTaA4ZtKBt+xMHdd7o7MhRqHN+lu9Yq+yiuiXcC0np89CnvuaCU+yMYb9S1Q8W
	 ZMMF4/meGrr15itHrhPRemDaWDK402qPm59N+MaaATcmkuBsSvmhOh7sxs73Nhf8Eb
	 69vxm4l4XbJPSFyjuzloPVQELkxbphbq+hz5utPNo2g44POi8F9OxOM1Fq+4i5XLrm
	 ncaaMjwp/kwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC99EC01C4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426329363.23168.5573822696440937404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86fd9973bfa04cbd3f58451c338e27052c48044d1a2aefa085fd8c2d026ec0a
Date: Mon, 23 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774263293
