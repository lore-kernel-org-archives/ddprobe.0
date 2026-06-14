Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5660325B088
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781419594; cv=none; b=p/BKUD52j/jCS35ZsMS763Wd2c6TTT5Vn3GeV1yLGCeyrbvuZsfik3ggSiumUu1gfQASG3LGbXMT/83j3SkKT9H/9vWrgi2o8UBShGKBKpLLeocw8RngPAP3NN6E0dhmInrYiArWz/ePX7GPoNrldWUUQWaWSBb4KpH5JViQAUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781419594; c=relaxed/simple;
	bh=jERe6qlvZ055TX7vNTvGB5Ut1xnL4o7Jmh1fY/YkixM=;
	h=To:Subject:From:Message-Id:Date; b=XBAMvVluQh7a+AgQaY4GsMbGGA5R16A6JU2/ZVK1Pm900FxhtgGVUdS9+G4JcvzCROc+q/eRsj8X4PbhSt9P5jZVFIutRKuh57gmp/T2CmiChBzsqLcQm0/WcZAaC98bi3R0shJ5W/OoePpFA1fQHa/vT10+EIoCI1y0b3g/mQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYzCHGMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYzCHGMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF892C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781419593;
	bh=jERe6qlvZ055TX7vNTvGB5Ut1xnL4o7Jmh1fY/YkixM=;
	h=To:Subject:From:Date:From;
	b=hYzCHGMvgjBRGg6W9IdE4oxJoz0TtQy9//aykqO25h8zYJncSMYE0RLQFuh3irM3e
	 L9zgE5Ohna+LkGLM8CzDSF4c8NKTxaI3CdUYKWOobQmM6/TOEfnGNoDgxFdCzW173I
	 gjP6hVsg+CG7TzRfuYGJa/4M3wx1tD+JUcv76kiGNeh1NL8u3NGW33p0CHIcz+mRP/
	 NK3Qg+vOWxVGSNWcPFJp6KnitlFZP1qxj/fpz9YKcugv9wsQCUynzOUwhHFXDwIITB
	 5Q/9QChk35MqTTOLnefzkfIYhPWg/dbqcBCPS1Czj4Mm+tPD1EH0WFYtDH2wvpFI9k
	 E6YTuDVk3NYmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE80CCD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141959369.8241.7020331197444597104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e949550ea811dc10e931eb308767c3cff963c786fcdc25c9834796f78897f4c
Date: Sun, 14 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781419593
