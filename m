Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C641BDCF
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758341394; cv=none; b=dMBh/v4ndWxYy9qb3shCEgczJkkDT4XFS7VXPJJWRpTtgpSgzj/JQEdd1ZFKkI5D5WBhokp7uwhLDn/K+17rxFz4+HiS6AlB3R5U7mHbw/sGI9leN4YlSW5gNFVUc5fO9TgKz9sGVfjY7TO0/ki8UqrW55pryovW+FKC1v+O0V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758341394; c=relaxed/simple;
	bh=QUsoBiMvGnMi2MsXRcLJ2JA5xI3kid61ndKX+d2DhM8=;
	h=To:Subject:From:Message-Id:Date; b=d52pn79Y6UGWUmcJxb+9YiGaPUjWJTZoe0tMlDHc42o998OH4hrV0lrUewl2Zr/N/rcBGC4HVOHpyvz267Sxgb3L42LYcHB3ippLglY1vueOlu8XfnW+MQQYjB7BDd1N1vr74SFgL8pkt5kFWR0zL9gh+PFVcZPbsIGs1gaXqGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7CQ74Q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7CQ74Q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758341393;
	bh=QUsoBiMvGnMi2MsXRcLJ2JA5xI3kid61ndKX+d2DhM8=;
	h=To:Subject:From:Date:From;
	b=X7CQ74Q7MymaGU9DjICzgdgUhEy/Mt4DVE3IeXTgO6Mg5IG5lQXPKEBu2gD4knERE
	 EDpcBmocGJ30J/J1WXmE5qgZ52HSwQjzuNIY3iGYbxpVSiOvMaZaKiY0yxzYFbPaHj
	 pl8pKRSojFwV4iW0Aukwar6m2CrSimfm3AOXIWOS4LOGM5XkxkjtYfTLdy+A75162w
	 SWFQPMCF9tMaA7FwZNMbK6I9VL3GNNGk/eJnah5ZhSLU9qv36Alpl/JS1Z0hIIH1/u
	 JgZTnHtdIz1B332hxtOKRdl9td1itQS/c+i4fp0HVQZ9JxB3y+IVa8TwGYKjrmVQ1f
	 RkdETKIIgqLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E0CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834139358.15418.2936938632746036091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e183eaf5b0dc84822e297d88c1aaba7d69a917cf9cabf5be3bd8d15c69023f
Date: Sat, 20 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758341393
