Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22979421885
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777319854; cv=none; b=EI5yCFZW3ETN4aktxOimdQ/kovKgyTWnh0wmoLYTQRBJ7tMSZ9EcZrtn2FBpAUhBUOb7AlukSSTpwvZ4PjCkV3oHuZdPC6LFmXqjkIGthFblYg3FiW15rSpoN5lylBaegBekqM+mUI2/+UvORVU9CjHuaMJ24tFSdbOKshrVvAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777319854; c=relaxed/simple;
	bh=dGhKvxp11h7zdVPzKlQ0mzgSez/5jbPvIZj7LbQ9an4=;
	h=To:Subject:From:Message-Id:Date; b=tGysMi8GRzNthJvWndQJ0BdGpxVLPOWqAmcVvvO3wQgf6eUUKmJYGULjN8yG4bU4ufqfiDvkpLHnmd8vleHZeHJoZP7MWGI/DAdtT/4K8RPCmHyOAWb8GDafr3nl+tcdCfXy3qTezQYP2Mfh8K12Sg+wDyun5bdJAPfyDEHEobs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoWHLPKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoWHLPKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F38C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777319853;
	bh=dGhKvxp11h7zdVPzKlQ0mzgSez/5jbPvIZj7LbQ9an4=;
	h=To:Subject:From:Date:From;
	b=CoWHLPKUx3eP4OiYJLms9gMKd8a5ChREet3CDOqXNmBn5fNe9Ds2k33GKwD2SHiKE
	 9a9qGjRC0dACj6hnG+HV0tu7bKfsVH3VJ2bUgtI3rRiGVektdWQf/s2UAZ25NK9Nqm
	 /uiv/NLFSCkz7cqus/pQ7DSv96OQ/EJz9VdVt5Z61aqULx5plSIdELLzo5krJFSvgo
	 Yaggk0IX9XKdeVgMuADdBwH2iPyCd0kSsCuoyUbW2pewJPQIEuBiHAxvkoCdedF8WC
	 qOST+jkCzxr5g2i/kBzWrxS2v3Z4HixFMml79Fm9LY0zYapvvEF4gMIoybWNPQDg7O
	 ozZ9pPES8Wgsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA8FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731985368.11996.12643288244289286902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231b869879fcf3675bf31ae237758f9a94d1303cd9dc28eb5fa086d388eeab08
Date: Mon, 27 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777319853
