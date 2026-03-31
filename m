Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3CB83126DF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774966493; cv=none; b=QctLFRcbjaJMbW7uf81dMb+MMwb07PJQP3b6O2CXgkXeeuJcD8XwSxHppaFCsdaFB8+bV9aPisecx+8uCNqzqLP04N6qskKUV/5sF1ShI//DxAFx7BEKAZjqs2wANgQFoyXrMvLt4+Y12l6Ito9RvYvur07hXmla8qDeMzwGHCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774966493; c=relaxed/simple;
	bh=RlW9JpLuy8bUdClB73rQP/b4aszgq/EGUv8CQKmnlkU=;
	h=To:Subject:From:Message-Id:Date; b=K2iVefpgRNsuRtqk9zDkYzpI3oIeZf/MawmQMBxg3LQCDpcwpt3/08MIrP0eKU49udkXUT5m9mCpjjGCKIopgT/Y27gRYRGRznDO+yjqAQK03qRCgjTVLS0dhoGl04BHkv5uV1kXEQupacAChzkBZKfoZw/52mmEwSf1dbAXDiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sl4RUK4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sl4RUK4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B1DC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774966493;
	bh=RlW9JpLuy8bUdClB73rQP/b4aszgq/EGUv8CQKmnlkU=;
	h=To:Subject:From:Date:From;
	b=sl4RUK4NvoEh/C+V5Uf9p0cE0JJxhkBDgZvk0hm86Yk/6g6HA8C9wFZnQ3m/Nd6Hq
	 zIHVl36R0tOdh+Q5XzT5yA8+tg9nA6EnExmwJX7eqhBf7SoC3usrR9a50WbZT7p5x3
	 TZLCeKdZc5fbma8r//E5wzLpnH57IHsaR8RBoPyx9QzGzKl2ZRmk2IZEGTVeJUkcw2
	 ArZonL33Upx2b1KxNxJDDzCdn5/xEje5xo14fMaSD5pO61/enhqCZ5vjBkbLzbKB0J
	 K4nFzlyAtFsitFU/0M7Ung+AI3Ew+KW5Hf5ioKjYN0ngGsRv8gNXdPFRWtJi+kv9X3
	 4z7a4zM/nRtlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956F7109B46D
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496649359.32244.3363090125571630459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59a2a068dbf64faace3d6ce7ab367214f239c4b01e4503480a80de8efd66cbb
Date: Tue, 31 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774966493
