Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD7A4502F
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788035434; cv=none; b=pL0ut1B75FDcLSbLxjaeSc7LcteH7pokQnVqUyE+wmHXhDs8Kcme+ZmIzcX0k+dyjZMsxylg9QA/szNzy8b6PszXhMxNvEF4lgYcbxqncDJMcSXxjpPc0zSPXkaHMdr8HOjfv85PxjyyrMQgMKQ40S3scusVplc2lPUdZTDsbcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788035434; c=relaxed/simple;
	bh=v4bhTTw7CKjGyoTA4nJUOs4RZu5TNRTRzHiSiSIQcA0=;
	h=To:Subject:From:Message-Id:Date; b=V9zJ4cpHxdASCIbcqEy5hpKfoOMTOQINsSiAlKJG5pTuKPHUnUlgqIyTBdq9zHD1dE0YiWBrZkZZctZhoQfY9vQZHf9L0ziAHxWlemFgzOlQ8XyR86HyO/3Rp8HdimPjCrv0lJo2i+ZTsWd5/kw5KF7RM2OTOwasPtMdzLUZSSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPLNpMqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPLNpMqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D489DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788035433;
	bh=v4bhTTw7CKjGyoTA4nJUOs4RZu5TNRTRzHiSiSIQcA0=;
	h=To:Subject:From:Date:From;
	b=HPLNpMqGw404IqmmmEvpQ3yL96yBAe6hGBFP/Os1aD37J7YxytNZ718gkrj+TnoDc
	 txvxE7tRvEg6u7j1VzJvIrVfqFKPTso4c9gfZCKaLidhCw6AQFmRHDON+F0Omi+p1b
	 2AZ0KGkpMbTMG95EzZrKTSeb9N9VW4o7jZIe3c70EtWI38mNDJ1Ahk7UjV2xJ+41Xc
	 XlhdQYon+Vl5zCBK9PS49w7uBBsn79y7viTWAbJGTskTxW9gErDyacubARTFULHF6P
	 3mvsA7+t7MsUt697jolSk1Xdx3WClHSA89jZ9tXr0SG07vmfZW9Ii8gbe8wZcALKHh
	 km/egQnrZtH6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F7CC61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803543368.1263.17637732889802856615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b3c5bbd77b391f7760a4e4f41344e72d11569a50b13aa53285fcadbb248245
Date: Sat, 29 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788035433
