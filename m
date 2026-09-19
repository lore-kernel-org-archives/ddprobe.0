Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C93920459A
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789803634; cv=none; b=JISd9Opm1AH/haDg9w3MR3XzLgAynbvGs4YzhNJCM5MqLH06YqhxDmLIW8aza2EmJlwmhfs5Ee831L58GITJJUVfMVZvIRfWo14fbPq6PDu+ePhRBVqyDd4EajAUvgya8xmp7kPQ1reLORWAwBj75UFV1Xxj2ADnQtzHl7Jl24A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789803634; c=relaxed/simple;
	bh=UoYOYN6UroOJtzmocpa6YtPxpguvYBmoGszaOhKehz4=;
	h=To:Subject:From:Message-Id:Date; b=V9pBXbSPdqo8x5tH9ANs0mvLxsN66L8G7w6sGv+7ZcdIutWVCo5Re4CtgorN4N2IEIpM/ikrt/Ag29OA3vh98wJL3ObosoRhRibSeND9F95rrBDA95KGOu5nxUPjVfrH7CCyWbPxnx1fwPjSzmWsywTtHvkhQtoDL3Ziqnixznk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWptfra5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWptfra5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13C6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789803633;
	bh=UoYOYN6UroOJtzmocpa6YtPxpguvYBmoGszaOhKehz4=;
	h=To:Subject:From:Date:From;
	b=PWptfra5qbvb5rxtylRTaI0yUEiwd/kn7S/Nu5pAHbW66+VEYsfdJd6vX/hVgC8/G
	 Nc1dgBN9hXjGd0K244KB0wj6BRECjvm/jViEb2jd0rbjI6guwuqaXK2D3dCTM3pX5m
	 db/cuJI7prTx9WG7V35mLkJVqn0jz3KiklToFM7rFIx2WLO5vI+oBcJV3pZxSNpy2X
	 bgdp8B74jPdhjegG8rj0sCxKllRBWgSC8zuXFIDgvPLXIoTodJJDJhjNw+X16bMGNI
	 nwlu27XfsfDq6zk1ovz3vRp19vDi+q6afB6tsbGn+hK0inrKEvvF/hQtwvXjcsCw9s
	 Vk2X23HuvU5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BD8C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980363370.2503.15420501483307968320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e350e0f7020db5ed60406b720b51962ad4625b43b857cdc71064a11491c1b5db
Date: Sat, 19 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789803633
