Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5624023EAA6
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787527234; cv=none; b=RO2dsTgdOramhJ6CcmkBr7XU441mffkMXRaovb2B64Y04Nx5jXugTAAzA6FVkwklFIh5h50AyHMjtkWAKTAY221p1Wo2EYzuzNeJCNEGoB2urn1a3nf7rqUv+xFyCFlWzG8KGinqcuOTsHJLyo1PY06Xwp8ApTWYDKO0FY0pdPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787527234; c=relaxed/simple;
	bh=3dMKckiWnuLzwfMRxr//jqHn38DPKqMsHw4TJWlXfs4=;
	h=To:Subject:From:Message-Id:Date; b=BCSFJZNoR0CmOqULOctk1VtHhYTvNlMWZkQz1atJbaB2xcqnZOGuc3RnEzqrMJKFVV9hXGIPl07+ctrJxk2aSek7kajNgqR7/5dryEttjyFLiionGs+LjrTBPDy2uL0gXRfvGeNW9jMTDmHyMvvZe/N1FAmWXI9oM3SdC2xd0CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dctDpZfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dctDpZfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8677C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787527233;
	bh=3dMKckiWnuLzwfMRxr//jqHn38DPKqMsHw4TJWlXfs4=;
	h=To:Subject:From:Date:From;
	b=dctDpZfPJfwbqS8GKNcxte8uT58QKobFGd2x2+JPhF7WWMjTEKSXjpdcoht16cV5M
	 YD1FKIuK+Ao1tTqz62Q+JCkl0monqRiTuf+C2d8+eSyGWw+rqmkBM0Q8WOFZOQfZvO
	 G6zhuYwyCuuxwHAO7SBrLfkmXxoy6J4rMS/7ZfX11F/j1AbZ+Yaq6l1WMXpHAOma23
	 AwHu/AT+evbxzm/w4Uj5ysOeJGAA8PCFTvcfirFF6PL2mEiST3vAywu32M8cz1fEiH
	 Drmdf3Z7oD9T44Oc7W64LJ6VdyReuKR8ylhwrL5gcHvlkAf4BaeUM/TWub7qJ4BCUs
	 eL6Ujl97Ioh1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD022C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752723368.20903.6125175715974337717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee110099ef87500209d5104de666e4fc01c6cff8fa9c3ea78638abcab7cd499
Date: Sun, 23 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787527233
