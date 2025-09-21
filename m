Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292AB2566DD
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758494994; cv=none; b=trxbU68H4CY3aWejUpk0Yv+xwgicgaBQvK3u959cQzQw9spxMHpyA7EvplBndUKqjTkZ466PPRRvs3ulW62v0kg7ZFSvzbPEc5+iuHok0o2bTPzX517B19CksfLl0w4f5xYpEz/spm0NGNiP8OpQEitqo6les8N09jI8yWQTqPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758494994; c=relaxed/simple;
	bh=NXNfqH0bp7Y/KqwH4hOXcOAfUrtd7npy2gIwbk82EzU=;
	h=To:Subject:From:Message-Id:Date; b=k4XnvXYxGSV/v8tFeY4PKMg+YXdVCK79/xc2VG9sZoVTgoVaYqyRa8Rf+MO1OffieP3GFoOffgpoMU803lxcoXS9j7ZZKQi7Rp9VorvauFOw+RNziddt94MltJJs4XC369Cd/KgeDuR73zO3Gun3ILxowXy+dlXgPSBI1r6fm/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9jiQcyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9jiQcyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85D1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758494993;
	bh=NXNfqH0bp7Y/KqwH4hOXcOAfUrtd7npy2gIwbk82EzU=;
	h=To:Subject:From:Date:From;
	b=f9jiQcyF5CobJVpT/BIXXl5SjfZw/vWS+7EsfTUBO5kkU4z4QEK7b1YCOX1V8MKVa
	 h1jlTgAKTHWm5sn2orvrgWkCPbUhcQ3P3icNgDQPp/wyF6O5gnHk5rnJoaIIz6AJNt
	 KFXOjBgohCLKRaGOVVVVWM/OBSBydOkyOhC5H6f/Gx+TW7F2NNnTSCQOZ0neASlLvG
	 +pKBOmlXTw7imrV60HPQhy4ZiIT4UiznqplXuTLzHOAwkdsFKV1DSVESzJ0i+SB0y7
	 XykMBgxlW4/ZO43P9dtqFY0cZULG9ad1fA3j8YmaY55r19gxYDFrVJXkevpCYbMgkM
	 +Kj1+4FP5INBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9557CCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849499357.3594.12862992279882829268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b38a587b6e0ceb3b882f58d056512ba9362d62843026df63fa0f3770d0c8c29
Date: Sun, 21 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758494993
