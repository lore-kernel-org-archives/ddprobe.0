Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA301F3B85
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744409994; cv=none; b=BxNo9L2++ArrfxFXC1QJ5e2Nak9vbDOP2EBBrvGn58lSeKnDpryfGtVz4pZTgzrAwbFiTKd3YgCdpI5849sU/z3ON2PrDPUVv32JSI08Bw69uvb5rv/xiFI7JXm8vuulzPTMslmqHRVycFs1mV2tegTaIWJREHATLn9U+nwHxnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744409994; c=relaxed/simple;
	bh=sRkL98t2IbJipB4tQ+a+RmcRxHT2BGre2Q47YsRuZC4=;
	h=To:Subject:From:Message-Id:Date; b=LcMBzLy+bm6C4Cr0DeYR5UjKU/Gohb0w/f4OZuippWxKpfhdP9y3+cGQ9WKBi9GvyzCZ0dulG506fxCBIOa0mAP1WfXnrveXMdXaWa7wWWNvQPiqwvgxNM4IYY7xzJlHWHUFjoz0eTG4XT2MndO+iNJG2ny0Hjmp5pVJsldjGhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJo39clY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJo39clY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A8EC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744409993;
	bh=sRkL98t2IbJipB4tQ+a+RmcRxHT2BGre2Q47YsRuZC4=;
	h=To:Subject:From:Date:From;
	b=RJo39clYPzr1x62ojSjLfzvDM5eyODiJJk95rq8JgMRn0TrZaTfRQW3UxTgxaIV6A
	 Gq5OHCYsujwL8NuNxTrRIQ5Me0rF7Ubyuur5K3mpH81ppZOwT2YvsDFJHCBcOVdUVQ
	 pZqVthPU7ATR81JeE8hH+g/KWC12GBfUgtZabVFe953oC+tFTJNkdHWOIe0gD+FcWr
	 huOViiuf1f+LIBB4rPxswyKZ9wmuxFNPu0EFmpJnbl7wvL19sXcbsR5+8ruXWWtQsA
	 EfrLjQ4ghNXSY4Djclx57QwACjDhFIT66KIdZxCy3jUflhsC+UF0Ae5GdflEHcL5cm
	 XYRHid2I331kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3DC369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440999358.556.12680419064507597860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c549e7456353ab12aa6ba85b347b19e8b1939973e25fffdd20bccf85d45a43a
Date: Fri, 11 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744409993
