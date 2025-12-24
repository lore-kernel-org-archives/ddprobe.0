Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0892D381AF
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766574834; cv=none; b=GrRMtw+ZIdEzvHDHPd+I/LIPxsovPpmZ1gccdLV5FNzdmu7qO+6pizvlosV8OxJctXpZ4vKpVTFekyrlLlP9CRX/9p/rw4k50f7y9XNOvGJ3tfcnDhKTwlJVt62pWYHwpjdHUUipDQAQqY/WegMshPV6gbHN0T7KSQ55hubA+kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766574834; c=relaxed/simple;
	bh=8bWlGlKL3sYiXM5LuVpmtBQ6cou5PnDDzGYkrIjKZXY=;
	h=To:Subject:From:Message-Id:Date; b=oE3jDZJq5egYwBmqs54xhdKawZqrxI51vwWJZacefWxOkEMfpU/k5Y0ZcxsSv071GxNEhmev0VFnLptPFzfiQRL7tI8p8UQmh4wyGIgro5qNGJZBB1+Wgx5q7bGrzRrUt46Nif+Ilz4cOJ9/Nt5OY/0rIbKJuNtZYW9d4buCIus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpKL8NDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpKL8NDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3591C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766574833;
	bh=8bWlGlKL3sYiXM5LuVpmtBQ6cou5PnDDzGYkrIjKZXY=;
	h=To:Subject:From:Date:From;
	b=ZpKL8NDY7sGNPXiaQDkK8kR67zRpHNb1tDF0z0iXMmQSdeVYFgfP5NvfGwLYiqg+L
	 q7dwPSWaO9y2vx54IPlZ/sq71vg18S17ypqyRT89FbOa468E1k3m/T9G1KMz5pfVB1
	 Tg3MmmyXWB/CrQRr4sxeKUCrF06q+fLjKRlRAQkcT8CourAvpzMyW9/c0o1beMBAYe
	 TnvZV3ZcPOLFL3bWANBbaKWiCJSHecXbOyvmL8HQoHgxjhOcAculWMAZKUlGnrB+fx
	 +74PtzHAafM5NfuqXmmHA1+3LQuz7r1VK1sOtzdqNW2maynXHT9NDIrxnChU2JKG/U
	 1Pvt8pC9BVAFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DAE75448
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657483359.8296.7123968334266655971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db00f3aa227737def714172c13518a9e58a9aa4e3aaea079076243b018c92e95
Date: Wed, 24 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766574833
