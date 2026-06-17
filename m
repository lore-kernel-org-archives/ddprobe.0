Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AD0281503
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781739994; cv=none; b=QeDHJkFAe9rqQcO/dff4jBbp72BSNnQLt2MKCxN53RvwLd5QxHq0HpoUFtljwk/ewAPSUFfOUw2i+v7IJlVUGRebsAkesUZbaSzSuSPt2xD/Q7RWvmZKvAVKgNdmPfDwAwndq3FARIbiWnHPtuS8vKJ1PWE55DalwLA66p62DUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781739994; c=relaxed/simple;
	bh=fyLZIyBBryuJjzTsMv4C+3QA38iW396eccpcEgLQi+c=;
	h=To:Subject:From:Message-Id:Date; b=sQy8p2lsyRRvbEeLNbBIRfmtQ6h10d6uCNLyz8doe0SfJ28YzTMSTZa+KxRrobSipxEUS8NzgnZ8A4UZGVDR3Iz54dW8kXE1zXjKJ2WgLhxOaz2EQV0u0b4fsUEPiBAgmJZ5KxNBGnXC5PS5Vezcu3jalxoyDNE7JctTXWLX9yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Koj1hxuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Koj1hxuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B09C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781739993;
	bh=fyLZIyBBryuJjzTsMv4C+3QA38iW396eccpcEgLQi+c=;
	h=To:Subject:From:Date:From;
	b=Koj1hxuOFPwNfLxZ0YWffgSwOiRdA/OKphld0u7P26hWFGM03PTNWtxNbgIE5f54e
	 Q8wRJ+v8ziWWqapfPvxSvDW8uqMTCgPVXyCbfnC8J/qrQ7TXnZkWMnvsllGPur5ObR
	 6rc83LA8qfPApbFEQG7OuRJM9aecQ8Kcj93gFGofCTjtWG+lXJ/JRn0khMCdsUhwKC
	 PP+cqlYToE/Cutfn+Zxz0cnwoE7ik89JZrAuV4msAhYA3IX6dg/XjqZKZg9z+1r1aI
	 gDS4sjnd9mKN6EbHCSR0B6KvuJURRx97o8RtrSpZd0+vb2GjIx/mWRxB5oHTigbrch
	 bHZ+Vp5jRBUwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD433CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173999370.10014.561788983837494122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a0bbbd1d23c2e5d5143fe976fa50e25069e879e22f0bbf07fe3ce9b1b9544f
Date: Wed, 17 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781739993
