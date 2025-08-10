Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B1423A6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754795994; cv=none; b=sbYCAKqInluxrJX7nY1Pkh/YVHEvi2msQBAsLoEDXpZ+aBtf83XZgfmzpn+VDB2K6cQb/nofaiEee9f6m2U9tFo0SY/aVhqweZwbdx1BxBOnxym63O7kF4C3RdKARMok8SRO8rsaZQXGX1UHAhRKX2aKcF/+vff866BD20klpGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754795994; c=relaxed/simple;
	bh=h8MtrpGWdDswP6KHHK6j203TDbPZysPn95g3iLLCQ9Y=;
	h=To:Subject:From:Message-Id:Date; b=OC8WBljr087iIICuNmgZyl1gJkI9aAyban3gut96vxkSEm9YQuNrhiZb1uhKpUofbAtCAZOg9vHX3TM4zwIxOTEhyXqtgcvLWp+teXbpvlX92zPTR7pYMpwQhHpLQlxHqCtJ/SaGQCJ/fpwieuoC1ERIvR5VxE2URiMYWZ6djLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Efe3E4A3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Efe3E4A3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47D8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754795993;
	bh=h8MtrpGWdDswP6KHHK6j203TDbPZysPn95g3iLLCQ9Y=;
	h=To:Subject:From:Date:From;
	b=Efe3E4A3ihHGvFPtgCAadxodz01Nv71TFYX7bTRGKJpOtar2Q39PtG6ooFx83vu7s
	 yGoZvbiIgUtVzLNU6cJCChCyfsSuTQhnSy9JDFT3BECdOP7s4eQsKQR3IqLBmWg5aZ
	 Gf3mUEUGFOD2YPBZcJ84eVzY9xtQ+mxPk4nk08TJuqBEXQ0O0Pvidhu7rInEjSjSSm
	 Wo8CUf2GbywdrgJ3L1ROvzVXFCzCeXMxmq2coVQMukh5oAwwJeUNjy7pjYaIV/rTWX
	 /hXlRtW5uy0MIv7XR6y+NSIeXxcov53/YGCmiJi2FkpsgghsXzLbFn86yVaN2V1/E4
	 2Sl6742ZZNyLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F02C87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479599357.28990.14401113550734020702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c0228a5a298e772bdcb7100d92b5a008cc03f908891b0cac5c964b34bcfbc4
Date: Sun, 10 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754795993
