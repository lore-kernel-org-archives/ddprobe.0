Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EDB22CBCD
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733814354; cv=none; b=lkRbG18m8hisA1upzxEO5NKgZ9NRJklHnjM4zr/ojDmLOdcZOKyspAgbePE7YyJzODfBdU1XD/f0z5kInwD5V9AdRdnSKa5pTrjizjagEtNiXo2bBqUrU7xj9H6pUV9LvQkSUTP915KzBF2pznT5ssI/WycosS24V6whMjHwy/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733814354; c=relaxed/simple;
	bh=SO6zZGGznoPBnNutS5bODNd3Ladb0F1VcxHds2CRtIs=;
	h=To:Subject:From:Message-Id:Date; b=eFpX/VuIMV88TfgqIeJNXOK6WwCAyUSky4x4kutMJUR77gxn/1uRC3A6jBYZVGOXS08g7Zt18OZuxihbC3c8t1h8q0uh+U7rbmrOzedPTK/uTplNfClYXB2DFwERQFCuuKFQyzlYy6mw5D+uiwfMGZqHZoe9IBNcEpvRGIA4J2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhii+2bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhii+2bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8421C4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733814353;
	bh=SO6zZGGznoPBnNutS5bODNd3Ladb0F1VcxHds2CRtIs=;
	h=To:Subject:From:Date:From;
	b=nhii+2bv49dEVJSgdQ4mr6whfeO6KZwHkOR+b3dTUCfa5YIY92whbMkIcjpTlz+gQ
	 A6yF7tywGAkALTyUFlyEUgTaVksxPir0Qq658OJOh6dKk15COuJjvlc3woU1sFWL3R
	 gBjlfALLLmJkNNjMyEeRn+Fd35ldY/YFgWWqwbSik3Rh3vyZgcTz/TtwYkIK7/QqoN
	 aT69lQ4CgiABgHeAP+6u075dlHRHkSSnyLgZT764JxDHDz0incF55I8B72KTNntsFG
	 jgt0XudHlFWZyCtedY8CrcPbQt4a36TLfznBDXxQPQQj7QOYCKw8tMgxYSJaj6O3pR
	 yCZMQVd/SA3jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D2E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173381435358.15486.14271567196703283845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1faabe31f7e89178f481851ee2b9a87f8d4e2a6c6758003be4b0ee977187def5
Date: Tue, 10 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733814353
