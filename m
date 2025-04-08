Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339822405EB
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744152594; cv=none; b=ur/LF/3yxV7217TX1dGatu8t516hKmU7viiBEREgnVJdfcnj04lAwmFuiVrr3jPN85zjvu/a78ckPGqCzIjFk8MonCC+b5GWX24TjZwRW07y9PQg5lmjqBDnF5eJu/99jvE0DqDFTDZFs+EUxuuO/cU3m1r84sTcthCsgf6sNaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744152594; c=relaxed/simple;
	bh=5OwQ0E14Ftvv2DRqb4u8yiujwmJDuHL8VUutSZCQ60M=;
	h=To:Subject:From:Message-Id:Date; b=c5CirH/gshU6CJywz6S82fdph+KrOscI6sdjj82r6Td6tJTdG+qDKjU+/Hq/AngsP1BSvGW4386ytpRffbIfPSVNTb+RJACq2eG0HkgQN5NTLGCVqlEztOeXUeZB7KqTIpMmJ9nwMXdXfZbDGhWEIAidITgMTi58sl5fG43dvUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey3Ni2Yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey3Ni2Yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B146BC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744152593;
	bh=5OwQ0E14Ftvv2DRqb4u8yiujwmJDuHL8VUutSZCQ60M=;
	h=To:Subject:From:Date:From;
	b=Ey3Ni2YpjwHjnFN/lES2pq3HR1ssUY772qB+eAywSxM1Q3dcmSVDyMKR+Gk4d4AWY
	 pEg6SxLwilA9R03TyFuwJs13rQ+fr0kgEvbYfSDF8owzMYKnf5PXfXImDAp9K82l9F
	 gA/yaSdvFP/ofW8I7PZbNPL5iWBdsQo7aSSdbDICCyNept9ck+GI8Nps+696b9zpQP
	 99tuOWqwgbk8ac7vtpF3IHrN/MsjK9LfkrzjjceEw+whcqSqyLOsZIq4AG3Amq7Ame
	 WZLCYjyLE+2GesxykYZPO7Lr7PvOP+Jb4ePOsSEPGwXQ64VQlkAxICjKYxLZl7tjaf
	 Z/ZbrXT+zjuHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8F9C369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415259361.9905.3063470514346428634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e95f0e97473b16e0baeeac57b2ed3ebb855ce7342779320a84dabe85707d1c
Date: Tue, 08 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744152593
