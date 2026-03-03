Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4163B5317
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772552094; cv=none; b=ClbxcDvQs7YinNV+gyzjYmSSQTeSh/NOzXPavAKYEAp8hNNQoqZHp2aSUk+UxLhO5fU9Ht23GpSaSL4KmG65QkQby1rlW7+cGQq+N5YcZmNjW3Q+EaQdqd1JmzfhzLm69bYdn1hQZcxk1u5XFkSauDeT+T0S+il7g0T7RPmyMkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772552094; c=relaxed/simple;
	bh=dBclR0jQDiiNd1sPlfTlfiUvWaWJqv8BTo3jnyELjfM=;
	h=To:Subject:From:Message-Id:Date; b=bC9xzJf3kboJJFGtlS5wNFXy8jiag/EyH1RgYHj8tAsskQuhHZqZv4kgCYxggq6RZWPVG9sw6zrYN4NMmLQMcri7Y//EsuIM2zeVHwTkNywSwtiuUAFuO5OXEhDkshYLhKdkI/uKFA/sj1D3DQaf4ZufEPBtJKnTbLZMw7UdWQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yj9597VW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yj9597VW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621FC2BC9E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772552093;
	bh=dBclR0jQDiiNd1sPlfTlfiUvWaWJqv8BTo3jnyELjfM=;
	h=To:Subject:From:Date:From;
	b=Yj9597VWjK0ExDkD5InUxcOhlqRDC9db4P7YZb6H9FUFFup4quSclddQ9oGxTGYB8
	 1TJpjEVlcn6llszHHsx4Av2lQlX/UrIA+ztmYEGEcc16IB/JJhskO6seHCjnCG47qS
	 ABqlWeGFFzHH6Tl+n7yh6E66IVsZ5M+QHRJR9hrN+iaZXW1V7ZpoFV9nClWC4+iFmA
	 xiCc6vkMLoj5ystLUsa99cDVsQBpuarpJ7M62R4i5hMaZLE4Y6XxXbRR6aetvGPx8m
	 9YdhH56/MU7x2XI+sse/9u1fOMmCNl4nceZ+0H+vA4IyezWDa2j0flo1Bmyjiud7eZ
	 6nSqqOaOWcB+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F46EDA68C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255209360.8570.16975140102427108101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3dd86becc1645a8bcff42ad9c1bb152c06e8e489d7d45ee602357c8e371172
Date: Tue, 03 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772552093
