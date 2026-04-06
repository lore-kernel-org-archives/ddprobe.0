Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384E72D7BF
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775442934; cv=none; b=q7gXzCxxixtgFfXlkmZxJdT1jaRhEM+Uvv3UCgr1izu8oUlBJHGV2dnoO9xhcaZgWkZWyFhZAVOZs+S6ScVwlDpqCaVxL28Pwt8fVbTxpcwnw+PipnYJn4ZvKgqBfJTGrsOjkGU9LouqEXXZp1yuYpBjYBY+hsWK1Q5TdU0LDes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775442934; c=relaxed/simple;
	bh=tTH4iq9j1hJufpLbmlvDzh+xqWhxS2APmUoIOXNodcE=;
	h=To:Subject:From:Message-Id:Date; b=ufgYTjmqw35qcvkTHbm1zKJKzWW4UKsmt4wtrpvpzyKa6LT79/K8/OJzJJaw+qEYb/4SJJV4HfwMPIM+qR6VpfBikBBVkWqC6y25Kk5HsUQV2RmtkeMiYmmkbibefKL0Ion7aCMHOw9J8XqL2O2xh75zIE3E9in2BUBPFuU3dJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0o10eus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0o10eus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD56AC116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775442933;
	bh=tTH4iq9j1hJufpLbmlvDzh+xqWhxS2APmUoIOXNodcE=;
	h=To:Subject:From:Date:From;
	b=T0o10eusgAcoWRFcRC05LjYyAUEs1+B46pnz5oY4zeEc1lPA+QdYREE9WOf3euLL4
	 +UOdfmueO1DaVOxLRsi41f3VPIu9T4BvkczbdIxvYa6S8i/flnSjCh+46y2qPISX90
	 oFsTnHQi5+FvkBHqNikZI587gZ7HmOpFDPq3TpPi95sVR8Xy6v+wUjsbvekO7UVDTv
	 OKJjIVhueMP3/+38WWaEadRbzJslf5efyt2wcGD8g/0ARkqGxvouqctd50QPdTPuor
	 Cv6iAyW5Iw24WlL3o/XAP2OIZAmZ69BlYliZJhLzc9kAeH6CXUVkXAquzWU7NJ+llS
	 3AGhfgApEh+vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE965E9D814
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544293370.12654.12440636114687618009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a0e0451b273261edf130bec20801ac711708d1e5717f5245ff8a32f25cc76d
Date: Mon, 06 Apr 2026 02:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775442933
