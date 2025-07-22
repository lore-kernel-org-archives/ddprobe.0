Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B91C2E406
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753195794; cv=none; b=GY7inD479xWjSBeO2IS+PCQ7C3sfkNJjXP/ndv2rKY3BHaFHMLWidEGrZGf19tDSwh9vTRFYZCKfhRE88HiBbOvT9mxkVRJ4/vsnfp+xIkpvMq/ahoybyu5kzBu6+mmpzb1K2McdynqSzgqHB9ln3VIj99nZiohYYqKUMK9X8Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753195794; c=relaxed/simple;
	bh=K+1SLIdc62m+CyMKJnmw3Byldq20yMEpSMTsuljCq3k=;
	h=To:Subject:From:Message-Id:Date; b=lSQfJTiOKnO5Y7fT5KemLwpVfx0ngv6yAdVQ0IIFnz8ufTEhSKztuS3pNcjU6NR4riYBp4XJ1ey1sVpetZyzcsgAshmA8K9TfhklffMbZXY+Dx3Y4p4L8zZO6/jbIsItzZ/Ez7Kr+r2hJkdyCKDHG7qAG+JmJc09NjeKRHZ3RJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGNulAuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGNulAuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7705C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753195793;
	bh=K+1SLIdc62m+CyMKJnmw3Byldq20yMEpSMTsuljCq3k=;
	h=To:Subject:From:Date:From;
	b=EGNulAuAEOeoA1gZPyuEH822Tys8eUo8g/su4FASntzBAJZ1OOueF7cVK+U5pmNgk
	 JeQ9FJuP8lthCvyPBuyZzjmBpWmi9g0ulW+P9msgTSUdsn5Qu9ufdin7P0C6ifgeHQ
	 n7BaNEa4se2agNK6tuU+5PgprC0f38B7fz91+FKVCJROPwzdf70Qe4KvML+hJjDTcv
	 sMFT2E4U9kDnxeC8Ea7weqmyfd+7vzG+4OasYiXEwaq7ypZqb6YYff+M1CgGuntIUZ
	 coDgS4UlTy5LT+5OFVa0M89Cmx5rQDCSenMFe5ugJ1r81OtoCe/OSX8GZuN9y4EwWv
	 YBddX+bcSv7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCAC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319579360.12551.11575020464603284588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70600b035c63b47afe314d65db095e7737bdc51b6f92203c822286971ec0801d
Date: Tue, 22 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753195793
