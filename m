Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497D82C256D
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745926795; cv=none; b=rhZWflLsFcvaxLsA/wCnAvSABSpvfLj23lGVAo59suuVvRgITgjaSjl0Z53WYM6TXNMuLRDh6HqJhvWe96gCn9/gaHCqPWjHD6YDDxDQ1CPrMzTEJsLQ9lkcYeOgbkNurNOgtt4YzfAiTMPaaKHvu5JmRwzPeRxAlfrwUu1Jkng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745926795; c=relaxed/simple;
	bh=x2nNjuBEuX5EtbcvD7VAnkRcgu7aXhOnfsGe4zH/mOg=;
	h=To:Subject:From:Message-Id:Date; b=KimUfJV1YlwALfC1/p4SX61sm3bSQ72LOski+GrbK+teJsTpOLn/iVpjfDk5GKMITUXHOZld1ipfFgWBiwz6EDWTWPbseC8RoQ/3G/HXU/lo9U9PfsPj21NA+kh3ldF0RqQV8jrZC4h1HMUOR0KAUbd+kPRBVCzWx3XSzcJP338=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3el9UmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3el9UmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDD7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745926793;
	bh=x2nNjuBEuX5EtbcvD7VAnkRcgu7aXhOnfsGe4zH/mOg=;
	h=To:Subject:From:Date:From;
	b=r3el9UmLLrDYk3Hqtt6ASprmQYtoAvbQ96qCg189mftcvu7VSUTHf5VZ8XWHr81Af
	 h1aPQxOBgbwppKW/B+XmRZbd3k3OippuKYITmgS818iv0stRSlqM0NO5y2UC9KTvXw
	 Xf7aEOtu4y/CUOZcUCbU/hfKcj6blEEv7fJ6vvweRuQUzl5Yxs5R+qoADR/L02aNMT
	 YP7SmpylfVp5AFUZoydEkoCqKFjMDydRccHrT8nJ/YeKGfakkFihg6brWQTC3UKHoW
	 RF+Dh3YLorf7hEf/tZUSzB3RWYvgEVV8zHNz4w1rUFJOv05punoS+eQ6IrCp6J4UG0
	 xO6Vc9AUewc4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91704C3ABA9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592679358.10791.11418699471387751907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63543cdf4a7b1023a02976af34671658b5f9461731217c663232c93196b87a1
Date: Tue, 29 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745926793
