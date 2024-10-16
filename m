Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A53713B298
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729113354; cv=none; b=mrsvNNl78xsVgSIWruziBY6aotj0DwsAk7eaAOT4/mjr2YadcT871bxziS0HWPeTJRbM8n65VVErscwBXZMGr0gmLR2HUBsOl9QJqqKDydqQr0wAXDLqwJgdFrf9xiJ5HIs0ru3ctoVXvl8bQO0D2r2XYIYSyvEQtBn72s6u+4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729113354; c=relaxed/simple;
	bh=58qwoqo+iikk/RLIF9og1d9ij6i9/tUF5m/f8cF5yCE=;
	h=To:Subject:From:Message-Id:Date; b=S13j6D0ldlPiSBPP/ueBso17oKpepv29aLxQFxCeUIxXBHBqZ0ETgw2Z1n2GvGsptZ7GgN6GXUNey+nup33iu+kp+TmHviqfS5scH/7CA8LM+J1lNVGoAUYB/zh+mF081E/L7jaqMFH5wChd2jcTZye4TOajBPJBzfRA/jggdXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OS4jB1CF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OS4jB1CF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FC0C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729113353;
	bh=58qwoqo+iikk/RLIF9og1d9ij6i9/tUF5m/f8cF5yCE=;
	h=To:Subject:From:Date:From;
	b=OS4jB1CFEgKRwRfZ1qAbErNAOX6++7M3gQsmvWGju/Fh0keh2J9l4zYPMP4aXuVIh
	 vIyTJ3mVoCk5oZTZIfhP2AiDjrH+h3PFMDu0Qn4+DeR3bOqFd+wI/vQBe4NzmhiLRB
	 kkZ/wvYvBbwAmSbhiGYhGWBfykDk+jb1EWXidbttx1pnYHNK3Jbt5XHKReVxZRSfv9
	 mcAovS3ch0GVavg61/vB+H5fUPU4vTj9/Uy82X3FxIHPnRecCbbhelxcF9Q27oBcuQ
	 Xbww42eW2x55NhVuzgHxoWhCyOKx8K1j4OG8YZ10j0seP2pifixJzrLW6uHZXPDmyo
	 M9KRJa7Y6ESCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9506AD2F7C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172911335360.4542.800303271415158248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c463f682b499e7d0eabd6f6d32c658fae393d675db54b7c288170f5ed76e73ca
Date: Wed, 16 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729113353
