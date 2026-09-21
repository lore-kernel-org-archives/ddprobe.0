Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F85331EC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789963834; cv=none; b=KY15s6hwT7Uf/1YELJDY+TWystKnuHSvkO7CmuChXBKTr1coDMoQ0+Ida3sbYFNVu2WCKaTWmKs5gRU1FENYMOKY1M5/EH3JFeyjb8A3yQV4VxbJAbI6HSpUZhVtR/wZuOj5ZyccViEZKanKWhL11w2NGLGTwwZzQDI9zDwhqGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789963834; c=relaxed/simple;
	bh=UD+27El4WWhOBzruFTvENVsO2/uvCBD4FHutNVnQRE8=;
	h=To:Subject:From:Message-Id:Date; b=p/cH1gEj/pVC1basG4amhTUpPw2I2jopiwLDma2f+/VfFPUbsr9HTWOrLeXY785M3dI0Gk9XuzYxKtvOFwLmfuujhTpzCwR/iIXUMzSi9KaqGriJvdu7WsPf0fCDgMq26LKR7YJoAQoasMi73mtUCgGvrslB5TWC6ERIGDw+mFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYfzRmR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYfzRmR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF812C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789963833;
	bh=UD+27El4WWhOBzruFTvENVsO2/uvCBD4FHutNVnQRE8=;
	h=To:Subject:From:Date:From;
	b=mYfzRmR1tbp0vCQAwBWYDQ9F9HkR+bwIkfiC3HJ5ssJ0oSCwAo9x6yW4GjuYdhIBS
	 0qDuy5EsOOLxgSHdVk8f4Ac7PLrazKL9PEPqpUrN9V7Oq8NElYTD/TSbXYWfpBY+nH
	 pOCWHlYUX8nL935xR2xWyuiFhjgjpULgJ5Aww61CJ4Nty3x/U3ROM3cU4ZIt0W6aBF
	 Y8yN8nHtkDeqzfyuJ1vr72J84SQfKrq4OArb4QSX4KrTbuQUH+U5pRuKGbPaMOK1HW
	 joKuev/UOov7Vbeu5clNBLBDf78DxiXORoxMcBFusQ87tnMmt6BBBRMRwf3eMR1YyV
	 C8CHTOraXWnSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F3C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996383369.8617.10511739388103929410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a2a6ca296458f3e24e437c67b4304a02a1c6f73f25bb61000eee830905b0a4
Date: Mon, 21 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789963833
