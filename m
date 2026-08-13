Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446E93515EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786591234; cv=none; b=gNwGs+kK2dEEa/9i29LgvZBeTnrVIN6iycwreOrUpRUSIcXd8gR7aEipBOK+JnWyCxuimR7bqzZ7DIVlWUf3d5O61VqA4oLALvxODgea83hD3Y5/IhSLzhSn5OILmngPiezz5Xi3usVozJc7mJ3LrXe2eKnSaQlWI/2HBsefEfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786591234; c=relaxed/simple;
	bh=v/0jF9Hg/FQUh4xfbFhYeo3eJau013q6xCdGTRU/t+0=;
	h=To:Subject:From:Message-Id:Date; b=BOOH3QSyBItGeaSfe6qcvUjsbquWkrEonBSeS56KPFDPURM46f3d81W/bBGV/dkROnWlmu37jUjFsBCTzsjWYayfEg8Nu/Dp8B8BI5Nu8b1z6pZHmr0rYnadei+oJ9t6lMz/WBs56Xuoowqo0c9lx1iaXKk6BOTyMMYhAOE7Bwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cn3/nDd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cn3/nDd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4ACC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786591233;
	bh=v/0jF9Hg/FQUh4xfbFhYeo3eJau013q6xCdGTRU/t+0=;
	h=To:Subject:From:Date:From;
	b=cn3/nDd4ruKGt/bsRnnkyetQjhnVWVWKq+3QQ8EpY+nt4m+djaUmNVSVEOdLS2HOM
	 PCxUdTIqJOTz+MZCbT7Lun5MLL4tVq7UM+7QldIsGnb3twPhlrI0vjSqOP6PfxlRX2
	 CyezvxRBe7cA9XIfviJpn9WlWa48sJ/MXAaUwL0OX4KIo0daEDvIMM7wv5Wf2w6TTU
	 NO36Nd6bGJkW2ApuWNBMLAL+T+KkVKXH2nRc/pAUaXx8I/LpRbHYvlvSyAtPn9IjUo
	 BV8HjhDGwrBPZl/Hzb7gDDKB7jV3fZcYGo3fGrYi9TmX6CyzDMh78czJkMC3HYBh1J
	 6MQpyO8qS1juA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B20C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659123368.4249.9998310904494626409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c948b99bfc9080ae66e089e6b5a836a0b7efa394bfac875d217dd1f5cb45219
Date: Thu, 13 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786591233
