Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250461B043F
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756604394; cv=none; b=EmD+bXNFpPIq4WbCYdkfVsO10oC6BYjNld8bSHdAAIMHAOvNqvvVMHAzceEJ5WdLd2USTM7nVgiUccmXnS3lce0yWDU9/l4lWIx2q4xBGVjHdIS/P87PZVOD7slBGqViMJOJEoUyVQs5h7/qRmks1ZZHGNntivlnv5HDPZ9CrOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756604394; c=relaxed/simple;
	bh=YfVL4HI21bxi+saBT+E7WeOpfOhvzqR+5jCuRxU6zcA=;
	h=To:Subject:From:Message-Id:Date; b=BVHpLgpfYMysM+zdLHgd+JGztCmI8PqNFw5r/NKfUm5zukC6NHxaoCRDP4lOlMdEv0wAr5Uyc0hllOZZY7qcHcPRb0f0uWysu4RctZI+6Nyeg3q5hIhLaBfDjC4SsVfEROiBjFKZ4IKMqBRY0CAzCRDVr9Eb9kX76vstwCU7aeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttYkOyv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttYkOyv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08F1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756604393;
	bh=YfVL4HI21bxi+saBT+E7WeOpfOhvzqR+5jCuRxU6zcA=;
	h=To:Subject:From:Date:From;
	b=ttYkOyv7uLHWoU4ULfmVx/hEomfMLkPmCnAdiE32QU+IDbINV1OAjyjU5lr+5MSPc
	 r5BJTBUfltRsMyDcJG72MhpDK/LaVW8NfLf2bdC06fTnLbLTM+bHW/wWQTJyddJm1W
	 cu1GJ++KJ0Xcy13pe6wtVmMmYFyfYijwIT5Embv7q5PX86fiX1lJKG3FzABl5tL+Cp
	 iAbt1YHvE3wJ8JnkyTjBnQoY13BIbK3QRk5SjIRoDec619/+YG7hdtWnQmIMQ1dxwq
	 HlwXDzCxk34nJeOPLCM5XFteFH0xxRwj8art7j88Z5t8c48qp0Bsts5uxiQyR3rYUh
	 2MLcElhuC4BlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CECA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660439357.1205.14201683992995279114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59678b220e684f8d7b74b91cfa8c1c85416e58cba5f5aba8ba994bb4de3d9265
Date: Sun, 31 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756604393
