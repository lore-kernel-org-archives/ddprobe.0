Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557A231D730
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791945034; cv=none; b=Ej5biI+N8NbAKMjg9UQb1WEJR/xUMTOVWTp5rY1Ia479l7ypdBtRdxoE4dcvroqiJIHAyPGF5E3tx9hYfQs4NdAI0d7SClLCMEzZWo0pNHU6agv8qTXoPwLzbjYQ63Ka6cIJZVZcoHpNdD4OLvvf49/BNH6IVotqaSCo/RduIDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791945034; c=relaxed/simple;
	bh=ho0IpDm1c7kHZaHghUL3yJwny24ITBu8jPAaofHNGyI=;
	h=To:Subject:From:Message-Id:Date; b=kUu9H02Mh0nCwZtiRy7C6jC4C5ZD1F1ZlPWPnCEx6BdI2VYs1CuKdMFFxOJxiLjhj8Dgsgt9sXd/y1HZvXB3ynahAknUvJjASn34VbJtlqeIlo0j3wUBEn9Agc0xZPPYtV7s3YiZo1o3oBTtDfNXYK7THoFCTpwRkXjxyZfcUUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVQREDIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVQREDIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D2EC2BCFB
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791945033;
	bh=ho0IpDm1c7kHZaHghUL3yJwny24ITBu8jPAaofHNGyI=;
	h=To:Subject:From:Date:From;
	b=IVQREDIEa617GJCCr7HPhQtwdUEx18ooFVfMcJfWNzEoJ193L9zz0N+RuRd/Fny/m
	 NNTGT3hXxekmHbuW4bNl3M1JJqnDqYTtCys0ooMxR3KxQL9H5/IPyEmdJugdbFMwcf
	 O/ehhIXfgNvz0y0ETCWBGITUV8t1hCokl7u05AhKIt8DX7vAIFEPwIqCzyK6imJi4+
	 V/PFMleQD/nwMuYvRrkNaiuabIl4jC8ReOjquvbofj6GpLrF4LnWoSWtUYjhnui9Cz
	 NFNhdyno/1iY/r0HFUxV1NUl624I6YuR6GRebgtouUXeWw3q2kJG7foyTIFcAiSzGj
	 9hd3E+pS7azug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE5ACC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194503370.1379.17940047783752117975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827ae6757f1d48d18ec5c42011e9d8d9602baf0c180b2d49edee9b42ad1b9e4f
Date: Wed, 14 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791945033
