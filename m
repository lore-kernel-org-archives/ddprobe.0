Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502BD23ED5E
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791726634; cv=none; b=OmIDvQxqJ+bzUKvFnf7wqJ8gVukblIQF2HWYpWm3Sc6lXnYq/OnIh3rUg51N8LihjAMjgYERrnwQcLno7buxclSRScrJ7ag9Sm8JagxbZjZtJWR02OM1idw+HRV62IJ8IOaB3ziarYuc1ogqg1wgR509KZPfnQuCZcRu6jdI+bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791726634; c=relaxed/simple;
	bh=cUCCSeD3dhdDynHE4YBRaw29Wd+b9bV0pwatE4wky9c=;
	h=To:Subject:From:Message-Id:Date; b=Q8flO9OvjhPwV7lHcp9ZfxGNzaygrNKOs5kCyNLWghMLMVp1UCojHUnm9LFPJEiGwkSAM7QFT3kGsIEIvkN8OrcmvU96Cx/3R9qqaHon0+F/pwRaNpe0h0yeSCRgfPsGngO039AOS4xEaITr41dws3dbHwOjoQN7lPhctoehEyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rejq57ZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rejq57ZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58E3C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791726633;
	bh=cUCCSeD3dhdDynHE4YBRaw29Wd+b9bV0pwatE4wky9c=;
	h=To:Subject:From:Date:From;
	b=rejq57ZDT0UxXctmt2MfcCHatB2aw4mB9tZqXf8iCoESNvAjx/s3o6t1Wi+iLlMTt
	 9p+h5GG+5PhjctDknCPLkUm9qzRshqi6DEtt2QFe5lnMbGoRPfY4pJnudlgFO6AT5O
	 btriRzuvByuocfVNq23jEpZjuRCQSHO8P3Aqk0+QPjMYnc0IKhbbRqir0Wi8xu+y3o
	 Jw9gQDLIoBgpHI2Iasq/w4L4b/I/KrKSP/JylzCgmZYRtqn4nVhkpAhpO5JM8voLSD
	 X3ulcuvQCImSLz2m1JofHSzYwLLIHHa8Sd4VyiH+jrBOm3HbwK1ENLPk3myxvRuz71
	 N5hZnyIX4cZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EC4CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172663372.9428.871779071532850541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4aef5b03cf41d6eabe38c25427594d17c04e91be828f79095c8312050c1a81
Date: Sun, 11 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791726633
