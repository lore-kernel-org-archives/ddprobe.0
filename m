Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F09283137
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746541794; cv=none; b=Ohr/w1R6QNWcrrywszAAqFN6I47tcKKznjUXyJf7YGUe9oxe0wKDIJ98u2xote1XSNy/XOl7uSmRJpK2pgbKgqHuhymcgqgpNS1Rl2owtr4D7xH0FJlLbJV5kOGS+BqlbSjg6p/we4r2SSaKBsPXsxeZ2kFlnhyvOcMvQ+UOEpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746541794; c=relaxed/simple;
	bh=PwOy8I0BNCQTRdwtk7ap69wABobbke7VMj4jedImp1o=;
	h=To:Subject:From:Message-Id:Date; b=LscPsrvzyzc9lEpOYLeZPnMQQJENs5KF/4v+D0xW+z/gSoGbvEwCIS+3/TEddMPcCGs+aoezCzLULsjpNBOWT2tKFMHY4CUzZS7VZglM2d0tjE+xgeMiSURgBlGaq6wAi9Zwk4/ZMCJc3RrkW3DYdb5Ce02WsmQ2r1QcrCiLP+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JspSFs5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JspSFs5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B276C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746541793;
	bh=PwOy8I0BNCQTRdwtk7ap69wABobbke7VMj4jedImp1o=;
	h=To:Subject:From:Date:From;
	b=JspSFs5amj4qAiCH2SDZHNJnbyMH2Chcyza7rQeog/QHB1/lVE1MBJPhyl8jhBl2A
	 8nuEYtlUG+GW2tgBmn9GLRct/OQjKMs+2oSHFLFujtR3hO7mqhYLlUoB/Te2LY937J
	 f8dShBzRhtVqwGZt/kcsQqDWrTs0OPR0ZF1UbLLJQ9GzUJ763HFUUHFuHSHeEcK6YF
	 WD4S8nPw7M87X5hYR1wLONTz9vxFXLHPGzhmHwb8ftEjglD/yKGmafxAA49ml+W1Lq
	 IRuwWQhdNVrDnfdnUnYc0BtdsUyOIU50B+lFicqrzF3PzNWhT0PkVxdfiuXKJ3bRc+
	 yWCFKh13pedDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0BEC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654179357.15394.2337042217458814702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144527450e515b53a09545910d83c5627dec3cd0b5fa704ae4ffdf8183542d66
Date: Tue, 06 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746541793
