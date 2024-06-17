Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF81819
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718599103; cv=none; b=AgYESYr5EKxERSA/Dp6atTz7DdOvXGIOSCWSl/kyL883NFH2Sws8SNOpKSNYYGGp+jDgDba0R1nhfIaJKfw5KPj8SJ+FeyHagJzxDPU/PYA1lUOurX6wEf6iqDZNTwApBXsPbaPEjSzrKnoBov49EThHGIAVx+GHZWxouJ+YcqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718599103; c=relaxed/simple;
	bh=dhusxCllsMX/oBHAQ4EewElU9hFX0Q8JRVK3BdKMGO4=;
	h=To:Subject:From:Message-Id:Date; b=Qm4JpeJ7zqxSedT24fL1BmAMPd/BjCGK4sN9cQobo2hq4zAYutWNNT+7/xu37oFgMXIcGf4dcrBjgMAde1Xgeygl1qilHrR5PuUW4FkwhdoCPl+6z/jZqmhGCGyFz1/N6v6msCwDEUqlvMJwOyHwXoliyDeTVqPND3sePbKDVuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZ5SyhGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZ5SyhGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD0BC3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718599103;
	bh=dhusxCllsMX/oBHAQ4EewElU9hFX0Q8JRVK3BdKMGO4=;
	h=To:Subject:From:Date:From;
	b=aZ5SyhGKca1urDfVlrdDQRCPyifGVCFh5pX36uBujIvshM8qLFVPKARTpzg9RhALY
	 DKfTgVE0ZPnKqhDDbxHZxJKmIeCtnti1PurJH6JNAEm7r3BGdULpBlJ5vBvGrlNSfQ
	 9DESnUff03jrCiMRG37hej4skUmNfMi4B2JOPVsx5cWp2h0xmarb4JJ6SJooEWIn/h
	 fJf1ORsEfTN6BCUIN6s6AYcVrz05lzdmDfzPAR4044DW1nXhhBhJTg+mEHXdgRAOKt
	 nz1Wig2Iz9THDWzk63jlTjXj+LvcZSM3Uiqb9qGY50SE6KKQAsusK9quJxcOgYrVEP
	 6SxM2lNeGzQKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0775C27C7B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859910283.11371.3906777927566821522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270b068ab46b2823c31e4a453198d07297f3d9f21d13f378c39be87f70ffc0f1
Date: Mon, 17 Jun 2024 04:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718599102
