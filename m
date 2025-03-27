Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DF420CCD7
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743068394; cv=none; b=BSrwHRfuMUC2sDSKshHiIPx2Ha6PG2LCez/nZ0tMY+mpsqieypWKir6Pp14sum0NJEwU9/KMAHNNVSf1Cvc2Iy+QPSQhUReo0Vd5Anq06eEE+WyxbIXi5zNmPCO1d+iu2W8ZAy/RkwrMG9BQiPGXNn935xfY4NRl92ilPgBGv1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743068394; c=relaxed/simple;
	bh=gZbBLN6vcST2tsoveSJlZWSKJvdrQJwsejA+7UnJQfI=;
	h=To:Subject:From:Message-Id:Date; b=Yz9ji+hlax5ZDlDf3pOTYZj8noy9/cp59+UQyU9knuh4daLn+qTJLtWJBW0cLG8YWJdF4ASLCLiFc1MRQ/e9ylLSxxfxcMm0rcqc2sLK4j57cCUqwg/uffdwtKf24ue2g4MfIuu0kMNLwHjEnAWKfNUeweATEOPRnUbnT6fQ7Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhPRc+XD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhPRc+XD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CD2C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743068393;
	bh=gZbBLN6vcST2tsoveSJlZWSKJvdrQJwsejA+7UnJQfI=;
	h=To:Subject:From:Date:From;
	b=EhPRc+XDWGNVQA0ZuM8PDX2AkTJA3/LhDL6YqfWzmG3NizvoXvpC0rR3R7iKQj4Z1
	 YHG6ekozMqvDd1Tquq+b/4wPG2M2h83xienLmfPtQDY+G2PM30xaM9FV9tLxzYC7ZI
	 vTfnaePGBMrpN26Mg6C42Ma5ijvXVCEsarCuOh3LpV9sjwQpMwVca7NAl/IfVoRSWQ
	 U2MRDWUX3nUce1LSQTcuhXhU8c4pCyiCt88pnpaQQORCalpWRUPHvY1b8g15H5bK8F
	 z5R8EqRlHkDv+AD3jMEGy3p+PjTPKHu5ASjtRFE+I8sY3/myzOlItM4s05oEZd1rrv
	 G9+weYujzD16A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99313C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306839361.18701.34319359922268200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1560ea3de71691d9b1ddb9be7706745806535ac336c1049f799c34d9084f1d97
Date: Thu, 27 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743068393
