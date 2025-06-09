Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C44170A11
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749479394; cv=none; b=C9qvU9VqUad3APB28yjuMh8r0wrxXoDgB8niuE0VnGpuoJqYFF45xg4YJ6wM6borleUst10dec0uzrJx49HiQhZK0+6w2k8Qyi0/3LJD4rlXjtySM7ztU3KRC1hACXdFs74pfvQFPW7qmF5x9wEl4DTwRHfxDRzVRHerey437Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749479394; c=relaxed/simple;
	bh=6C0uiEuD1l4W+26ut3g/DmSGzHnYnhMTat390oeVT5Q=;
	h=To:Subject:From:Message-Id:Date; b=aTNNj9TUyZMTwN+MezJlCL89xbMezxq/ZW7CKDBUVF5fdSALa+onl8plJGWwYjGv9Eduns4Ue1zABJvJjgpB+XhfpmHtt9/4s1sgqwR2pBI2NHcZhCHbswZkIgcqRIsmc2y90pFgRi9uVEBo3Y5OfPu8UzeAihylGqnG5ojf1Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EC4Ymdyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EC4Ymdyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2511C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749479393;
	bh=6C0uiEuD1l4W+26ut3g/DmSGzHnYnhMTat390oeVT5Q=;
	h=To:Subject:From:Date:From;
	b=EC4Ymdyv6JxbVeaA3bX6z8w8Agb/hlpW2yR+eMsJVzodgjPx6smOqsMSKtIgOVZ5J
	 h5GNKfvWsd/m7yvUpgwHJuLbDvb2V52zYkeMYY/HmMhDApF5Y89QqSbvScWiWs8uqa
	 SZN4akTANmk0vukHUKn9ZkX/tqoU9cSLUz0w66ja+nYt88yRJDouVbJmMo/6Cw3Dru
	 scVjISF810ocYrmHCLCZ28xjZuw2OY1Ph28YDzIdVNzL7PW00vtdcRMRBOu4138+L9
	 bawBiTpugR8X4x6BVsOr64Bog3PKzOvh6vhuMVWt58g+JNDyas31u7v9dFGS0ZqpOr
	 dIyuohnSGtLIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6BCC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947939357.29143.16993998164593509473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5d19084b84e3a000927f5c28f94479b467c0d7746c43858d22d3976046e0a9
Date: Mon, 09 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749479393
