Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C0A30EF9B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769782434; cv=none; b=b3ovWmSg/VDo0RWs/noIzOe46BD950lguQxashuMFflLcJCdHB4vxm1vSVbiqrgKAUf0cPt2JzQgryosXN56vNhKWbprlZy6ULOJLjb6fk4JyaXuXo2n5A7rAulGftnY23p2f4l5LqsZ6EKEj1wf9XYeXP/NX88JB1jQUaoAlVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769782434; c=relaxed/simple;
	bh=tAIL9pL+869HvjHVB99Md9KPanrV8AXLzaoX1nfRqS0=;
	h=To:Subject:From:Message-Id:Date; b=BHHHht6AEtRotAGnCEAgZSLIPD0TEzrOee7GdAfRoBTLnquH+/OOie9GsKRrfD83KEIAz7NZgDcTR72rXEaKC4fJGTso/zoiTaX7LjHtosolRoTS8nkiRSRHUb7LiaQnmeZktax8wX8z1DRR8YGaPZZR/U+5AMwJWbmXjyUZ2aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBRItold; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBRItold"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04E6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769782433;
	bh=tAIL9pL+869HvjHVB99Md9KPanrV8AXLzaoX1nfRqS0=;
	h=To:Subject:From:Date:From;
	b=QBRItoldB9hf3NvErPmAkGAZIX+2n4JnJ6l/5STre4kd3TgbL7sAwW/U1lo/20qDV
	 +Ar6yrGAHtcA8MTy5Dg0Nb4tuLgQCCu02eIsSUUFf/O2HmvHrVWiMM68fmgcW1DnGC
	 siBqHjTELR8lwci2wiwa17mEIt44W2pZ+C2fWJjTLcl60kJILCWeiP84qi4agI+Lx6
	 yaIwxNguOYwqvUVw4Syql5LRHXe7YMEk2fK5+nI7nftFVMiaow0qkHrlTewDnAHjs1
	 uDm2DVcHIqOJB9uTxmVpUcVbvuYSISNAfL0K8u+4WwCWUo5m02sWfMrU2JB/Mksf1p
	 Qtsk9ME3+D0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9258AE6BF16
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978243357.15635.17295648574121104536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaea93ee6c5855dda2790a979a366975b2abb37659c3db84c901923de6163913
Date: Fri, 30 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769782433
