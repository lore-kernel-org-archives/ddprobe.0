Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA28185B54
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727740554; cv=none; b=mhbYBxyk5qxMxESao0BCTYsZLwsyrAComYl9SGcJU6JVd9XTCgnNtHIl18fYkUYQF7Fi7LNBqSOG3PSaW2Mx5FK8yhz1o595iSILS1/R+glQB9jXoOwW7trREhtTbcP+kyySIvl0Uv3EyJUnFc27+vEDOS8OfOS+g6xpFT1LZz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727740554; c=relaxed/simple;
	bh=fgtbLu+rPd7V9a2dGeqfvS5qs1vMZvQZXbJC2CHFRF4=;
	h=To:Subject:From:Message-Id:Date; b=p/COqnZvmA7EcIUwgorjzL9HQRy5Lzak7xMtBRr+63lZkZnzlI5Y7bdYnr4pTF10p+z7P/AnjwZNNOfLiSp13qZ3YH1C7OQfd4IkOPbtgcRdo6xTogLh+2jGTH1tKOYp3DnKZrPSUqgLF5+6jXC3zzA4ITFTIAQ19jvyA9aGCnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9AvXD5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9AvXD5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5091C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727740553;
	bh=fgtbLu+rPd7V9a2dGeqfvS5qs1vMZvQZXbJC2CHFRF4=;
	h=To:Subject:From:Date:From;
	b=d9AvXD5ms/IaL0seLW1E/YOX66PwHx0k8ZQxRLp40zmoI8Sz2Pv/gR4QhtxMHMG7u
	 md1WqGJjMNTiz5lzFi0kXSNS8/6afwK9HvH8VByh3Tu5frMsqbP5MMwXbnPYt3DItW
	 b68saOH0Qxr5mAJFLXWQnLSwUn3/FsUsrNGbuFGtUNCSqzBs9S5s9LnZW1ESQXmNjt
	 FjmA568Wxmb5rFH7ko30FkNR08JZdER2Gv8mU8uDnJRTeBGDs5mJaMiOay0bujIItW
	 5Jz0b2hwdalvgxjDCQ8ouv2lh2CPve12SuXkYX4ttgbnDAW2JUZqtVfSlDUrXZmLft
	 6eO0s/oBQ9zeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9458BCEB2CB
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774055359.6008.6687647164301804333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222adc39094814a6ecf0a97bd11c7129731b4c8a9c95e52dbf504f2a20cbc4fb
Date: Mon, 30 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727740553
