Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9153A1E84
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766007834; cv=none; b=cGIZW4qYvejvATAtqr3Gqo/9w3wnvYryb/KS7YfOZb8cXcvs5/wtHgmfp2NavoEP0cmXImkjyj48AphK4uqSufiVj9yx+0nty81aVnZs+yur/Jcb33xLckPUM5ZfYvNA9u9+7/K7O10eEyMjz6UvjoBBwhukMLTz271NblYOoUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766007834; c=relaxed/simple;
	bh=6NGwhcsoCx03ELRuW+M4JacAweNo4tUQN+lFt4y7BMg=;
	h=To:Subject:From:Message-Id:Date; b=bE//8ueXWfTSMCqwQ1zDTSyO9vpBT3FOmcJ4lqTiWBRSh+3IXL04aGhr9JDr6PUzI1BYcI18xqwy+eO68gRGnmfm1xgG31QtHJfMGqvMBc/vw/mm9LmFhf59MsIecRPtvmrdEodiG8g+5FTBXR3VUTicZIeBWKpRCKlMPt7SpCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNk9szKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNk9szKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99FBC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766007833;
	bh=6NGwhcsoCx03ELRuW+M4JacAweNo4tUQN+lFt4y7BMg=;
	h=To:Subject:From:Date:From;
	b=pNk9szKXrkMffWEdWeSC4QAM5C3Tw8d7+36bVmiG2Mqg1JoI+Lo9aJnZY6NpzH8LP
	 4TNokA1beQmnwSf+X2HOquj8htfR0OFddEQJzJB7iZD28ND/y2SwdvDnRuTpeD1oqA
	 GNtC483hz+wjfhpY2BQYZkW3DneVdGPFuIorGcsJ+p7IB3waYgBOxqgTgvpY3Y9K1R
	 xoMCA2kSV9hk6An0dMP3kv7xSs2r46hEPbyk/PL3X+v5m764F6Z2bd95ogsIXj+a6z
	 VJUXijLtQuteiKdowDm6uX1vsurQyWYVufttNlU+2WkommMsbdbGqNVbUXb44FLdiL
	 11B6o60jNEsfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D9D66BBB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600783358.23034.2913070827832397635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1a7e91b821e8422a3c27f0f3a9a34575a9c1c0b3c8a305bb3d8338424af71d
Date: Wed, 17 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766007833
