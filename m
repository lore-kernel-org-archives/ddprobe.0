Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B0B34750F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789598434; cv=none; b=p1q1y+EybyDmMtztJ2hC4cAgBdVnyfl5gWoSZac+LcldkCq5AOU93gxhQ8T+IzgInyOcNYzYCokkAy8K/zBJ6byX4f8O8ihFzCrebR2eqzRAtFV5LojJaSzD79jXNN0/xThvHkFHICEYi3xjiVz7ksInMAyohlZHnmrFZ134reQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789598434; c=relaxed/simple;
	bh=QJsTUqmomeK5r6ErRn+BWzsKCpZ8Mgc/QliNYUgzq5k=;
	h=To:Subject:From:Message-Id:Date; b=PEGby0SgES2+xuJiHqhYAWqLkeX6Ep1YhvwqJjxCGU/8Bn8K3kbD7J52kkAol+79Jxy8LZ6nies0hXn3PRChGMqPUuq76gG2+r9+lo2nhuWZ4Gqxk2wZk3w6AkM89BG3ksj8IwPOOYRrPq2gA8kNiuWUJznDCzTVT9QHUNhRlFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho2OPGO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho2OPGO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7CDC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789598433;
	bh=QJsTUqmomeK5r6ErRn+BWzsKCpZ8Mgc/QliNYUgzq5k=;
	h=To:Subject:From:Date:From;
	b=ho2OPGO68GKIXoTIDvZ5Ye/2FVsAc+Ts0Zo96sjvsvhhJlrAF9urBR4mNLpVSF5Tp
	 vPJfIH48ZO9rQ+IYP8N19uot5GM2++chzx7yB+w2IeuD6g+GjL59QMi2yoRIlw9i15
	 O3i7imrddoejotgf7UlnNJivWnC/0I4SVIx8N2vQLyxF6cdOvDg4YOP0V44kZfYrcK
	 amYN5lUE4oUra8zDBevSM07QEN7Hll4V0gay5qJ9xAjUpry6XTtpjbBVhjFOLrQoPQ
	 XM0E+xeVxgm912t5AumhTWeNfBpUzypfc/A4155/DpihI1UtmOSJWCdY7iAk1fUl3e
	 wQLgSJRksUgqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F3DC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959843373.8264.17573429455167571276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6945d6833439e18a21b15385376ca857fa4159d06dcc6ce8f8e52bb9e01e7922
Date: Wed, 16 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789598433
