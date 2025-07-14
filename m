Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3363A190676
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752529796; cv=none; b=M7iILQX6h508ibla6y2q8MPjxSTdzTUaggwMGvFTpcYsja2aa8femRdR7oioBtVhO9Due+tbWJZA4yepdSnjSJigi6YvbK/LIESNXnjqpo9rODzWg2oCjtWNYO2nYQH8BjVcmae7rNzqmoemQHC3Bg8lJTE/uSHbX571RTusbu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752529796; c=relaxed/simple;
	bh=nT+ZguLjn9t/3k0e120nbTFVxBFEoUWTwBGhqkYKU7k=;
	h=To:Subject:From:Message-Id:Date; b=si9qJcLYumC7wKrduNjbl6av59BJTTxwC19SSxc7BvFfyLSHmMP05/5S4WdlpSZIrUhseFt62IQCC9XFhI4nWKFzYnE2gFbd9F2Z4R7dfGNY4yLNzUfkMjE+QxooB+hVZq/f2AtGWcnHNCfHFJPQXFb9cc/lX/AMgGcatsZqhrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs4VmOyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs4VmOyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A149EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752529793;
	bh=nT+ZguLjn9t/3k0e120nbTFVxBFEoUWTwBGhqkYKU7k=;
	h=To:Subject:From:Date:From;
	b=Cs4VmOyI11CLBTi/LzLho/dF3nrcq0CaoGpc74Hbc4qweX7yiKa8inZ3OoE43Cv/a
	 70rirfXzenzL+6rLUVGvoSMyhrfslSAfee4uYIdmrj8mRyvxzddRIbMWcjcCeY7jbr
	 i6zuoDRRPpNrjcawrp4ENVHEU0AgbGT87YfOENw5TjQzmTtxjYAOrnObC0OPCtDuM0
	 fs+MAHUalHJ7kYvPxmgoaASlJO1/KI6E4JPWI0JjxW3IKvApIue0h5K7wQ1PRf1Bkv
	 KO4JZxoRRdzX5GxoVkKLJP7IEByT2jLGWgC2UvjKUVHGMybEQBCWUX4QC/fIaT2VYC
	 HeyEo/5oOPMgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF53C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252979357.19602.5570128811059076841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7686b212fc37f39ac89e30e5b458edc3a4f3504adce1d3bffce366f80c393d
Date: Mon, 14 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752529793
