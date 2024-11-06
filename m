Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D85208969
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730924754; cv=none; b=iTqY/zPDjQ0/kXXjgk0v8piIryJweWjs/w4WXnRyosBa/+q15BjBaePUvnVACgF+jOYoNpGqL7A/XJI4UOHCWzee/IUWIM+HA+trHg1JWI3EcAcJEJBm/pTYpIk1LBHKrk8mMmbhU6z7MwqkJame+rYs1IgxqOnrlE5HfimxXzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730924754; c=relaxed/simple;
	bh=F+JtjB32rEE81zY6Mky5hPinkFxZRsBa8pEvv7wFK5w=;
	h=To:Subject:From:Message-Id:Date; b=kGGExOKWa9Ffzchx+c5mOzdkLOcYkSjTdh18inSi9faVBXkdgqEaSSWiM6uIDYah4CVta5mPu9E0ggiLm5ZIW3Hy7MnT1pOSQ+FWxB6W5fo3zhsujVIyRO8HIaz3Cq5pJiiIg3hqPNfcq4PGl8fcqnga1p33iLfV4XjSoPYXgc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0JAHatT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0JAHatT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04D2C4CED4
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730924753;
	bh=F+JtjB32rEE81zY6Mky5hPinkFxZRsBa8pEvv7wFK5w=;
	h=To:Subject:From:Date:From;
	b=E0JAHatT9dqTMfigbXxpuD2KZeHl7Dum7cW2aXyV56uTfIiATqax4yGf7d1XkueC8
	 phtYkTQhOJ3Xy9fh7CUDdMZov+AnI7BBWz10kXifzQFhPrN6Kb0MXbvmUwjPlPEXOv
	 1l93WPjC0oftnUQoqErD4b+BVL8I+wsFxG77XfxLPxHj1eCaMtxOHo2ZKSTsv+zC6y
	 w4DGm4LWYrx8/wRPXl3CN1HIwxapT6Hvdo3aL6K5MST6PWOcJYvWVyRJPul05ZMZgW
	 UBpadcenib1smJOEwEHj2DUFu7D36FdvBrbp80li/gej8azyQSJrBgtFNJIumUtDWt
	 bhu9q33pw4uJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95337D59F72
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173092475359.15904.5138533605142267795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f67ffbc559654b1c84eaaa17916bcc583c981db558ac07b6f9e45c1d6c441a
Date: Wed, 06 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730924753
