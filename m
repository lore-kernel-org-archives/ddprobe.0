Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466AC3B3BF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788899434; cv=none; b=Mempx85eoSDENEWWCizICWPOMDzrUQsMXEvrwMPRBlvBPoyXLC2FiE+TPkBb9NloMa/yWXIIcAlPjnZvzwtuUaIT1THlYu0iiZCgk6hpMQq82bU9CNRU7BNfhGpyoHrzWZX+brXH3vTB+xNHQTg/IYsIOqpYmJAqQoAx4voXE3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788899434; c=relaxed/simple;
	bh=4va2bla6t/yTXFCsbg7EcG3BW+WF6EsLL6sRz7P2mjc=;
	h=To:Subject:From:Message-Id:Date; b=jsrLnsxp/p9CGU1HaJgGnLpNTvi7fHULvYQv6o1bTiToG2gvBLTFg6YNCqw6Hn7K7ga+r9tK8mSj7N0k2VZzUwhkhFuA+YoJqCOs6Nh6Mw6p7Q7aFr2UDVz3/P3C78OZVQrsABKnVNS2QzHFwMcSsLn5OsU9HRmeqpCel4+nw7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju6cQP+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju6cQP+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15E5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788899433;
	bh=4va2bla6t/yTXFCsbg7EcG3BW+WF6EsLL6sRz7P2mjc=;
	h=To:Subject:From:Date:From;
	b=ju6cQP+R6eTImHAcTiUznbqQ1zZ7u1McbljNCzgYnIRcoCGrhj+NWYClVN0asd3Xl
	 jnKsCMqVM6aZQncxQv43vMVclWg7E1X8cJ8QuA3tBDGIaI396cDJJJH73pDhxkUvmR
	 DNMb+HTIu08GM/jrhllN4NmNSc73FM/yVg/5GIgR/fp2/iKqTb0q1hJCP+6ypz0dbx
	 PXDKoRX6VeE9XbYpuPV1xOMoN9OKp2KoJJHQk8U7USP4lPi/yGQftHc2PhpKv+omuZ
	 HWwyGDeXChSAMM5lit74AGdlTvHuMnSzTzIPdyu6MaixjkDRc4jTqx2L3wf1/gKMiC
	 ewIiz99zEmJ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9BBC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889943370.23501.7561841345969394466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d28b340e010fa043a5fe79dd82dc083b3767a38fa9da947b92bb337100e589
Date: Tue, 08 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788899433
