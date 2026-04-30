Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE1C194A6C
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777513654; cv=none; b=qYkQjVKxoRphbBd7qCuBLH2mDheJ0D5yIC44Bu47vrJMPpwzjD2bCAUrB/53Cup48HZPaX/qCmCdCYr4io6AbqRL1+l5J2jh8b/qh+fKF3qs4KyVjjEAQmSGxMvHbza7gh0+DAjELmsG1502CC3UfVb4TV0HBoAegAhsslUCq/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777513654; c=relaxed/simple;
	bh=5uKCryxyHKSXuBPrsbpfCtTxU44oQqCAYN87VjriVD4=;
	h=To:Subject:From:Message-Id:Date; b=g+hRqKJ6ssFD63PC5Gw0iqYuuBN9kzpf+8Y+30QoJVVIa6Nx6vNh7ABd00o7R4VWuYXht45pkp55iddwIwDWprLVD1ZBVP1Zzf7sHauuE4aDOp1XSnnVBgIcXd/tZRh07Krjg4y4aQh6J0Y4xLsjIW3RPU5xYyrKqIUs272x1Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clAgetPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clAgetPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C163FC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777513653;
	bh=5uKCryxyHKSXuBPrsbpfCtTxU44oQqCAYN87VjriVD4=;
	h=To:Subject:From:Date:From;
	b=clAgetPRBkK0+pAoUeKxqK8xcxQ9xJE8WNBzz7D4tlH6J/G/c/uFKy8D7qmha12v1
	 GGbrcnMgAp9EYR9gjxiv4pr4PUpUq7kWVSys/vRkPEV5Vi1aTQ8ENx6nHhzoetPNj7
	 BXHDuicts7id/q0UUALkoTUAGkskyQKQs+nCBP2p1OPm8nj7A6ccshgTQGdlC6m7gV
	 GgEoDEM3fuYwcumXDButPkJJxPBJFzAb0JSfQRpBgDfHPzAmmgIw1K/CjI4r37Nmsl
	 fTjcDGj63FnY7n0dUcIV6nZiNZB52cWHK1xbsHTb4dO7M7SNIMzLZAlxqYKHi8FIeJ
	 u3Tn4DyeoWBxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F56FF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751365368.31043.8193810826273434888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f107223779ed59062d3847847242d80b21049055ad4a574a0c8a5136625b649e
Date: Thu, 30 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777513653
