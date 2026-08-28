Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497AB2253EB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787880634; cv=none; b=DdASkqck9o3wmES4O6k7zGvVnMpD1aI+BFjIvHURn/GQq7JYZ5sYbSrrCw8MTo20YBD3Dzsk+Rrs61AEzoXUc88XmruUKDpx3AZpEoGqhqMqgUV02ah6m/cr+DvQHzUhqxczudcJWhPM0whoV8U7rpAWo9tqawmfT3puT2F7ZUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787880634; c=relaxed/simple;
	bh=fjGX077XBz6XPQ+K7VPK5TysErshOLwJ8RXClanXrbw=;
	h=To:Subject:From:Message-Id:Date; b=JjdX7tV3+jnRljpTElRJ5HaLTkxebD91jBuTdJMethuqsJxcpp9LGwcppQvU5euC4wmxdh4lVzSiPPJyF+jWXi2FcgjkrqgdevRLLiz+8t5KEGCarMrJfwZswI4sHeoof+wi0gd7fhbSQituUvYFxuM3bzfMKMdF38mWvd9pPeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efUQOzbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efUQOzbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D135AC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787880633;
	bh=fjGX077XBz6XPQ+K7VPK5TysErshOLwJ8RXClanXrbw=;
	h=To:Subject:From:Date:From;
	b=efUQOzbo14Hr0ona0b4q1kzn5Db4pDEUXCPClkNvJxdwFkaZTysma6c/tFDPpdrqG
	 uN5a5Dj6AbS0cKr0EMaxpd6sbHEi7UCsrRzpFXZcJP47pMQxBpBwNzhEmtpo1DQAeA
	 l4Z65o3GRdDX7eT+UCcHd6b0frnbJYisUjDu2SJTN1bKbiQbo/ht17MxUkTcHmeIxu
	 Ub6pIcMy/gz+485gXIW8q3lQCAWye8x7fwBKOlLw2FD//bsCUbKyTksjd5zx320iM9
	 QIW77dHu+mLjJVl8xebKzdrxgnkIfue7m5A8sSlbGYc5XLJTzVegv6HULs8OD64sry
	 Cf/88KKI1LeGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA3EC61DC4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788063369.4718.6770206156663226741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f076d9761fcac5c5baf046ebfae530d578c38f18683c9168685bd5dfa77ce748
Date: Fri, 28 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787880633
