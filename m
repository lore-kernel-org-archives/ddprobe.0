Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0571DA60D
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771635294; cv=none; b=eO0UC9j7eFdB9JCP8VsG44tsa2M1GZQc9u9QGKFpPtesS4t0X3LWQVslnnaq03GdE4EIP1BCpaDqqPOb8S5W4bcWl8h0o3AnIFhEyzAFEv7sIFdGvDeU5GiCllsKCGz7AuzL+4ET+hgWV8EkauOXPer4r7RlA/aPTIoO76A/poA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771635294; c=relaxed/simple;
	bh=dZPPgeahit0Nley+/z9orLTpk7D/BRv/j66jAlwAdRo=;
	h=To:Subject:From:Message-Id:Date; b=Pkvwpv07DhZjAhom84AUwb/J48iPqHZPyocZAJAZ1CoOvKOhZdHdiRPcoK5qt/6sgDIGCCclyDU63hTVmEuPxEn+UHbbb03CGl58qOYHD6i+2vcpREl+jwChjEM2aQ54H/wuy/9dZ3lcXceeuzVoS7S09KboO34TmUuWq8/sqQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIHdcH3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIHdcH3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB09AC116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771635293;
	bh=dZPPgeahit0Nley+/z9orLTpk7D/BRv/j66jAlwAdRo=;
	h=To:Subject:From:Date:From;
	b=FIHdcH3PKESjTLR/Qomy63FiocENe3mYD1LqpLwlp30fKs5z9PEeyGgbbLwP+3c8f
	 fF3xkk+o8WQ3d9ZR6bT7qQfLvQraG+mHRBTERYiK6YZLble7r7Y4zpnqf284spScPu
	 POScQ9XxuZVw1ws8h2FAsC6I0kZ5ekc+8XWOuF1fJzQDJANjHfCUI1LyoEBulzQfkX
	 9MAiiX80Lfb/ZnFBQcdjgKTSW2t981XDTQ2tlCtpP4vV5y1llsIiWeN9ei1qqT5Z6i
	 uGDQIkpxzh0MNS448bnvw+9lHKRaAZXo7fdvvjUGJ5Xf9KM07D9Hn2qyF3KxJIOei6
	 ADNty3J0Vpg5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A109C5CFF1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163529359.14209.11437953111686268911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f84cf0e9cc15ab7795ed0825285d778d33c095dded400f4016ae5c1d855482
Date: Sat, 21 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771635293
