Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4585354774
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786078236; cv=none; b=NlqxxDz/YZcTsIoFLRSZviJXYf4ll07QXgdRMC2bSxEc+EVElBmRBc0FARKCbPn90tOkONUnnQVJCA/WAxdFSq9MiEchvTVfSpthvlJcghrGu6yor2bBnhpjv3ZsVE79Y/FxjrRoOlht8tPv02IY5FkCfXIYdArOAPl+CkSPMsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786078236; c=relaxed/simple;
	bh=Ofll/850qbcR4dzf641ipWZ3qV96M87PIXaDCWTyjls=;
	h=To:Subject:From:Message-Id:Date; b=jt+o3RNErVw9LwlbF8SOupm0+4ySCddeAxtaxxYnq6sFsUv/Al19Myh3XFp2k9PCdQPfuDOHo3+ESJ23xTGVzM3s2CxpVt9QjYzGgvmCI0ThLbn2QAkSDh8958js13n0q/jg3b1RoSMsHRwv10Eza086bB6gbe3Iip3/QgzqpdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daDne0to; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daDne0to"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF190C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786078233;
	bh=Ofll/850qbcR4dzf641ipWZ3qV96M87PIXaDCWTyjls=;
	h=To:Subject:From:Date:From;
	b=daDne0tozyJ3VUp94gdByJj4JPkuSXXPEUUN/rSuBEjcvBHhv8KDhDXv8YcQYFus/
	 DdotxNx6I4mJpy8kjfLg+ubkRIe/cXxP3nVcvv8zHx3DyNOvgNcyAY+ie3iDjVCvFA
	 REUjf4k1TJS7jtMcPkTjyPWR2mLwCTXOYYo7sg1Y/D37oO2vMnMLVYug4Xq6ozxRs3
	 WjtA94wSHiFe0r4MrRUZabV7kBkybA0zWEs7JD+XI8UHcKkKxCHI9n0KbUkm4zrYYc
	 8ZJhKxsUIeT7oJQqmYTQiYDlx5c61IURYxya4D9JjnPUUczBeWh9p38GCwQMhrUB7l
	 DF1Hzkgh0LE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD20EC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607823369.30188.3012682921384685374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d6bece2f61bd769913f72803c9b5909a48c23cfca3f66bbb1f660a4b6af9e5
Date: Fri, 07 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786078233
