Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6B911187
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753540194; cv=none; b=Gobp+FVFINIWqzK3znyLPPYourzSbWnuNj756B/RS7jyCaEuiKunKa9uKOumlYRHxLIV0/n+qec2hWUFvXdHGJSf4y4zKAgCAUX/xgL9MdYkilH6Q+WhQnFn4qPk0NHHVbtcigIiQCLGwDak8CPyoBlR1ENS/QokU3EX6L6RVgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753540194; c=relaxed/simple;
	bh=6uTXXYmG/8K0rlO3GImK6PUAlhhlaed7LGQ7k+H9MmM=;
	h=To:Subject:From:Message-Id:Date; b=S21F6uHrf+BmZN7LEsMRCnEttIrO24fzaLNveFS4TApd6Mtfb3BQOEjayH7VX2zp9fpxf8f4xfae2K5DHEvCMDFoyYNd0DzlwMBlQiWxzibakFWA0IInjn4hTly+fzb8G8M/gekhcj5rQY5GgPKpeFgrF+TWbb1xG1uqUDzQAGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akEkqNcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akEkqNcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF1C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753540193;
	bh=6uTXXYmG/8K0rlO3GImK6PUAlhhlaed7LGQ7k+H9MmM=;
	h=To:Subject:From:Date:From;
	b=akEkqNcgrCBGmNGKV0R5jxzyPXffJUYsGhJ4ESqWJXz+ihJrti1CjEGfDGHcm/Bjo
	 RhXi4I81HNWthJmRNrU1hSUFURObh416jf/c3GjePswqWnIUa1v7UAZkQRALas/3cx
	 VQ8BRXu3/3s8mtVdouAqhaoIeXfQ7ncIUhfybptZqQxsNGegYpLLL1k/2EOU6huMPi
	 0m58KNymi6rI/yDW8Royli0CAmj087TaBxbNwsdYO25/7ya2PjQIVuOg1EdIc4JAm1
	 rhZkooVgh7eS/ZeEUoccRApcff541rtuY168/AzkRN6zWQ9mKX3BgoRE3AYKvT4YpQ
	 mR/FNHX/Cv+2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949A9C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354019357.7805.8599264516524429781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b358302f3a81e524fd7eb13d2e32f89bb2fca3ab482beb1d1cd8f63f076706
Date: Sat, 26 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753540193
