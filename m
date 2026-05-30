Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F13D26ACC
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780127614; cv=none; b=eYubx67yrLKfnJUS6a5krPg/4Czt/fsWZZ5qetbnAkMaSxSOYIesmU7LyrmVFkceWyrkjErRwMepSuV+Jav0nTi0y4E150+D115Y6ChYrAAw5p2o2N7LTbvPagKVzOv3Cmu0R3R2lM3U1OfplrKRRX2AQP4FyIiRoMDkdWZ70ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780127614; c=relaxed/simple;
	bh=67W0MZIMauFf42BDcCIGF42Ol1XjyntVjQCfzqKvxtQ=;
	h=To:Subject:From:Message-Id:Date; b=IxhZuf9EdZv4q5mNcIDDHqpb4AnkQR33nXQNCyma6EMhkUFZPn7eqTcwTXs7a1KojtN8BZ1TNRX4YGqflXHnmMgef5pbMPmroZunW8BhNBmGrFJAfonygO04cBnmTqapZztFrnWts0brWse39VtDIZtOVaWN9toE2mynxkuikmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiRl0gEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiRl0gEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0487C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780127613;
	bh=67W0MZIMauFf42BDcCIGF42Ol1XjyntVjQCfzqKvxtQ=;
	h=To:Subject:From:Date:From;
	b=iiRl0gEihq3QkJO0M6CBbXNRuNgkHVSlUUIDE7kvZNLoZTrFk6SOOtMFNDcUmDmz6
	 AZcsNqw1thJmz9aFfzkfnkaVH6UOrcxkWYLj+p3CN8sqoOkpbDqvYeRFCenFJAol2c
	 qE+wTTgpvymcO5d4yptWNi8G8Rzrf2zNVz74+DuxtspelLu2Gmzb75rpk2xL26r3g4
	 3qEK8a3c45J+/p6mdyEC16BWOOl4iAQnGOXoFqhVRICqtA2Ktr2o5pBcBEywyimRoW
	 EsVOgCH8KnKBi3UpMsSbKuOGoDz8DRrikSem15cy2Yd9HjL+wXxAExnxpwtFZN3+aW
	 12LSCT4MWWWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8476CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012761368.11671.1130743630260008109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a72c769a285ee97e015068a3f54df53e120e07a1fbe19278ef9c44f680be79a
Date: Sat, 30 May 2026 07:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780127613
