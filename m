Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C09C412C15
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786573234; cv=none; b=pGD2+70U0fl5S/woIIlUFSmoWJrwzE0yHuX7pGg6uYxET8H7GoT9YSR21XulhSAfCVB99JlbDQK8l85FQl7Nqp93puuY5Pw6gwtmon2MhBvbsW20+yeEZfpqZN+QGKXkEd7zHRjERrCkn8/OAqiD++uOL2qmHcbFPL696CLQmf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786573234; c=relaxed/simple;
	bh=9SVHy4ItzNchqHBx9pazd9m84HzVVkDMjaDlbiUrZH4=;
	h=To:Subject:From:Message-Id:Date; b=VxPqVeFBr0wa+u9OCBdIxA6wkzAu+KsMQdxp9mXyY/LT3/SRSqJE+SLQd3ynCMRjOml0dPq2dA/I3Yk8dKItBMWoX3P9F+rmhsBPGzuHmOKtKV9fL77Ced8rGAAH8mrp8QFdboOh/FaPeWUoI0hwfJSU6y6DulAW3JSmvpeZtsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3b2WWT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3b2WWT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0410C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786573233;
	bh=9SVHy4ItzNchqHBx9pazd9m84HzVVkDMjaDlbiUrZH4=;
	h=To:Subject:From:Date:From;
	b=E3b2WWT+xCFN0b39OiqY1ir8u0MPJqNH3dc/iZ1Cn+FQxYMcdPwH1U77YFCoaYd3H
	 jzXb70q8D2PJrvvaTb/JMXljzVNegg50uS8A6zIb/UyKt9tl5tlP+cN6jyVaEQoUiZ
	 lukxRsPE/fu3up+K6w5j+Ff2WXdewG4KY2aoEPos4lteqmbtw8zlu5bkoh3vWjxYXl
	 hThyfvZXEGGVexli7aP083jaSXe1T2b86hCx3RMHRTXQ7sonXS5+HC/TD/h8pvrims
	 myGzg7tDaB4uJS3fadiNeI79cyxNLSwZulc/Dlg2JmbQwsXglFoim7CQH85zM4787Y
	 fXh6uRWxx7jUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF882C5CFEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657323370.4257.9276388632153225753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276d5d246aa853a927b186b84243812ec2100cdaef5c0e530b739f80d5da722e
Date: Wed, 12 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786573233
