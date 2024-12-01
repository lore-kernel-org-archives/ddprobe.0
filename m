Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459BB35885
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733045154; cv=none; b=tnIUoNWRIEt4at/Sw14txYZvoLJ41+JuIzh+EYgFie0gpZT6DC7qRlbqInsWVfwnIIj+YcwY7Z0ckajkbJYU8BlwJUybC4oRD6YAsos4lEFUap0xUBb0g1l4lZSyFE7Jlb0OpoLKdXALbWZ34GL1a/8rWpGJ1oDjv9C5yFxkUwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733045154; c=relaxed/simple;
	bh=vGUHvOlYM5kRRYMaGtsS/BVlxlrqlKWNSFHSz0RjISY=;
	h=To:Subject:From:Message-Id:Date; b=LQaMmFMW+T1Ktn8byQL5tl+NGJf8cpo7nY1fLGrGYvzINrcApgk2vGOuJroZPbCzIoHicV0/D6zktryRdsUvWVDJMCg7v5dABkblJKeq4ooqH0AkcTLVBw74jb5ezkYMlDy5GKEgcU3KyR7ejTMT5YW/d+xU72ZuGEANKa1aZ1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KM/Yz0a8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KM/Yz0a8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9A9C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733045153;
	bh=vGUHvOlYM5kRRYMaGtsS/BVlxlrqlKWNSFHSz0RjISY=;
	h=To:Subject:From:Date:From;
	b=KM/Yz0a8hVjy2lCQZfrztj/3dMUIlDKwqPDJ4f3TslubX98JrFMdOSxMhfXpfubo8
	 vSq/AyH1tJJx/fZSEHrr+jGTcGOG+MBZG0cD53o8elcUNQreyYvab3CtrsZtUpW5Qr
	 UHQ8GAMhg69wYljwRKfVjJcnMQDDINOWtlBDA7yK94O7r72oieBfmVk/fWovCCcMNS
	 kzgeua8bKGvORflni0JlU8oFnd87IQ5T3N3MbRG3s8XpipJo5QsPqiGJHfWfDVpUFs
	 niZGg/Cp9FeFCdCv2wECmWEspqu5IlgXy3KtEEEd7fJE3WNZYTj5bJ+S7pTwhZu241
	 bgDLN99BLDrCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98513E66897
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304515359.18898.3279327366372515000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749b15f8f6cfae337b43c2876889e297ded8422b75a3b41e842023110c85c869
Date: Sun, 01 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733045153
