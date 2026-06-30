Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE9527144B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782789514; cv=none; b=Ik8lQ68UVzHFH8vNr4cuMVwK5tcxQ3H2utZY+ReM57X6s0fKlUOnNNoO6YwyLNCaDt1JdKYeeVvb6RpNy13nRfaDvT3pSMH1wAMqhb4P4MdvZFnyKRwAyFDusBmxLt361Mvsc5rxSvsT8rJ8YpKnOhlNXnRxk3n7EuQB1FYgPvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782789514; c=relaxed/simple;
	bh=UyjFMH96IXbcgiJncYdlzUh9CRhlKSWVYQg1x7YWZNM=;
	h=To:Subject:From:Message-Id:Date; b=n4vCD3DhAVC0LEtQwlDpZJCT0sNeOH+v5SZv5K0L0kKhmRpavIKBk1K+QtwnNWmh0aSPqacND1L2CVwcvGG60n8SqL2ZFAFwAqoXtkCO1Q/pYIWA2pfGe4EBSb3edvgAEoqn6wDyUPWqI3VyMEOczAanMkywkhbun8KITVcNNmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXG1zUYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXG1zUYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05CBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782789513;
	bh=UyjFMH96IXbcgiJncYdlzUh9CRhlKSWVYQg1x7YWZNM=;
	h=To:Subject:From:Date:From;
	b=bXG1zUYouyxxUQH/dXYQAVXXSaKCg3Yw15FNLPyzQBt5qmmGwZAELQWCnnp92+W5x
	 DDGicU0P2NTraw46Hm/crvcVNa9Keitb6mjNvnZlc9xkQQ57WSgP6R9TR/QbK/kwMc
	 SGn4PJKg2EJoBelbtotoQS/au1U7e9CLAZBbBfWfDXHdNlFkYoPNdT4+8k/41RqW/I
	 sa7fCYGN+ZvQRUtCv9xs7F0Z0y0IDbXhNgG8L/tw+6HnO7pozmHoOHRrzTyvKk6jzJ
	 +nJQlmno4dKez7wo0HE0YmOP6D2xr1HIirZWlwtAA3Gx1alcgYb1kpQp/HN3c+Edy/
	 3mz245yjZjBug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93CDC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278951368.31628.10278011721343136149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97d15de280c6743ec497cbe1fb35f5a1953d6b390bd81fe907aeeead834b830
Date: Tue, 30 Jun 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782789513
