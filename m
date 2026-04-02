Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E9F6A001
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775153734; cv=none; b=ZGaasbDD2nUxE6Ukk3Ti8T9y2w67MUBva9CRXQUV2kvP0pOlM/bTZ4hZc33j3WK+N69gsMO5wfZsApG40p0YlzZAiGFMlEiQFoQHeA/tmeD7kEp/SvmERPgFFP4x3OlyXykc0MQjD3KVWCoYODzoSm4nEhNcg/Ov3hpMlZ0HBnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775153734; c=relaxed/simple;
	bh=wAbGWBXisnGZWAk5tJKbmdLP4DXBRIrL8eoSjd/FWJs=;
	h=To:Subject:From:Message-Id:Date; b=jbYy/5k6ih85B+evj6h8XTSM5ahK1u4EPDNmjdUOubXqysN8dbZbAkNa9z0L2Lpy6W+fy6tdWct6/Xn4vRfS/nNDnkGL+evFaypt4tPW3pQxuUgxrm1HUy3oVAwcCvcpfH6I/6PubyTKFctFpMr+XltglEJvIPEKUqLb2jam2d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISMEH1yI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISMEH1yI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE8FC19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775153733;
	bh=wAbGWBXisnGZWAk5tJKbmdLP4DXBRIrL8eoSjd/FWJs=;
	h=To:Subject:From:Date:From;
	b=ISMEH1yIDxnNxPVJNl/h5Q6r/M7SYGQngcou5d93N6aPSG6RBGCCGNwD1jAEAY8GL
	 qQOmKuPPS7JiyKOodRfOCXPLxhgFT+ApdLKfYCy8bA975bSFIyymU4BZyWU2gng+nA
	 UusJ5w5/k+hvBUDXaigmzTC2q22n2btv1zJi2Jppr+Sfbz0MydrabhJC+9tu1Dz9AC
	 Nxa/2eOCsoJSCym9r/uobtd7D/PAji2pjt9aVJYuOk51jFL4w1QPgEX1EPSpS/QhUH
	 /ANcdL7VIGVolkqbIsGIEE9dyAOKxz1Y7aNM9yK7uxcY0KqEsOr3+9sMVE3dASMGWM
	 ilQfG2qb43Vrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA56D6AAEC
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515373369.13294.11638141311954697779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bcd8256536bb7831478df3574a1f652b4422f3f0ede0591005502e2d7d477d3
Date: Thu, 02 Apr 2026 18:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775153733
