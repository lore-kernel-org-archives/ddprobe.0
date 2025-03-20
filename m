Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D799823A0
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742464193; cv=none; b=OmGMZo4Hx5E5SRw9gCQQj2J0fyPCdhWdvzaaLPz812v7RxQgBUgu0ixdbcWjDgvUZcypU/on580HhBvwmX9m1N0RzMg6+/Vd40i2Q/K0rs1DhiXYCTqASA1SgukcGcxuUmOoLyZkru86UDF6FSDFF+0U0QLS3AvzktAXRO7PxPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742464193; c=relaxed/simple;
	bh=5WWBA3CGwEDbVQRpFG0Wkz7hLA4skbp/UjbBgxZj0UQ=;
	h=To:Subject:From:Message-Id:Date; b=WfaSrcJzxyZ984n7C7q8W8L5u79GPCcuA7ZG0KngqpQPi20smZXAhIoJrMGQ1F95wcFj6Jb2mo2g6JpO6n+T2aXcXmYsgN7z6oEDIt/mUt/NQbjRoUeOx8Cu0eXbf2TovZ5K1MuhmlnCCv9SYpQz0ec4yXUfoZFnICCslbQ9FAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mc9BzIGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mc9BzIGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B35C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742464193;
	bh=5WWBA3CGwEDbVQRpFG0Wkz7hLA4skbp/UjbBgxZj0UQ=;
	h=To:Subject:From:Date:From;
	b=Mc9BzIGu6HauX6BZ0rG2EIaDXM1ftiRNAn4y+KEAgDPvSprZ0shHe0HODQmTg1Nms
	 SIGBzIrPO6+WTzajvBQ8u6hBoH4NDPLa7oSr0brq8yhYDTy82rJgzGUp2mYyx3lsEf
	 wxUQl0N5Ekezi32JIWekTgyqzsM2SPQG2ifiQLKnyGarXTPfBPebKTpTBHcOVufl7w
	 emcUmA/UMI26omdBBxOFIiBGlgh9SYEdGl4IB5bQkdecAu/AHI571B7RBPc3VXLWlr
	 3kYmJoSu2NxmKdTcMxEIup2i3yTojtQY43bBw5Wu983WQukud22NAN8K4+mb7r8DVb
	 Hov/uD9+gagUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E47C36000
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246419359.5980.2532122280189422257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8538c16966b9dd1bedc5c63516a4e59a3ed6f3928bb9d186c7bc44003a375088
Date: Thu, 20 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742464193
