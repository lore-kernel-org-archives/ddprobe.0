Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A054202F71
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777260454; cv=none; b=hi/uzqZKNbr3zrBx8MNJXzI5HpRMPAcaEmdSwqnC63OG2CGwE6xiQYcDJbAVlwrlj6Dl5hC5RKRRR3pvCU4po92hnszRuVrqhNtSgXt6P8U4uRrSN6BlnFsFvFJGH+HZoDaT4DeBn7gNM2yU+Sr5kfisfmQ1wfBIfOt9Evvj6mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777260454; c=relaxed/simple;
	bh=lcUy9AfM46mMuDHpRxhGBQHNdB6/qMsRuKxKmWA3gh0=;
	h=To:Subject:From:Message-Id:Date; b=XkA6W5IpWMKgKqvucV/yocpQRHg/HONEXAwh3cGb5HbqQQdGMMPY4o8ABKKIZiMOh2N2d/KkqiS3WH8so0hHkR3rNJ4qK30MjtShkTSCr4h3rVfCjrbOsZoC8u5RSyW0T82QxKVVYbb/BnLqklwbZLi9VWo8s5dvMJ1fvEbY8IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3KhC3tL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3KhC3tL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD658C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777260453;
	bh=lcUy9AfM46mMuDHpRxhGBQHNdB6/qMsRuKxKmWA3gh0=;
	h=To:Subject:From:Date:From;
	b=u3KhC3tLVz/pTsa80hyGx3HXCq70ho/j0P+hDg2yA4Yab6RVmKfwa4t/eSpzLyuJC
	 9eDuIZWLVUZR5L75of8b2vNWhECksxif2pEjDHQAvXCxQncG80qFnXCL1PM7aTUvjW
	 1Co0+vDi6y/3dCqMuxA3IiycFZRC3kBE7lrkikqoPvhDWcdG4CHjKgVVv9eqg2566K
	 zVWD6O4EccnjbPjvRm6Yl5a0f6qyG7qGolhVWZHq2G0H63ZN00BjQOAyl+u9TVmoEO
	 jUvPrlh8Ps6+iOxM8KEW6DFERZufA4j5WrsXlgMIqDHUsQqJ8/SGUGqeFtASbr61+f
	 CPbCmgsJgahZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC878FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726045368.23034.2367101050647691285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0b5680509d76ac1c559d5f24db0cd2c81fe94d2c75d1a3bed88758e1a44a98
Date: Mon, 27 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777260453
