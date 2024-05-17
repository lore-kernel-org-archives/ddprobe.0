Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB06DDD2
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715971343; cv=none; b=H5qMfrHRmI4EleJNGRkSNSlbpxPr7pC58f3m42WiMItwzyQTrYbe9+iS/IvrKuFViz0tpuBwJPyJhJkP3f0pDROPhy4Pj9/WPUfdGiGmYpifzRkLKMo4engkcc2F8EfU9x6s4pD+ryoTpEvrqrIKxb0nF96/Xq9ZCmS99sNwKRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715971343; c=relaxed/simple;
	bh=SsgMnKQE4KJ8nCp4Sd2L0MxPjfrcn9shvMcJnRGe6mM=;
	h=To:Subject:From:Message-Id:Date; b=kiQUDTzW/TBTtbnziuNlyqf4/Wx6xvGh9w7NCil1Gy3vDx2HpdiS7SxXzLqwU/8u13TJdcr2zhzg/gWlIPwCb82M8lJwxYrKtSsL2lfAb1iMBwyAKfrl66lTMIcTskdA4l//EB3OB7ZmUFqAGskDnsMliVirlNu3LAxJEHeLzVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggmn6KiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggmn6KiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A57C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715971342;
	bh=SsgMnKQE4KJ8nCp4Sd2L0MxPjfrcn9shvMcJnRGe6mM=;
	h=To:Subject:From:Date:From;
	b=ggmn6KiZS2el6HAHt2/cs9N27S1gRzIGZNA8VlqkTeKGJT+RTEkLjVdsliSSGR364
	 KrMwwDJBVJ3QhXEqyLhtF2E/x/DC/dhq2J5KVRmZP6MxD6PBNIIjhebJoZ73Ehv84O
	 iTlONlHwd7fma0LRg8vF7yRkGSc3CBzAHgh9lX79Mwy4scsF6wIETVGQHN0Q59TCFh
	 dU9JMUyP0sJX1qcX6hvOTa2dWkTsuNpC5jV34VP5cWVsrwIr1a8WYl6DznIhs54H5G
	 Vu7yfxSymT037cZUhrJJccJ605aOJnPtiaPzGytBoV4lNVNNK1I/1e6Q7wovbkJx38
	 mCn7yBkBE7q3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFADEC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171597134281.8871.12055047247010945594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04f1f4a027628095b2d355c775fc7d14f767fcf41739ac4595df8923f3c3d6f
Date: Fri, 17 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715971342
