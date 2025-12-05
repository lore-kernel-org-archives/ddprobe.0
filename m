Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F388336EDD
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764957174; cv=none; b=CA0C2h1e7RQG8lIaBtBj4KQxy5aZ/7NOJcXceFJqVZyonMUNugkgnZo0z6UB/DIQmMKiNz+esOcFEzcIO26ryZLmLmbaGldnJKob31Hp6XZoKRDQSolLERR/t2IhgED5X3UbmQj2nDVlFgRbPMG5cHR0NRTkhccvKfGOxEJWGVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764957174; c=relaxed/simple;
	bh=/ABJUtg3xBNUPN/hEMztfT7EgOXkb4PaLZeL1l0j2Cc=;
	h=To:Subject:From:Message-Id:Date; b=gphkRSftBGcueUCZwI8MkQsuz0JBjKbHEs0jHT7VkXN3lQjLDGRdM9CapPcXjLfE6JMOnqI0tAY8YDg+sFxoQr83nqOHJ26xUNtG+rOKZLYaIpeQawaky1kV+l0+wFrZohUA+5h5NxaEY9ObMiY10Ao2FpLR3W8fi1IN+nRIJi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8/9XkLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8/9XkLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8CEC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764957173;
	bh=/ABJUtg3xBNUPN/hEMztfT7EgOXkb4PaLZeL1l0j2Cc=;
	h=To:Subject:From:Date:From;
	b=W8/9XkLHtF8A0ok2zX4cYVKwl/lptNP4hwafc49MZRIyED44RWkbWb8jz4Q0+MMdE
	 Qg0j821Xd0Ci1xzVwiY681cI3cG6oYKjlc/SITxqGkf1kqnzszQFpCXmU3g4mMjTz2
	 sKbU4lSzuzZH5zBnWVZNASi7ZYdSvJv05AT61FKgzXxPXITx1FYz/sYwq9kro1gSE4
	 x0SULwBPdgLQr5dkK4Bxoqayw/v58wvdpVicvmd6gXbORWFQ9hpA5+mp5VsNzCuSPv
	 dDA6VJaR5adlHGwvVkBLHS5Tc3gny/Sg15RvswIFrdGv8HQLgF6L4Y52pT5isudZzg
	 ahVhVijiZAf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A871FD339A6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495717367.5685.15936262190541125949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13cfde4721770708749e8bc37aeeb45a0c1c99010a8fda1926b31d87c5c1798e
Date: Fri, 05 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764957173
