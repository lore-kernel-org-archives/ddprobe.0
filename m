Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E512749C5
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760271594; cv=none; b=ZP03OI1qyt0O6tUjXj3IhrIxfWgN7OwsRT9+qK825/iYvD1p0YWClLwl9kjcUfXGCJvRm1yikrXGDffUrmgtIM1EgiMA1VbDyko//4qwz43rV6rmpMxbfMs2oG9gM8UV8i7ZSGE7QaH+XDUPbnkmWpQJCoaeOZSo1kKYyT1C+s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760271594; c=relaxed/simple;
	bh=lwXuNzZeNYuGotXrs2TUauvC5CgMhFmQ1u9LRLTmhxM=;
	h=To:Subject:From:Message-Id:Date; b=SCOUbKnJpSOiznG7BunbmK1ZNijeQibF9XDO4yVK3gX8lgeuzOQfxn276OP+e05YAguboEc5NvRApyHS2RMj8LfVEqbvZ1Bzi6TnWSdHOczwgEFQyg1bYbljzvumkqVp+rtm90rwKi5DZdSGskqGiwmWn0Qwo8hgfhQYfhxQltU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkdhm+5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkdhm+5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF6C116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760271593;
	bh=lwXuNzZeNYuGotXrs2TUauvC5CgMhFmQ1u9LRLTmhxM=;
	h=To:Subject:From:Date:From;
	b=pkdhm+5xUWednx9XkztMhEJzDEiLBu9MwCd+HgjUEHIe9rbcb/UmAhgK9UE9V5/Kj
	 FkUwlIahstjU0O4j26TXVufeopt6kE+ZMcApv2u2FtGtXJQSX7mzH3qjKPm7hyImX5
	 ORE1ZRaJbb55nUwygthC7Q/dSEBtZWfjpo/g4Wl4r6yOmhm0Yuf4vh+eUlgmt31ocC
	 37+XsbraWorqbywt2xqWxAs+58l0tdEj23Z6DRSSYzNnIdfyvLtmBVaUR+HN0ZFPCm
	 EphBbiC47FRuVQM6xaCKgsGZgaR8e4H9pH7EokcK7q/uLDYnmTRvhIAveQkpLQf3bY
	 k2jp5181KmCAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E79DCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027159357.32222.13028882297196290657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61053322a28471828f90cb8a9ffd9e08e1c3a1e8a90e7e2bc1258af27ce40393
Date: Sun, 12 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760271593
