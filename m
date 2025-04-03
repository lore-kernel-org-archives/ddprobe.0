Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45437DDA9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743667194; cv=none; b=I7hbyipGulIdY/gNd18FRK110XveeUxkjI1vOYaR4RKWfyifrOyyj5N3h+xZa2p28EJP+zmLw0z5u0w/KdajZxNL3s4TIpjtSbft4sCTVwnpTRhWYqyuxW9TyBOr0k6GIg1rz/xAZR0iRyyxN5oTbx+PJD1Jn6wAldiRTQJPkQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743667194; c=relaxed/simple;
	bh=J7yFZbP7roM//Byz1q1A3Kca6YqmNelC9SnAhlCkraI=;
	h=To:Subject:From:Message-Id:Date; b=GmKGZZekSzmYNbcYkuoEbQYWWmHLz4sbk+n1EPvq7JjarztOtkuT7lM8AkGaiuAaNR4SsH8PaeL0zt/qsyQFWlP5LUbBqGOUg65sE274s1R4QBBp8p5+jLl3A/lshKDofE9gzXhElpz6bD0SDh2B7yyC1wKXzBxkLUGVIlzV7No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy49zqeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy49zqeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1A0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743667193;
	bh=J7yFZbP7roM//Byz1q1A3Kca6YqmNelC9SnAhlCkraI=;
	h=To:Subject:From:Date:From;
	b=Wy49zqeOusl7cuPtRWAqMupO2iyVONSy3hqnY3TQNQZhLrEAcWhw8Euh8WUh2wAiJ
	 JBC0Joa4zLaQW1q8uBuwiRXgNxMIVDamhk66qHPchJKIjfyyXWPnoEbdZURzzVe3D9
	 sh8Q7rG3Hrny8OptuJPsdvIkQ7F+Mp8f33rvK51hUFZWIPJ6nBrldwyijF+xI9PvyP
	 PQ8HqyS57qeCDB2jQ33DHqXb3XjaThHBiboKNlEG//K9J3tIXyx9FnI8hD9PrypAAD
	 LrXDZE10CBYdAkCMRxWF9YlmSTcLI5hz/Z67M8xXqAalCMjfWKc/DsDdwQ1CtUIO5F
	 Pr8hXaj0Se0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0E6C3601B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366719360.18342.6994862931140439282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f21178b22abdc6a92698b467431f1069fb1de3afb23c8f8f9d5094417f649e
Date: Thu, 03 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743667193
