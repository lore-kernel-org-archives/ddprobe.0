Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3249913CA97
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728230754; cv=none; b=KqGi75+tTp/CZSddJaLBlZOe0B5Dao+pAEpc+Veb4lOx/j688BhgJsr4GRCiWgOE4PlYgqI+EulLMO1XYXbWWkQAh40sLv0JxJOHbjWUcSB/26NBPaEaL3NKJW47Xn4M+77lg4g6aPMVf6kJ/1g93fEouB51UZs1uulqdx+X9LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728230754; c=relaxed/simple;
	bh=LrdovNWHkM1fSRoYi1D6M6CfEJ1LrUwSMne7V4t9nm4=;
	h=To:Subject:From:Message-Id:Date; b=jbyyZvHWxE1WLUWJNj0CGWcSwow63xClI3E+ap3PvEjlI6LiHWiTg2nyjb9OzQbXLjyodczM+lrR7S0rVHsZBNhs+rYGCadWdS8JFA/vPqOO5hoT4SyPgu6+IrcZB67kXTexzID52h1LsIx3pWrx5QGjoFkUMl1TX7yaBEuZIyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1xkhh08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1xkhh08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9906C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728230753;
	bh=LrdovNWHkM1fSRoYi1D6M6CfEJ1LrUwSMne7V4t9nm4=;
	h=To:Subject:From:Date:From;
	b=N1xkhh08DdA22bNJt9yIR8z/oKZS2BgpOrCntsr78NHXlTTeaFUbIT+rOuRD/O8+x
	 Os0krqXy59e1RhHdWecTEDSrZa88or4b2vWSb1RjZ9MLAgj9d0gkyDeickO00GWf6K
	 hNAxXAHPkjOxC+2btLZSCrj/t17Ug/Q4PfUs/Egsb5iumpEVKd4Zj0GNs575XQceyT
	 R44Dp76EhFhHZnPGuNb36IuhN278r/zCXWkxQFxdM+FyJYTq3BjVVmrXJJVSS11UAk
	 eI9In6GU0m9Ml16+4kQgkaxyCtxT2pbQvBt+TfCqYUUk2sC1qO1XH52h98u0fDZPLP
	 FuJmReJt1EOpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B135CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823075362.28059.18329172403141258915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc8d7bc0b439b98fa7373edcf03356a96f7bfe18e82243897ff522233aeb103
Date: Sun, 06 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728230753
