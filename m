Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458424499A4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783640314; cv=none; b=uUcEJQCv2pqFqWlkjWcklW1JwRcW4XIQehqNLim2VaWGA+/Fd2OI9aRwZWpYhIWwjNkIdnSWNOfE0gY2n2o4XzoD/wqoxAzrOMo1+/XOgasq33UcE4bbi4c/Dyko/W93lc4kcbcIcilOe3oO07S1ELe1Ph8S5lcqpQeZa04fzac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783640314; c=relaxed/simple;
	bh=ZyMHR1i3T2VFT6SXKOmCWiRhy9a8IBSXT7iYmyxigio=;
	h=To:Subject:From:Message-Id:Date; b=BGqd1idc1pkIxocylVvGjTUK1kwJQJ+2r10quoC/DZPGxrs5/kvpmr9ZZxLTISC/4qaTdMS2BiobURbCbUwyAEImt5DD3eimI2lT3io8UVkPq5wy07+wT5TU3VupF14SH8jgTaXdr27fiJvc7qbBYmLbCmAs2CZRFg970/PLImU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/Pe7NV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/Pe7NV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89DEC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783640313;
	bh=ZyMHR1i3T2VFT6SXKOmCWiRhy9a8IBSXT7iYmyxigio=;
	h=To:Subject:From:Date:From;
	b=e/Pe7NV0FldXoJQZ8KvWOqyGLXhkatW3BpHhe79ZXa/pLxWU7Wpiu7FKK1pwQpBmt
	 DU4AGd9ZrIZiLr0dHvJ1n/oEzgJ6SZQU3d3ID7iC6YWKAQ+Oud7kthEV0WxJlsxT/d
	 pu+tqvQb5PetzwbF13MoL0sZUUK9oWaonTva0f0IJMXl4IjIgx3/fe2QkySr2gFHrG
	 PAHb2kZty79cSL3i+IbaJGYuQMnTXGCkjtXt800G08VJVoCHHY7bKOiePvgEnUUetk
	 ChgVfT115KwveHfZRByyiEGEKmfakvK+b75jB3UyGr6IRvuTOl5mjRUaPiJp76ivhM
	 K+7BTMfPwPqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A24C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364031367.32226.4276395801478597033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54b4f852abb1c24b4ca82eb376f151f74981748e4629156e570e31d61366f31
Date: Thu, 09 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783640313
