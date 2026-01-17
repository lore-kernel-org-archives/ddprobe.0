Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D0A135A53
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768680834; cv=none; b=kWZ6jyrmYY6h0v1DGfCFkkDoaU+mHBJDqC2aRH+JE2hH2BYfnCqfukQLmFss1e3ZhSL/u3rbC1+Z+mPlbyvZYKA/6wyfWZgnRiYA9oMwPunfBiOMOYg1gSTJ5ikFhKO6iyfVTQhKJZ9Hf3JIOlshQx4IFPCAnTS8I4NNNRiLJZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768680834; c=relaxed/simple;
	bh=LHkhyBhcmrh+Lz6kp0K5tQ3uy4wJ65WXkCN6+XXvWOE=;
	h=To:Subject:From:Message-Id:Date; b=coT6jHSow2/bg02IZ9GUS/SHFDU079wDu/1Qk2HijhXL8l0JpitLXPcI+l/vPUkgjMYS/KZ/zBZ2CkQ7rZwhE3jTV0x2zvwAn7vr8KsxEm/PrB6PJ2ozOuNepRV5JJsidCpEzJYP6kF94xfq/eDzYHEd5Cp2ytD7YpBCYmemNOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBWe8dr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBWe8dr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2727C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768680833;
	bh=LHkhyBhcmrh+Lz6kp0K5tQ3uy4wJ65WXkCN6+XXvWOE=;
	h=To:Subject:From:Date:From;
	b=NBWe8dr48Ef85VVk5ElUgMFjRWq6uMzyaGIu0+JQgiA1Fto0jynFIbMyaQhW/Zdeq
	 aIYO7GurIaMu4V7c4APdXW/lnR3yTDCi/ZdRZDdGaQBy4JGNrbNYTDTqodcMHtW3oo
	 JxgL0nkpqFqi1FCXUTvx8xSYgHw6XEZDSlQhe0lC4QGXyDzkltLdpUhFt7a+D/K0ro
	 ce6YD95g4icbXUAU3LhItKQwSlk1Fozir3nFdQuYFKkQNEcK5zV2suYYRL2MEymUQz
	 0IuwLtmswGjnQh+mF36ewZNNWV82D3vDKjVr2bkyJ1Ot6uI9OOn5JUTTN/mTm4I5tD
	 KKEVbLp4S4nhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95081C98338
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868083357.10291.7542630177660865096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c220e5b1c1684b432b8e40f9a27b0c5c6b4b263ecba97d6e50131543578916bd
Date: Sat, 17 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768680833
