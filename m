Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EEB1F03D7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770344034; cv=none; b=htElnFKgb7oj/LjYoOmpTXfdywsSw03ocB4YV3gv25lGRma9mOFVtjrER+jlLT4C83/ENQhlxjG34FE0KU+pg1tJNWZOCQ9eeJcfsXqJiFAotyMlY86qxI1oWOPRGh7jQfnLjNhh0P1zOvFdUApf5dBiPHoQ56PLXh7/CRZHC/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770344034; c=relaxed/simple;
	bh=kgQM6hV/thCEhjo48zGmGIUc1qdY+4icfpVEHtFxMgs=;
	h=To:Subject:From:Message-Id:Date; b=cSL2qyA1q2G+E3fADTAc07Jz3gWHiE4Kodo84f1uiyMGRYcNnkmEWeN/VPYRlXmPcG/trETxKX/HgpQ69QYbbtjQXZ04x2JQc8ottEswi/p3/1FNgO6B6Lf0ZP+h+e8TJ38oUR8KX4Kcg8nxzLqTRPkLRH1MID3C03uBZvq6FMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZ1PPW60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZ1PPW60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6DAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770344033;
	bh=kgQM6hV/thCEhjo48zGmGIUc1qdY+4icfpVEHtFxMgs=;
	h=To:Subject:From:Date:From;
	b=kZ1PPW60chHHMPzlXMtNd3x5W/Sv3ww+M1SbXROyrARqEfhR5+T92rb0AxE/jhmCS
	 YrMR+064U8nI76+xitjqu20/jtM0meYsKosOBukohANuUfmAEkhb8j78l2S7MY+zD1
	 aPgpwyySzfPtG8ja7g8uNST6HRIzRg821hwKtG4d73PZqEsPQCXv9I2zr0/2kVkvCw
	 8VpO1SCH3fJAZ/Vpgc2fKY1vzpK3VzW3Ge3wOUB/fFy1HTa4o66namSvjG5Ryeqe+K
	 +2LlxAqO04XReBMXoFI/nzkiTDpiRxt47X6M1CkJiCNMCPUL1XTUMKTJhCJeDKsdT+
	 shyMG7RDPyflQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F7CECD9BB
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034403364.26752.197158407520452239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fc891c57f85574961782b06e2b6bf04725c7c571ffa736e948e79b5f935c95
Date: Fri, 06 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770344033
