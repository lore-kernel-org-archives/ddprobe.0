Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FCE3655D4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785844234; cv=none; b=bPE1AKf/sGNJ+dwjgnA5XRpu51fBjnAsWd1divGZHzxxESXJDuXz3TvOx2+IB7tMKvPkJDeHiq849PClvimymfEzYB13LYs+jF3g/ytLX3x7ZwbHF2bEwgKvjI801+MC3xoflabNQvXRQVejo6jnKcyFBhBFyLPu5sfe7aQD6mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785844234; c=relaxed/simple;
	bh=6INCR9PRdn7E7CxsVA/+/d21zeOXDZanMY8iimwMCQM=;
	h=To:Subject:From:Message-Id:Date; b=s3Y9E0EbrkHocZqPAqaDSqJbWR6TmY1nD0Q7zmwjpnPlNkVeOKcpGouP1h/cjQ9dvGxCs3irUuuniOvINsuGOHGM5tmBFIIG69eKDpHoO5z3Dp8hWq2OseCBVtqHbnca8rjynhepvlJVcSyNuqXmRkJ7wKD684d+9KGnfNqee4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/S89Tfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/S89Tfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06D6C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785844233;
	bh=6INCR9PRdn7E7CxsVA/+/d21zeOXDZanMY8iimwMCQM=;
	h=To:Subject:From:Date:From;
	b=A/S89TfoHl+z0VvEWEkja/JI2vpjqp9Zc6fAMLLnbqeZfJTnFXjguRPsQFNURLWh0
	 2i++1N9uzabzfBRsbmPD6PFGNt7vCyisDakyIkVMmFZKLQsSGs+QVb5sspN+v5+aOL
	 6fFRh56nZgNHamEEeyRIAIIBC95gV6p8GRlSW0yUmrqlEF9r8b8/ZnxeZEpyBZPE7w
	 Mw+1KxGdyDTEF9rAGOAtCbcK2ys114vlrd5K2WLNi+MTNSm5gXvZ1Tphdd0PfVtq9A
	 JdEu/gAlyYqdTVdlnUYLYDHwiIHdnIX5HQgIN4m+cxGJV5u8R1058PGPKelSpevEx8
	 E450tAzmX1U9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB578C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584423369.11362.10858953180962348465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872454d28558ac78a719f872637f24a6295e2758444deb7ade819faeb7fee6a0
Date: Tue, 04 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785844233
