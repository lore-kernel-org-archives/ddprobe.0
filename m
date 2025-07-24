Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C283F2DCF50
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753366793; cv=none; b=pwXK3pnGRYaebMcmJ0B/7f7XPCXypwRubwQZAEHJ0HIarDBcIcrMCQwOwwjGkY3/0ubmI2n+BEfnwxC6KUpBXWKmrXtLGLeIr4PveWk0tR7HzEsj9ZZXiLckMtuQwHewqeGivz7Inx/L4e9KcZe3UlcGKzvFpBtUzrGULXTdMvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753366793; c=relaxed/simple;
	bh=djTxp88uVuja0Ejso1C+a8FsCxGMzudZOxu1pn1l5Jc=;
	h=To:Subject:From:Message-Id:Date; b=KAXMvsAvuOF8WLoToOkkzHgXINI/Vq2VK99MRPItI4N+L05qFv9jdM99Hwska4i80TxQjYkMDmkjaV7RO7AfTcBFxWOvUOYexbcwLiuGr46PT/YPxUhlgwYgsQNYbxZayQAGQg7/mGurjN3wsOpMlmpxF68MUjBUKYOiSESVisA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ts70eQEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ts70eQEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F034C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753366793;
	bh=djTxp88uVuja0Ejso1C+a8FsCxGMzudZOxu1pn1l5Jc=;
	h=To:Subject:From:Date:From;
	b=ts70eQEzEnp4IGl7kKUxjeSFl+FR/0oHI9DyiHaS+wIqk0TiYn2v7hEEueKaI+o1+
	 587wPU1bNjllH1WHO7vegTSWh2adiRWuMy9e4R/JFJ9Y4OjCX75yVRQw+rYp1vd6r0
	 pXIocvER9/BRf985yD/E4QXKav4PPfb187xPcKdPMB9Sya28xj6EUnJXKh1GGCvYvZ
	 HiPuRXNQGetPN7e8ciYh9Bx//NN1KedX+NLkjhR2hMeP2gr3plCVRKpIp1uFqN7ikA
	 OJLROXlLFsuvLoNo+Q6tgsn19yErZzKilWQ4CCKVes/OSW1pkA8BwcOlFn4nzq2/T2
	 19Lc70PBsosAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB43C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336679357.10668.18420368710654245582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7df9d45307b622e053a922fe0540fa701cdd657d2d26a9cec09289d426f8f4
Date: Thu, 24 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753366793
