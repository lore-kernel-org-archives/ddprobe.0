Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205F12737F4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767814434; cv=none; b=Zu/0x42fyHTMV0EiPPZ9a9GvmeneiZX2ZnBPaWaiudDN6DrWJoBtXvln3kIW0sMLEsjCZS7uYFrHhZHzJFNV9tFAD8bC6SAQBkZgRAVVVy4hGxNCxA0WGCAjgVQWsN9qOLDeWKKAO9BxpFtYwMR1qsbIKgpR8E/iz4KOHryxdtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767814434; c=relaxed/simple;
	bh=GQ+NunX3nR1GmdmXpOswYxChiJ0BmBSAyTkz0m28Jtk=;
	h=To:Subject:From:Message-Id:Date; b=Eur97G+371A8As0tDlFBuHXX0kZAQyxyV3biv6bVpalTnqB077+MNhY8YHItdOin23kFI3daIA2t8OQQy7uS9CmtnAK9voAVD+6eQMbvpIZJXxHTEy5Py+fYPxVPYsBLaC7il+MrCCmjigSIOGSNsUQ3RV9i4tKJVISxL8/eVtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTiJBJ3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTiJBJ3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55D4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767814433;
	bh=GQ+NunX3nR1GmdmXpOswYxChiJ0BmBSAyTkz0m28Jtk=;
	h=To:Subject:From:Date:From;
	b=fTiJBJ3hwSJeenVZo+kVmJJv3twtHvG2Lhbq57R8xc+iQCTvUJ4OQo8CLpvAwRYVj
	 HhmRme4SZk3iQiDSSdOox1YLFwhPfFa8E2BiabCM581yqbKeMHqwktiZg9upYCtAL6
	 mAE3Jju2M/YKylgCeQDsMUNaf04ch8rCJeFBeNqV9Fn+S4lphH+TbPMjXfAkJ+GT4o
	 PG1CRunxRSpQZjUUHZIHe3BxPtS0hal/aF0pMsv5jmkuOK5JQqibnoWRK+C+zBKr8I
	 CogrnIqNm2HhCXlcpH+BrypiGPynCuyLtWl/L8hb8ReTpNfrHqa48Xd/5JF+viA+Vu
	 TH263JSvrGCPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FB9D0D167
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781443357.501.15696517720419277177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf96b6f4b990aa49a04d1ea1fc9ea4e7258edd34635c8233c2cfa4ff98ecda0
Date: Wed, 07 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767814433
