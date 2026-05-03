Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D573283CAF
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777779454; cv=none; b=ar3dmBCWjHQtMFNrw1nXP1pZV9nMN8F4qUVU+7pmQND9UyerJt0rVwk2POPI9FNTLPmLZZD3nVcd60SJ3XOrbBOgY3uYQwmhb2UEkESN1CGFpFFT8Xa/RWTGmfskjZo6v5APhPuGxvPMvPZnbKZ9J7EY4/TugnDUUfGFOu58tc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777779454; c=relaxed/simple;
	bh=8uAePVsJXsAp+qLJuu0i7vB3WhNj4Q9qR6VoSGoVDto=;
	h=To:Subject:From:Message-Id:Date; b=CSU5yd0p89kP/aJ5h9VEgifoNJ987j2hIr7twgrGz4v1YCh4010JGJr11PdEIhMzw8rh6vSiv+CTH0QHvn0VqdPQpk0PZtpxDyhl6R6MrPO8O6clDqGFIE4JvvWHV0OeSLY1N9PnZCfqabe6EMK+MX8v2gRuCCnf6GziLZc6E0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ev1ddVrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev1ddVrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DB3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777779453;
	bh=8uAePVsJXsAp+qLJuu0i7vB3WhNj4Q9qR6VoSGoVDto=;
	h=To:Subject:From:Date:From;
	b=ev1ddVrdHntBGGQz7DsSnxXCywWKr60Ij2CjbxrbxJB9kkGs9b49Ni/41Tpvhr3Uu
	 EnrOSaAgau9YedvkOO4BadOPVwjRtAh133KY/NDoXeRki8dz/OWelM5BVUnFQXh8TY
	 qP2NoCjmnPQa/NRM2JE/tEgohVSGo41bULYXNkbR70YbfccdAoQIycUvnhNsZuPqW5
	 Vjhx1IX8JHgFrZ2lfWtg1vMqjbkf9VTInBv0tPmKDHnLsCvss1Tp4vQzsS1w7L+jL1
	 7kL/2GHnnFNXV3sJ4xiVYadgwD3tUYAmgplj/jdDLvrqSS3jVIG5VmFhVdIuowTFSj
	 wEa69R+xq6tyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB43CD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777945368.6961.2525272229451461314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4acd085ef0800c0906d3a2a2496026a8f6fd51c80e0cb43630d2363927fc1777
Date: Sun, 03 May 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777779453
