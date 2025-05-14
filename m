Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F90281364
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747240796; cv=none; b=OtXDIf36u5md9WckBU29D/jardeHx4uZHWe97QXMxiZyVttP3Oujjtj57hmABy2P6yTc3QUA3K6FrcnRGYnzcJ/33YHR0JyiMPCn/lo9PKL06YNlXlsWy25UxdM8gyg4tePBu3At8bdcRD18RQjsx+GMmih1bO6oq6GvJTGZEx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747240796; c=relaxed/simple;
	bh=9w8UkLmeYLqpa8Um4mIUGeiDd00soTjG480bDIpr3L8=;
	h=To:Subject:From:Message-Id:Date; b=fG5clU5B93u0SkJUqpQABpLaBMY7uv8iqBB1u75UDKta/Tsj0ZYtLW19oICvTLl32e1GICGV3MAYOfmVEdVh0e5QrHZZhY/K6PxuD0kpYIaQLAIHg9n6gvX3cGsivqGfxVGJthHFVO+6kUzpeGje23cEAMzGr08NnwHFFfpF3eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJlDujcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJlDujcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F9C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747240793;
	bh=9w8UkLmeYLqpa8Um4mIUGeiDd00soTjG480bDIpr3L8=;
	h=To:Subject:From:Date:From;
	b=iJlDujcIu1GIekU7zhnob2YmPcRPUBadc5go55Rut5E25bv7+kSbDGCPPMWl+aTHs
	 CnVo89ek75+UVth+BddVUFujrPfhkx5K/QUhoL97zjpEEFOD7BgWFEZ84mX+xVsVYX
	 r8cMcxoaXRjWQsg7vWYUmMcRv91TN5vO6+IbEyIfje1xzBUPFJNYR4Ep/A7LHD38Pv
	 JAM0edY7nRut9XRn7e+Wi6nHXQmd1iEuSOyhN2L1FYRjAPEOv85uLaR5M/fjQs8NFX
	 GsZrR+G3iDEmXT9PbauiJRNLcWzvRMZl9o/PabdZjAU2zoz2swZwV0mVn56Ck8KoZk
	 FQxD7eu29LATw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F774C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724079357.644.2316539374177876998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694751d9054a1fefb9420cda6dccae71a1b63075c6b552d5d8f812c9cd80c991
Date: Wed, 14 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747240793
