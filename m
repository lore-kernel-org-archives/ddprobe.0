Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427A53CAA55
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790713234; cv=none; b=CbX6AC7SW2q7URbGqz9LUA4xPQzvpkPMnMcpGeNUMqm7H09zZD1w1H9y+nWLnN506lh7N3619OrMII+EoNSQYL4LYFfvcQX2EicQfMlkvllSGqix0/1r/mY2oU/XDxIfhoTkls/GC98NlkCYe5P3TvZ6mMqk+2reufri6sndKBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790713234; c=relaxed/simple;
	bh=fN73zYbg60OCae993JMF1jcOkk1IEhs2unYu1Z15Uv4=;
	h=To:Subject:From:Message-Id:Date; b=nrgMy362Eo7xlqtu+YGnNRqAKG932aTMwUsLD+xjXxwg+walA+Za0kZ201nvqcnoUdAXfWz1UPpaWfLq1tVRnnjVKoOSNlocNo/A4lF7FtQXJbEPmOS783M1dahzOroUBbSGCzvJfBk2TanHXP1i/9U4yduTkZrIOL13Etx+AP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ee/sRMfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ee/sRMfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA8CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790713233;
	bh=fN73zYbg60OCae993JMF1jcOkk1IEhs2unYu1Z15Uv4=;
	h=To:Subject:From:Date:From;
	b=ee/sRMfVM4uaZQz1YU/4/Zgs2MEJUx8WCSmw0BXQoEuOB/mmVgjg7AWgtccvQg8k1
	 PjtwBeZsrO8APDa4Pout4UdxoAp2tGHdQtj/9kPCcV21izUypFiEzeam9YMWLpblOM
	 Onpc21befr9hl9NsGLUchAk6f3WANKBxU7noid/DrSI5rJb8nVDR9jto/cT7fdmQOM
	 sjuI3ragQwKV0DJ2ly1tKH5aIARNx8KDstzgfU1zSENwvarnwyFkBxFMRZEORRXhyQ
	 DYz4/jn7BzWajgyNYf2AK9wEX3h6cVTTPXIDvHQh/+hD3LQRCc++coWqJnvynzovPp
	 eqG+UfAUCYZGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C5CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071323368.28808.5789390566063243553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612d2ea1ca70762e300aff811cadaa24f5fc0ed5f412a619efb294d8926e5674
Date: Tue, 29 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790713233
