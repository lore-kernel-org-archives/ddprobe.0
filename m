Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221A913B284
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770270234; cv=none; b=mkkfb6b5QlPrCuC3Id4uFyHngIxO8xkbdeB8wE7NmxKYO44p0f4xjqHO+w/SY9TDrYr0JaLKvhN8n8gSRsP1DDspLTUk2V+GPbNmDMHJvjx+X0HHNUVYKutqfXdLXeeTExDn9dXpRCBFDVk4yOdkrWbBSfMvXlws8o8HycWvv5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770270234; c=relaxed/simple;
	bh=huoPeMvLjA8QCS1rLQZ1A7AUNwBBQscTtIfh2C29bpU=;
	h=To:Subject:From:Message-Id:Date; b=eq0WqQlqYOcUYlAI6r+P/RlZiovxj1LIiZOzFAWun9D1p006A7donXgmaQXxAR9Hwn/BvGGPbs3sLbpxQrvpqlensFaEopqN2Fx8uQXdLk0MFNO+940AmgFzVvfYoo9SJed4j2CGosgGYb4SeIp7GnkyQhQ17WrkQ51fyL5CQMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmP6bZ73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmP6bZ73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FC8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770270233;
	bh=huoPeMvLjA8QCS1rLQZ1A7AUNwBBQscTtIfh2C29bpU=;
	h=To:Subject:From:Date:From;
	b=DmP6bZ735RjU4/TA5yXvAJIIFs9Y8Bak7C9D8T+rdxqdG4dYB0e14zg7pXncLQk8d
	 qjSWZq5UulesWkW1a3PRZGSg7YZm8mVtHoT4mGdcpn2lRcUar/oVx7P8Ms5e7j/fvN
	 zpvAvdzTP5DhqhVew/tC4jEkSch/sXfpvb0/g8hl9jvZkX2gxN61lbrIibjc3nE0ya
	 o3PJNWxXGbeizvjhwFgRY81D1y6wq4KtuTdmy2OHjKrtr5SOHRc3x7b4dLj/zevVWp
	 u0VNejS2Abj3V+giHfmFzKi4mc9HOCSj1wy7Oe920PfzctiXwGbEHfAcieZQNOGLPq
	 DHGcje7CEztUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E86EE8B39F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027023363.25456.6549070790779011029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec286e521b83a4578fa80781de20aa9b7b457b6357f4ae9ee57e75a564e5bf02
Date: Thu, 05 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770270233
