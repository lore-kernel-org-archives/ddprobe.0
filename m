Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5419B433AD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791258034; cv=none; b=KRJ1m5F5fc/tWoaFCgiyQbiY7I/+c3ifjgAAfaN7OKvyByJCkvlhcypgr9gmOJNJfdceLriquRB1fKLVMZrNu1cnvsDa/I5DA8AVmD/JU4XDZLyrznTrK3f+AFdlztkEpuvV+XTzOnse3pXhZ9zYexwnEIc7G9PzWeKikHeJtyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791258034; c=relaxed/simple;
	bh=msuT/vPQd6ItQu0F25vBZ3RbFz8kWsK9TTOruZMaA2A=;
	h=To:Subject:From:Message-Id:Date; b=pXyf5o21hn/ECsLBFlFRDSlwAQpWuIXJ5mOxJkwjSdWw1auHA5nC4VZl713AYIGo5xOou9JvZrUMgGISa28VrVTx3bHF00EDdyg5i0aKYT8pNUBRQUZw95c/lMkg/XxxEITHRXpV/HuW0DD9VgyGxmIHEwxlxfTkHzetRrzF8MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HidZ1WRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HidZ1WRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA03C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791258033;
	bh=msuT/vPQd6ItQu0F25vBZ3RbFz8kWsK9TTOruZMaA2A=;
	h=To:Subject:From:Date:From;
	b=HidZ1WRdTdoDNkOQRT+ObJTxkCvdGMRL7qIl+Bt/VtpAIpGKEpZPu5UX7fEVHLQ3F
	 aG9fnT50/Tw7RqSZQbeHICxCuTPArIIJkv83ZoDg9GamimGC6BqETvokXu/8+rNFhP
	 RfVt4X6wyuZ2m9wiJt0bghj8dsrZAG/RD9d+gko1FSc8Fx76+w+V83en4DTraRRF6I
	 xG7/7t1eD0bgDerscy4x+IrTzelel0RvPXTYpmI9544mT5JgFpQj8jZT+4C+ZPKBrF
	 EFAP9DNuyrQwu8UekzDwM69hID6w7Yhfq4NB/hpkiR3KR3MG5zfU9+OqXMlOsA4CfI
	 5F2vj6Wm0LvZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC94ECA5FFD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125803368.28593.17069879281760722427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f389c5d1d4a276babb25d9726ef8eac77f89d10176e5dca617ab6f5ed5f7644
Date: Tue, 06 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791258033
