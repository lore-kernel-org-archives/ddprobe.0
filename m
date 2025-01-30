Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4281BD2FB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738203354; cv=none; b=t+2YbNWBlQ92BBBj3Q9xguN50Zrr/iJAeBq7P4QrsAsyMYBEMLLK13oLnP+iAdj+KsWrXgXmb7VQbYkkGS1Vp/lWWETW6Hr0su4/I6ZhwOURqE9pfcuwp7BIxv4Se//YAr/RAKfS8FKFeQjXYqawflP0npxmZw6uO3itcAs0PTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738203354; c=relaxed/simple;
	bh=qLvDDVOYssmXhrB7vx8dvNZehYfPSVMsA6N0H3gk4Zc=;
	h=To:Subject:From:Message-Id:Date; b=TWMSQEBgL+KcUhMLzH23JwXRW/9FEu4YMxwgsA5jP2JoO9B+Cb3JuRrIOgysO813CIDtwLdLczXG2nd+urhRfuZSfAw1SdsQO1ffbxd+tEyRQOmp0vS5hvA3xib0C3tI+vsDLRrAxC+dwZYOlEyFlXpkYVnVbyxTtZVgwKfQgXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsk2Jqc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsk2Jqc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64E7C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738203353;
	bh=qLvDDVOYssmXhrB7vx8dvNZehYfPSVMsA6N0H3gk4Zc=;
	h=To:Subject:From:Date:From;
	b=rsk2Jqc+1FwxR7++X+FoIcL3HLaHu9yzjtqF203568EdG0UriUKHNxxyZ57L4id6z
	 DLrR3SukmCeeWaVRt9pcDNGq+mnOcytCIHW6DdygnHFVsLkhoTA77KChcv1LCh8vSa
	 9/5CDevaz9sUwN7iU9dV6CbfYGHCUBvOl7AW/9KHyBCDn80OJzIOAOW7OOs55YveWe
	 AisFy2VXWrJC4OgVKWXqCqVTX4TXDJFipNTLJLdlHhp6a+cX20hI9Duggs8ckiSEYR
	 5ZxuDybuxyz8FxuDVIFmvyHABOZ1WlWmDQKFEWjIWuwiQ9RLN4AEondHf4ArDVamOq
	 kf5/SbXD6JRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C52BC0218D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173820335362.2347.10076906620486455359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3861b9940743d422827ce5c9a497db9eaf701a6abc878060ed44fd7f33e2a8
Date: Thu, 30 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738203353
