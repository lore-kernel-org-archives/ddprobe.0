Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29191155A25
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749469194; cv=none; b=qN5KRYvNB3/cvXEGYvNUuvrdZvWiYbwDb8xXYp7wlrAmxtpUn1y2u8bXESg9Gj3ES8/xqrOlqc34okvhywsBYGZLlbWpCpPAMrxAZAcbSvnNqTx0DTWhsQDgH3/DCDnUd/XBpBi9vqhm38qv13B2jWnj1l/NCGELtru7R6NPtjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749469194; c=relaxed/simple;
	bh=vxvsLzn3H64LDSJacYQPalbF7xx0ooapkLYPYyj/qRs=;
	h=To:Subject:From:Message-Id:Date; b=boil5odn6N2QoOKswZ3Oswvjys1qEritB8iRktuBIFiJy/PnUcjp1yLSOQBsrnOichkEB18VnydO5RbJaOpT8ulrCevcARQSfWJet0iBobkBoX7VUjnBgOhjeva5eNMHNAy0xoQaIcGj/saCVeB46qDaHcZ2XFecd4eNG8p+E1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2QTjn8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2QTjn8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF34C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749469193;
	bh=vxvsLzn3H64LDSJacYQPalbF7xx0ooapkLYPYyj/qRs=;
	h=To:Subject:From:Date:From;
	b=o2QTjn8f9hvJ5vuXVIEZKKUvrzm23kNXCBTct5iK5lGDslyFZ1yFj2wfg+74taHtL
	 bJhJg+oSevxAdbcmvrhGdohOkdH21lKZ4wxs5b7SYNwMKrjNugfvtxNhntzQMTr2ch
	 Bvr8IaEJAeq9LC5H0rI+B2Yzfo4mfOPiXYAdgFFt85+rlzxaV40cDYO5hE3EMdsxb0
	 Asfa2OEnZ5wOedwEYf/9Ygs1JtjxaugpC3SjP+abZHRtODB1/ilOJRU7BnHpRIcYAd
	 YDjUlzqmC6a3VALNR5QScTcBWCevHLkMrcgyfJsKMiB5LzFngvvWCQtreaWtRwiMP7
	 bB2w7owpzfiig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CEC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946919357.823.7290691513092012909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360eb6a3cfd341a284eb33f05092021c2943c89db32f3d6dcbe5aab5c26dc3db
Date: Mon, 09 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749469193
