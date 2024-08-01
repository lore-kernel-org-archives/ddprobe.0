Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A845DF49
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722548754; cv=none; b=G8lBeGhY0MKqlQznolGSjzByJnA7ilYksPwQ9dziVUHpRmF/bszZG9TKgT5yeytwnWpVwjeFmejVkZzx/qPKAgs5YMg7dRuBFGrsj1INdt6gZI3oLmXEkM6su95ppdvCO81VJgRoMyBe7UAvMrnXJyGIs/a39KZUxF3YqKYY/9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722548754; c=relaxed/simple;
	bh=UU1fgAun5sh1nZJD5xPlLdIOZHkiq0wo1OkF/9lN0TQ=;
	h=To:Subject:From:Message-Id:Date; b=ej7XkkIXwSf3Y6MgWf651gS6nrzp6j5G8gFfUasYVqSmKZrVszx2xkRWjlAGtXgFixoblibsrXDpr4ZW8Qx3E1A/I3BVfq90TsnG1DZtSh7SzkzcWnJ2x9TwB0V8s3l4N06OHKf4cWNeEsiLkclW1m83UTUn2c5hS4m6Hu88w6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiaRI4Rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiaRI4Rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F4AC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722548753;
	bh=UU1fgAun5sh1nZJD5xPlLdIOZHkiq0wo1OkF/9lN0TQ=;
	h=To:Subject:From:Date:From;
	b=OiaRI4Rk/8GPoJ6eGt1gX4gyH0d7E/N50OSOSDN/bXmyu8t/lTeDVliT5vlAt1lKc
	 s0g6RTp9SAd27Nmj8lmXu3SfR2lyMcTVMoAHQmiq/8y7qk03Z6NvW/WQ7WurKXQM6j
	 syh3Cin1BuyXC7mTO8jDlhq2yxsP0z4OoNurBEZ5tHER0tkKsQhoxzhdcXpiX4WTx4
	 H0/qiUaeFv2/NsgehSvrCCmOjPHQf8zxEfBgappiRImbBa6yhTc0cqF1s+U2PHKcf6
	 IiNutQDaGduKXpHQkfxYq/SfRdkyahdtIYDrKVfpT9CvZU6KdTSl2R/la9xvoGLUAJ
	 vYwGvFvUKm5xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E578C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172254875364.19903.11023185535113492351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc11aaddcb68cbed1ff24913f449b98f63f2a0bfd8f32481f7464668fd8a5670
Date: Thu, 01 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722548753
