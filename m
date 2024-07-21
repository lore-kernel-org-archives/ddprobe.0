Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348D92AE9F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721572554; cv=none; b=BEByKOrkcgQ+Z0q8yMzAMbBLX7v+y7M44LlPSaLQaCblfcyEvbKlnjID54K06yDkNi84mvq5aKs5BwYGmGkWdYFT9VRdvQ7ytELM5dcK+IdqIuFb11w24atyup9jls/6eSk6M5gY0RVWrTKGiBx4Hg/s63VfvL9i04YERlGZj0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721572554; c=relaxed/simple;
	bh=2U/U8KjBsMMmfkKfkLajcqhi1UFKJ/KkOSfXuID3vGU=;
	h=To:Subject:From:Message-Id:Date; b=GdarCVLaFOwbrShJRlNzuphZ9euA74EXlO5qncYsBo4KSbtpaByDkPnX/y1HTOv17+eI5piB55HWmSNe/gv4rQAhANofC444ZLiftVUgLoTnUMYp5tZV6aAFjGqqbw+5Nc+zYcnu89yzHnv0imFcM94v7HLdgBou1JQWNSVOG9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d76fi1oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d76fi1oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D97C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721572553;
	bh=2U/U8KjBsMMmfkKfkLajcqhi1UFKJ/KkOSfXuID3vGU=;
	h=To:Subject:From:Date:From;
	b=d76fi1oVdpelav2uxHJrl0BWaltEC8CLqf/d+OV5k8nTBlWMZxNUgPxdOQZs4PytN
	 afxPKZiCoNbkAreonlGf1ulaqBHjkJsXoiEYyyoIoQpM9lxVakQCpJ8EVut2ihGXA2
	 GTRrWu41zKS/PrAoqVP2QqQFqD5lsk5UQbZ8aXnt2c1MCV6XQ2CtqHIzEyGxPWFeuS
	 O8DcfkhrK42D3Hhn3l+BJ06KvzzLVfarGtyEf3JRVCYUfI7OnddxqJalesyblgVx4M
	 qMG3Pgsh2e982VOsAzm+cgd5NgBFi4VE7xZcVXHl+7SvWmPp0KsKARQKZ2eufmHT4O
	 +BwnhCmxnjYDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97119C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157255359.4758.4149482460791637920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debcd8020f0d590b165f01c5ba2a9ff333ec9e43e99b048ec7538e5abc28d974
Date: Sun, 21 Jul 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721572553
