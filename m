Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0AB34E766
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787086234; cv=none; b=FZuJ8GLyA8dG+foJCi5RFRMzSTMN5J9tutWoIISIzjlYdTuCKS7hC5F18qU77gR9PJtcK8J3KUPLCrF+H8OCUarDNcbyUCNkvzxuD7pnxgbZRKJ0i42x2fM36uihxIE8LME/wBFsb6d5c7ErfNWiGLndeD0CPcJ+Cz49FwWe4T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787086234; c=relaxed/simple;
	bh=ilRkPabstl/o3AApUrhHlc7VSDX5ZxR6QMAo+3+Kn/U=;
	h=To:Subject:From:Message-Id:Date; b=FGG5FPCUnwknVWTawWx1fEkTmT7U0nOl2w4IWMI6dTgB8ZSjegCsEre+ayv8lBjHW+BOwgvbsDlzxCvbcOPLnAQdnovGUtRy9QV856CF6JBbjmh7yyC7+2hEs741DJQ+u2GLweefFbDo5nvKTYsKo9tV+j44hbFubtVglfE72RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrX5ZDek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrX5ZDek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C03C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787086233;
	bh=ilRkPabstl/o3AApUrhHlc7VSDX5ZxR6QMAo+3+Kn/U=;
	h=To:Subject:From:Date:From;
	b=RrX5ZDekFaG4UNzJCVQtddSXwe6zzX2ZQhqj43mKB2OKlTdmtXemnlJSJQoWeMDbE
	 E9/ZAn1bdIzsBkWl8Yisnk6lz1uoEpZEYTn34e7GI8bHNjgn4EufnZ20zu2Wtm05zV
	 wisBMxUkHKj5CrgVd1jO6aCmgionJIAEJcXpi9zjEj0VT1O9WetuEjw6yPXn8ST+rc
	 GQZzt8yKAURgxRoWO+pRWBhsEdz88fstrq6xnDqs2qkgKM2n3KLdXA3XvmRxjF5unn
	 0pwa8FKWIrQu832q2EmDWnKeQYuw0F5RxntVQlTf5YSDpAJiKiq+XvWHTL8WqVLMye
	 fuYMExpi66jbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACF0C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708623368.9116.13589432080741012359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c28069e196d706caab62e31b0a058bbb97107b8c0ddcea798a095e39a73c25
Date: Tue, 18 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787086233
