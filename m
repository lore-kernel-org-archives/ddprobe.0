Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD623AFAE1
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780550674; cv=none; b=O9sTRVLeTjnFpc3cZxew1JQmWp96asYHytE2IFwY1ExTFERNUMNu67Bg5jBfmphyi6zsTmK8IQqHnCLVJ3Zmd6cPWNbtJz87Ul9Iq9uwoGDl2AvPbjuGwBQzEhBy+PIX9aWvKuvvdkwaYkMDVA2oU4pn1qrXIVCMl8GHDBaWwBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780550674; c=relaxed/simple;
	bh=x++bkPl0gHvzkMNykd7Khiqt+iiu6tY7AXPVzXRJwzo=;
	h=To:Subject:From:Message-Id:Date; b=edCH3/vsZBHuUGPxaQxPAriOUm/z8POCWzuJoepkRqGJ7Bs9dN7TCgZlljua7N0vLayeEuyZ7qNUuD8mZ/RLPIkE9Mh7BnYGtWiWxhiz0DYTSePqah1xP8lZzfzVv9TLQulHJQ+Y5PtZlbKDN0x7Dr+XW9sF7ra6XzGFl7kjFnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjYsIMY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjYsIMY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE26BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780550673;
	bh=x++bkPl0gHvzkMNykd7Khiqt+iiu6tY7AXPVzXRJwzo=;
	h=To:Subject:From:Date:From;
	b=LjYsIMY4NjDsluiqmvsj44GHZT80s1QRiAhAPflfZ2Ah7Ew9n74Kb56yF5BbQbIwl
	 a+6AxRbgJikhoHKinO4mKf/jnQ7fpUUHpjYiunl/83PhbMWQf4oEe09RYXKX3fglOh
	 EO+oX7o6N0YGW+T1cokfOe+rI24wsoFbla75yRWVf9uOWi/bUx7KtZ7xa/U47PNA4q
	 d4gLleyccUyR8XUek1YTanX2JT8JuD0CJqaQVYf9WmG3UPss6z6sEwPvAYm4b3bd+J
	 oIEQJr0ylnhK79Hf4gt9YBUlSpNqPcqiV3IOYdPyDqzI6op5Vo5l3d2p98ZiP02Hoc
	 XHZHiMGHLuVPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF10BCD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055067368.15844.7102687502421964043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c132bcc4cbd0c0c489c7c8c242188f48a92c565116712b2e2e8b4b323d3468
Date: Thu, 04 Jun 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780550673
