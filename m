Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530E61DE4D3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744567794; cv=none; b=impGz7MlNtZ2ENqcRxb30misgisdz19L3hVEibFe1N/3NNnojJQIC9ebIdbHlkmt3lAeEnODB7UlTU7hccgweM4y/t0frzw9UMo0D6uBHz9z0wWGcjLKTdQ9lFCnr9JVgHtK3XRUoTXTs2YmO/3S9FJ2Wijwke6sYuGgfLHDCEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744567794; c=relaxed/simple;
	bh=XZbI3eEgFBq2YApX83tMPToZRW4E8aMJtMLLbrd2S78=;
	h=To:Subject:From:Message-Id:Date; b=DeoJLX2A2CT0zk49AljwZQKDERnseXdreJ1z9nvGy72H/L9lXOXwyn6ejXK8qAq8xLP96TV6s4EpLN4PdiFNTucFF0EgjFOPlGUr8/Yc0FKoQV3ixlmGPi2Qr/FbujM8dRntkaLWpaWmMYqH/Jei8yU9Y+sjSduTD7He0IYSB9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shUC66Yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shUC66Yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D20C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744567793;
	bh=XZbI3eEgFBq2YApX83tMPToZRW4E8aMJtMLLbrd2S78=;
	h=To:Subject:From:Date:From;
	b=shUC66YbWR9wxABM8qYhoDkuMMmc3vZ6+klur/XHaekcSCRMSCh+QebGT8Ef/++z+
	 uFtOlyaTHIZGF2Q1puTJ1n9uTOGHW3GJrRYGPsu+nbG2/jB7HZci226bjOEf4SVUHY
	 l+a2dT8URcCWUr38E9U0hLRWvaxdmzM1vSyiJza1yRK6nX5W0FnzpmY9nU9eUMbGVF
	 ydxzosc6NAgM2emcKwzCicjRupRzBAR+I2068DGFX0YMQRuQ6u/fw2r5Z/e3Y0Kp5t
	 /5NJczmOcvOD95qwenjWr8JVJUQNBkznsAjkwuEmFWR98UDMaPvE2K75J0vAjBWufn
	 JoTbWJZKziYmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989CFC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456779359.6807.7173356324491994730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3146ecf3bd3fbb91d74c1fef5dc261966c30bb2c802e360e78d1f4f4686d02
Date: Sun, 13 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744567793
