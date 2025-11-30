Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C82114F70
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764509575; cv=none; b=F527hU8oebYx0WMzBoaQnCmqH0iAZhDyHzzqhKP04pvpL2AyxjKyiiSc005hAoMLNQrWiPudFpKKutX0VZYwkGyoApRcCAMXhijM8cGwHyJwO/3baQTwjuPUCkoHGs5Wa7MCwd5NqjjsfSqQsmZe1CPmNWXgtqBTJbjFYN24mrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764509575; c=relaxed/simple;
	bh=6B45xBmf8VMknrUQd+PQYPfeIw7Is13AMTBsukvNQMo=;
	h=To:Subject:From:Message-Id:Date; b=KwflvKuyIgBJEeUj0TOpVJzqr1QfsZEVe98PrFTKj4ci+jSCRF9j1EYZabgKRErkmi9KPO8Ud4+Y7VB9RRP/Q5OlHIAl4Ox9PSw9kkYRbm9YpmPhUw5s5qHcph8OqBEgT5F39qnrygLOLw0H1mgk0qhFiNcMJntiFeGObF76t7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXi1H29X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXi1H29X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B020BC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764509574;
	bh=6B45xBmf8VMknrUQd+PQYPfeIw7Is13AMTBsukvNQMo=;
	h=To:Subject:From:Date:From;
	b=aXi1H29XP1VjiUIvpQLU1RrSI5gFPSdG74fAumr9/mwpYJQDuywP3NYVDeWYuln6j
	 8otsel9uEH5UClMOnGN1D7ybuwPt0kJVv9iillBqbfnq5k1BOzkTv6eCjIj7ijeN6R
	 U9sS9kNk0d2/duNvySB5LxwLxCaU4givkEEe24He7JN5j/CBi2Z6+NeEc3RyWePsoy
	 E8POVokm/+nwtHug/MV9VMangdnL1pad/Ryrt8scjhhNxOqONccczydJCLL26W7Snb
	 4hWooCfQijVO/XT9Z8ShCQEn//QuLFj6JEzkZoUYqyujnEa33x5Xqw/SqwBF56F061
	 Lw4xbAI9NAMPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9990DD116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450957359.28719.6286314865450893033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0528ce3221fa8b9afa67ec282582623cf3940a091633aea9c7177727cd8a83b3
Date: Sun, 30 Nov 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764509573
