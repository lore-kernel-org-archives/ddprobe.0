Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C906A35
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720571183; cv=none; b=PSViRPUmM+CjfZwWyRjRcBA2uu6WqhNfwKdnWJNxj3tzYTCywupS7R0Dk3AnvrdJArOCfshxYEl8bCzIyIoFXwXqgfAVcnDyTHvtd1UXHCF5kw9a81Z6ZO1SWlt6R910RL3NQqCxIWNtN+e6xt4n7XEVEr12c1lcumUKZFjhY/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720571183; c=relaxed/simple;
	bh=v6ixP4AjPjnF10/R89yIXU6XnZs3On+QYUJy1h1ycV8=;
	h=To:Subject:From:Message-Id:Date; b=gVRbZFTGIosK8snBrCGTvcqjbQTY64zOFwkJdlQsGasYplFOqxxiIs4GOFdso9jPSpSZFy1ceMBzaZCUeiT8NxpcP0ZJbjm3wRvuLH2fTQBEtrYuzj05Kzx/IkghH4dfuw9EsjcmnOklZRWZlSguqBZ8CLVqUvSq+x/ESLq/gMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X91LEY28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X91LEY28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5DBC3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720571182;
	bh=v6ixP4AjPjnF10/R89yIXU6XnZs3On+QYUJy1h1ycV8=;
	h=To:Subject:From:Date:From;
	b=X91LEY28+6t63nutRQIiKHaE46jjMQDCtXG4gK21/Vx/r/o51MjQ9q1/fMQxhuJia
	 kiPLH9KJMFoLGPD1byw1qfHQjlzEO83a5UKmo8c+7Kav/nPtVJEwSnngs+A0JiR5Xe
	 ZShdjxEWWZDuga5QDnrNYBiypBdv71i+/g/JhC4wr60Mdlbv0nbKHdDXJ2gfCfoyDj
	 tTrfN6WvGZIyduczZFy2e1juBtI2TwDzq/OEnKYDxjbsphOmbXt9wCbTOZb7tkuimL
	 3VO+ru5P0fYg+AsXnPWnlEXyycIlTjmJ8Quaa2Rc0wWnMLtxwfYXq6ZwUb4Wb2sh7Z
	 3Q6lbBsq8aFQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEECDC2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057118277.17604.6672521417958520973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb7786238a0a2e12355d95a77847c162f9f5c18d8107dda90f7760ffdeb78c0
Date: Wed, 10 Jul 2024 00:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720571182
