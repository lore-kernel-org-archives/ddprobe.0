Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2911C149C4C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724403954; cv=none; b=BgwbIxeP8nlIbpkx+vzdpl5/KtSRW0nDmb3G5Ytm/N7KXX3qF52E7ZBCgXDO0ypB9yJAgI+hqWuh6y6ry9JSvy3YiNE+tcFGYb0NOukNjua5v5VPzPr6FGp70qSzKcKUD6sldKZ5WVmU0fXZ9i9ckx2x0QD3f7RFdk7PRcgynZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724403954; c=relaxed/simple;
	bh=aZsVE8aj6AaaghLtxoyuHLWkgLQLOp8OJT1Lx9wLHVg=;
	h=To:Subject:From:Message-Id:Date; b=aF1aogGmaoZAajzz+dB1ZDOA6bYNgdhmPAuTh/LYZQMwYhoAVYqKAlgzCm7naMWz38HoRTxzLdJ8ugLm4IoI9ZVyTSJ2no43DBlAgYavXeGQAsG2qqWPZ0z3Oyx5rJGbMVwbq8n/H24tUFx2MPw7oYreeczRoXTO8gBCui3Fyxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNO4+Ehx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNO4+Ehx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA7AC4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724403953;
	bh=aZsVE8aj6AaaghLtxoyuHLWkgLQLOp8OJT1Lx9wLHVg=;
	h=To:Subject:From:Date:From;
	b=jNO4+EhxaZfHOtx2Mft3+O0BY3Im7awXYkY6hv5NMWl8ezE5Jt4WM9YmZ8GoerD7B
	 go15t+4kDBcqgkEfAs805648oFQ4JCEWVoj3eLTwWUO1BHy0UqmwD6ASz6zARF7n9s
	 uMJOzl/kX9i6GHtxd47dPZ3QmJlkWAQjNUSOSOkt71jlIp7aq1UZvZ3lbzFzqn97hU
	 +f9a1edDQSpRigLaaeABGHNHIXoa7754dy86Lr65+79d5MWZp3/KfJheTuMRe+wXE0
	 y+pOYvDhogKE1QBq1LYC3s7W2+dHHr8ws5N9Oe27PR9breGS2S7i/EuYUY1KIkjs9k
	 UduYINeVxi0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9406EC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172440395359.26127.16618560747454343357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef41ff2f0290eb0339aa3b0a7d63a2198ce2df4e44abc711a340af566800055
Date: Fri, 23 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724403953
