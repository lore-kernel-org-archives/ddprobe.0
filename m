Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D65720125F
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786939834; cv=none; b=qDMMgMyhXtotXt1vQBBaDzX+6PR+c34edAXFYY21LieDWdeb2dKs2NppCxOkoslldG9jRjE8rlsPZX0ujgcYqP3oKAd9q6LgPYBJu55Nus+Tg6MvwhdryPYYQYGXgjGBjeacCcxZgRkBGvyp/DH/8JyREygganSBFiEYpNPTEqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786939834; c=relaxed/simple;
	bh=WwL4MJ3WwobwxnNEfSm8n6V8ZT82Nbdr1I+2kWIm1Co=;
	h=To:Subject:From:Message-Id:Date; b=DTuYmRq1iyqiddgNHAm3V6Fe+v9tGgupUBfWVo9kuRsZN2hz1Ezha4mpHrg5oeDUzyQBWZHoBtsDFzTbKVQYvEp6at6CwsZqOJ1mELTkQaDn8ZgrIxO8Xs/q0ZDxsAxiUPu4NBj3Sg5kGZklW8YZk2n9LAOWIXEPOAlGHy09J0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttczAW7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttczAW7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FE9C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786939833;
	bh=WwL4MJ3WwobwxnNEfSm8n6V8ZT82Nbdr1I+2kWIm1Co=;
	h=To:Subject:From:Date:From;
	b=ttczAW7qQtT8JhFkpPYRkA7jakvCDVAPbrPOSINQ8fqjfYFYYRw8PaFkZ1eVWrliX
	 dml+kSG622svdooudB06kilTqrOTg6ot9pU+4Y+N2jd9E6BdZSMvLQlxaqnISwNY0z
	 HMXyX8wJMVoQs0qPagueucHvEx9Flz61h+dLiwyWXo2p6X9U1ajMtHpqBJCCuIDWQH
	 Ri1iBKXgLJl8IpCYriVc5HVMhIWhrghoNI6Z7iaNxptrEj6UWnh57YBSkDdJGJayHU
	 7iYPOmOfn+G4l5/0GZM202B+Yel/LIFIQfAM4HUuc8HsyC8dpXe+LSaG8nCAzFmktq
	 eJzKJpTxkwaoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5DEC5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693983368.9088.865370650698968993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dbd9b6894232bb6f7233aac95c4c7fb652770dd33278aff98dc5e73eaf0b18
Date: Mon, 17 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786939833
