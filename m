Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEAA372AAA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763588514; cv=none; b=TmlKalPUuyiiVr+IL7S1fA0Jj6AqjvtAn7jjGeLnDhhcpSkI+fClGmoGv5sQXGUz9jVudYkSszZR8DER4Wf4mukGgXNCUARQvw3NDYI8clN6T6tOQCGzIf8l/k6Cn0qTHhkEspry06fD6Ip5x7OHYJm27xyFQK06cC8sRcu9usc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763588514; c=relaxed/simple;
	bh=tZ5e7dw8wl+fia6NJfc95liGaNwKHbUBE+Pn6U7uq/Q=;
	h=To:Subject:From:Message-Id:Date; b=jABf5iaRiaAmNZ/SU73T+piOEYvnOZnojTVpJAwgPz30ne/KJrhtOvyrXsKkvt859q6nM1Yn5JXBW1q88w2Ym884O+ASCmiHGFS2WQMJNEo/QacSywn91sFDNePPWycucOPiCKuba7WeYrZE2oTbfA4wnHZI9e1RHolWL0VVFR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN0B5Eqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN0B5Eqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC714C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763588513;
	bh=tZ5e7dw8wl+fia6NJfc95liGaNwKHbUBE+Pn6U7uq/Q=;
	h=To:Subject:From:Date:From;
	b=ZN0B5Eqzj5b1BdsIXYIpcXid5u4NXXGtLSBI+TDeoGgH6+9mZcsROBKtzx35+E1Ej
	 MRJd2KZkLQOIY7UGOGPit5HARTjNHbAj5qfAhUt4B0oH2LOyY8f7GK4/KC/RpHTWf9
	 e+Zj5JV04s1ZMAsJhuWOLSPNlCPYrA3cP9iOPAD2t1UtRC3QkELhdeiOyH+e6jNK3k
	 NlLmg92pODnlgsKmhV8GiPT7f9+DVO1amaPkkGisV0I/Kk0lA487bbbB4AE02/qW3H
	 JAjQFfuCSvb34BQrpJ6Pt/SNhW1oQy8t8I6XTSuCUHSM9o2wFFlOQDOdRC+wCHbPzB
	 /01d/QHFwjWFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D2FCF58FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358851360.7413.12661760300629344020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac520cb66ef3abb535091758dd20f321a5f6fe22d8f1ca902baf8643991c554f
Date: Wed, 19 Nov 2025 21:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763588513
