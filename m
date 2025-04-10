Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6A2204F81
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744267794; cv=none; b=cUh94/izhBD4/c8nS4lne8gQrlYC1bNL1JogxjBseH0wSAfLZ2dLmW9iFkyn1BhdgMZd3xOZZmQ5g87sY6oHD2W1CotD7cl3fjf38UBiUN2Me71pmRiY2Gp0oOoMkTrbI1IqQB4KJhTa8dW96l1/kXLi2IwWbA7eHS15xPvsHyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744267794; c=relaxed/simple;
	bh=MRFnmirq6YZKZLYyIFka8jsNHDCg0z8bp5zcMHdhUyk=;
	h=To:Subject:From:Message-Id:Date; b=YlcyHi5UTGRB1Ss9uUIs+m8USJJp497/7ebPRAz+2OzjCbL3TBQ4zXrPJYic4gSYPcV+Smps5JymS/WxePn815WlUvGFM+6HtLU+meS1O1UMpb2XPMzRma9tECwLwcHIbDjwlkEYcYHrU6ZQlPZtK8NXMNkP3ZBQxdDXHrDUnbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3PZXdkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3PZXdkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71F7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744267793;
	bh=MRFnmirq6YZKZLYyIFka8jsNHDCg0z8bp5zcMHdhUyk=;
	h=To:Subject:From:Date:From;
	b=S3PZXdkt1CQ/T6FkuLGDR+/n0UrpdFtmCk4yABUvZnYTaq8Nl0x9wj/hCpmP+0qS1
	 WqBboyvl16KxgrN/DwefD9WwscnrkD/RABi9b4aT0aLTkTS1ImfpPVmAhQCd4ykU3f
	 q73+YkNePiyr5Hw3wc+mg3WFIGy5PP9GkbryJSGLXn2KbVZutU3m86CgVK4vh5g/VJ
	 By7e6Vo9xObN3ArHKiPzIa2DiJzSp7NPuCuLrT7WSY5dDnf9898IuqM6NmaAGG9qsy
	 57aPJCpsY+e3CJcqDxGnr197jkMjIxIvqwSeJxHLUpkXWCmr7nbTY/xLI1zOvUFzNg
	 iAlJ/88qf2lUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620FC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426779360.17505.17854997077618612775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd62011c76a6ab8ddf591a9fca658b0e44f3be6e5046b75fdfa5f8b5e064db3
Date: Thu, 10 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744267793
