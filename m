Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E935411F94
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784741374; cv=none; b=LLDF70BKxQbpV5vTjATdWLxpYOXIflt1uA+xV9EUlx1992ST89dtcbJNsT2AyruKSey4hPVA89hJgWnVohqcIs73d7Ua+hxMuYocVUVtfSKMukEbIItuFOi73lH8DevXZDX1FII0Hli1npr1gAejJ+rkcFXl7HZS9q9dYD5fXpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784741374; c=relaxed/simple;
	bh=XdcoPTWLU1jpmwI5iZ6Dj/fleQ5HVXSopShNWkYOutM=;
	h=To:Subject:From:Message-Id:Date; b=Fo7BDTAX98E+MS25jVuR3MwOo3VNXO8+zfjF26tPPQ8ZV68xW9lcyyYphvzKeqHuid8PGRikfd4ZyIysXUpafYCt+UEkqiiSXDJpvgs40YP+38cAT6rJeGhppWqLAAfwrR/+9DbPzRtVS85GDzSJhKibqGas6be5hrN21OPsgUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su2MYgt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su2MYgt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC6CC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784741373;
	bh=XdcoPTWLU1jpmwI5iZ6Dj/fleQ5HVXSopShNWkYOutM=;
	h=To:Subject:From:Date:From;
	b=su2MYgt7L+SjN0GMhpXjBhFFXbB0ILinZLTQDhrye2620K7t8bF8VQEri6/dHLDjd
	 1Bk1rVashTAZATWj4J52oV5EQUn2/HAg6kNI5O2szh3F8sO/G3XmJkIkxo54lnPqmS
	 xR5hku4nAvaU/1C2okHqgXa85Li/q+FHq0Z6j95yoGeHaJy3qJbBHUknhML+VhuMep
	 2t6FnXr102f5tHH6gBPEJbw3/CgGtwjFIFzQ6s08jVfi9NhqTbhuyPCGjh/HaQAyz5
	 tE0H3/+YQNbbNnYMotSVzNIEBgMS6A75gmvIy9Cn8n0aBpm7gPvAx2sKb//W3tZ+k0
	 BEpzPYjNn057A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A915EC4453C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474137368.10376.3610794220705345895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6551da1a2cafc4a314978a9ac68410434923fe619a742d7f8a0e3b9630aa1c3
Date: Wed, 22 Jul 2026 17:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784741373
