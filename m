Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D14D1CD20
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717053863; cv=none; b=R8kFzic1VHQqFDVJ52AzN0PotFxjQMC2quOopgYBz3Scz8pIJ9FGjuWbc3m07qMKsL8FB2BIuuRsgDZoI1Kd9B/AQogZ62MsheytTpZk+f62C//TmvCBOvlXUh2lrCbHVYzxnwSbLUVUxh0++THgUOiF+0ql+c4TyBYKdcbY6YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717053863; c=relaxed/simple;
	bh=4ooFp4JddRdJfKQY5+Ufjp1WF9M1lPuXm+NGdqx9LI0=;
	h=To:Subject:From:Message-Id:Date; b=Su5apDE+AnnoNAxV4I6DaOz5b634mt2pSf5HfxZT3fBppBnQvHerIosXKqoi6kByZbndix8WBxVIA3Wzx5lP+sgL6/KmRJRTsrsHsO5oHM/lKg8MzcY0w1YyP5YuYt9TwZhkTBtc/kCi552VR9sOgXLX8t2eNDuWQDsL5OKZn8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jt6Tw0wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jt6Tw0wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26B6C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717053862;
	bh=4ooFp4JddRdJfKQY5+Ufjp1WF9M1lPuXm+NGdqx9LI0=;
	h=To:Subject:From:Date:From;
	b=Jt6Tw0wbhHhKeZGmXZUuuN/N0YeHrnetblfyvcPxwathi1pHiPNHJAhDb72qGw33G
	 0a6mJmblF8EciiOcQN023G036Z6AxuAPvoMcx5PZ8ocKcnVtkNb9OvHyvXmM/3tZxA
	 PdCmKd3O08Nm02yix4ftXsS55JQwM+hQge9jEkxEiHAYXVR6zqmN+G3L9RLVxM5Vei
	 Dyn/z1+fwAH+1RWmKK9q3BCd6r8M5JLbYf4FMs4x7DBHWZdRY63pS37iFCd12v+ukI
	 2t7cjEFQ8zIAr7d0AE/TMwbufBP2jjDAsZXLtULcyH6mPEPdYtJResR6jBZ5fjxjWs
	 IUUqlItnoJCBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C168CC25B78
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705386277.21588.4581058241455341245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ce57b5f9fd742e86e5845dc2a9ab62a761462e234153e5b0a49a74fbab46ed
Date: Thu, 30 May 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717053862
