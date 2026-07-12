Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B97A371CF1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783844914; cv=none; b=TTF0+S3jekB517rWUpycD1A6a+4/KUs7HcJ3F4QMJ2Xb4z3It7vmYEJmasbJwl0bMhwSB0OBXZeo2f2qf4YzmqiJdYUIDNYGCVQFSEbWYvxsaOIZ1OfYa62a6rEuxugVUkXZx+soozDsvvoHQd7Uz7DzSNI5JN6ea4Le1njOcbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783844914; c=relaxed/simple;
	bh=cgFqzPWOTxSXnLCwXfxkFvaua81YhCqZmKcIg9aqYLo=;
	h=To:Subject:From:Message-Id:Date; b=J9W8385hJJKw3o+Vfhs6SwWjlh6NYjJe+TIXImddp+qA98oE+wZE2VkGo0CQZs12FooVFNOOlBsVREQEXduRZbaTFYJeMS8Clz29SK66nidbAkMuo/eqQSq6jDnJhb04XzyVB35Mh4V3vpRYfS9q1Xn8DD3jylHBuAANqBzrCqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsrvtQzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsrvtQzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C889CC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783844913;
	bh=cgFqzPWOTxSXnLCwXfxkFvaua81YhCqZmKcIg9aqYLo=;
	h=To:Subject:From:Date:From;
	b=JsrvtQzIL1t/sYWi5cBy/6p2Sy0MwtdGTMOQIMqVfVeJOQNolhiHrRTHRjbQzWyT4
	 Ugd0o8WFXNKu/U+YDpOQh2jSW8tPpM9YVnmG7WNxsIXCuvNCcXfWQK0kuP0PsjDCaG
	 x4v2dOebv5kwNsQEqAIzXsfQdNvx6w8qULHmRPj2DWGWjSii1UMptFg54tONREPYN8
	 vHtjToB9w8V66BD4u7x2jzVqdamT8mvuNjD5JDmRhzowtsJtEs1QU6ZMTIi9k4vpcS
	 iccR134+krnOcj97scEt10AXu1yzxpVDe3a7+qE4LPpnV0WcXMHx2ihnRyN2VcWshe
	 +SdrPMWf3YQ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E07C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384491368.22780.1434147370061748373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1064d05fccc03f82fb5330893da0f8e30fc96012db0f217866f7853af963b3a5
Date: Sun, 12 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783844913
