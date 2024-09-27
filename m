Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C52249EB
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727406954; cv=none; b=DvRTybdbVFsaBJZl1uL2zcFn2g+rXQYFxCurg+MSWknzKmwp35NfuN6/ER+Q2Sl2EvMTZVS/ElcU8SStsc07EBZRzgahUYnHvvHweYIBRxZn6izG3GaGezDv1k26FD7U0n1ZFA3Dcsf3ubzKril3eAwqnGfMy6vVMoNwZqp1ez0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727406954; c=relaxed/simple;
	bh=5Vwj3SPqho94AlnCOR8a0qrpypkXhFFTtRk+/X2lVXU=;
	h=To:Subject:From:Message-Id:Date; b=oeArqXnYoYXeuP0zgv0fe7hpzDu0HqwKNJH7fZC9GOSk19xT6RnhiRegGIbs1+BB6Wx4ydMxbiXcWULK7jMHL8P6N/Na7yBdKOPyjQKuy5PvCynhCNppqQNMJiflBz4YQEk/BirKvV9+FFI58wytUFke71AJi4rHHAUisFDuuHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhrNr3gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhrNr3gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3D7C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727406953;
	bh=5Vwj3SPqho94AlnCOR8a0qrpypkXhFFTtRk+/X2lVXU=;
	h=To:Subject:From:Date:From;
	b=AhrNr3gvfsJtyjv6gLBmbK1hJBOGzBFp7SBSkmdhf9+z6JENCvVY3PCm8F+R1F11d
	 cy9Lrxyfe32fb0Orbjm8wecLBBjc1CYVX71c5fy/dm43TXPWKvQhRvK8wByFAw9Lr5
	 3WK3RE2JrRLK3Hmn94PLfWZvbh1HEv6uwS0YzxGArjZHHbZ5XkiEY4uvODKAoF3LQd
	 NJEAQkToeu8KUzRvAEgqadqMuxLE3hrbvv6MZe1E9ACVR09MJTPI+Jh2MBS4B3t7R9
	 LLvFds0SgYacdmiYiUXdp4k2YtZqGBMro5f/7GoVVTwnmvNvtvAuggQ9MjdbVNnfmF
	 +M+CE8puVbt7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C103CEBF75
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740695362.6986.2152966835893225812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7779ba89023bf32708b0aee9c88f9b8e153c878765c608eb39767013ff645888
Date: Fri, 27 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727406953
