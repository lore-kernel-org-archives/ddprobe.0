Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED9430B51E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777496854; cv=none; b=iCkYixHnY9QKB9RCTUJ7j1GdcQv4lburEfCkn9aQt4KyZu8mSw2dw12HO+Xw6I+kkMcC0R3SjaQtSsk23tEMOOP9iHW33e3W2MV077FfsIiBaBFjAH1y9JGKuo7uoTvNSfLkBtGIj3XBZPzMHKjHidjCxKQ8ws2wBT+8NOIrVGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777496854; c=relaxed/simple;
	bh=aBXWbl7iMBLCdvpJRC35FcvMjCMbHTmIys8gwxYDCZo=;
	h=To:Subject:From:Message-Id:Date; b=EbiXewADSfhJ8/RmqBtUV0kveRk7WOiLAk334CkHVn8HI3IKqvDCg3tsgDZd++OMYB/Xqj4396XvHxGkqsi88aiXhOqGQ3D0d8vrk3Uvu+6ZAehVsM7j/5TKCHphMgEkd1WmmGHmqqvWQ/P0uRL1GUdKBGjSfO/WxWN1MJlseko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfXSu5aB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfXSu5aB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF08BC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777496853;
	bh=aBXWbl7iMBLCdvpJRC35FcvMjCMbHTmIys8gwxYDCZo=;
	h=To:Subject:From:Date:From;
	b=mfXSu5aB7PAh2FTLiS8e09zyTWAWWun3UjTVB40w4j64/dPRrlCUnpTSxBo0xDRfQ
	 9GYtN+gqViOCkyb2FmKqpg7cNJvDrRXGdGIlPnHjwc4zPGycVkXI37sE3h+67OpuZU
	 5Bx7xPD1ZiSNDdqSRkfCG9tNgNg6fvwYSWupOFtyQ2jLrBk6lk3Jhbgc0XXgObc7r1
	 76RWbJFZdB4TgXYn3+FJt4j0lUmIHR6Pd7pXh0wX76QMQnXh5W4iUDLXiomwwvooP1
	 CXdc/gXAodQ7G0J+Ra5DsAeleym6XCk6ry6ACVoMxzpp7R89WDmHnd7dOmcQ6fyzp9
	 cy0GpgtWVlovg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3B2FF8873
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749685370.11011.9688464701794806275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87234ac4ad49fa83af7e7559f4d329c1aa82431b19e1fbc0fb97d1f059f0e700
Date: Wed, 29 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777496853
