Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8831ACEDE
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785642034; cv=none; b=BAguCtcrw+2jBFm64YzoeCy/slufl2ylCZ0T2zoG1r7doDj5bLtmkESpcsN/ixDeM2Mr9BQ02Qx4pYF6gUrzSzbjWdu3RMROe0NmoXYXFvIQBMPWJd5ygMztRiHG+/Ku0XEOyKM2wmEG9UKRVTxVJ8ZFYDbwP9uxfFDqVRiCgbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785642034; c=relaxed/simple;
	bh=L7y6fsZvCaKVHH4geIw/1gnznOnGoZL5XAHl3rDSJ98=;
	h=To:Subject:From:Message-Id:Date; b=njM+Y1qSXXmBLltOpTxVe1OmDaguw75RxrWDIqfBfAe/63+wNOZFHPdYGL0HH3uN1+69wzH9XGZN/HmoEuyjCxjfSQoqu9o1dZiASLzxu57G+ZEVU3yLBtPQWSqvUM6h6xH4e26QJryPUpnupvwFobp+6W71J68Es24wtJuVNGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqpXHAel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqpXHAel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12B9C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785642033;
	bh=L7y6fsZvCaKVHH4geIw/1gnznOnGoZL5XAHl3rDSJ98=;
	h=To:Subject:From:Date:From;
	b=rqpXHAel2lyw3XR53zzSsXWgdBRHisakuIhfAQNKfKTBf9jFJ5cszQFiJuIHeEL2o
	 nmOLjxar0f46h/4aBZGbyWV/DjxsQgqBGYsd6aTDSN9UYr/3PJ7BJ20ESjh9F4R4mE
	 pwU6eBWfIQTMc+LwvKAUOXPyLqwS5lvO12HFaVltZh8Yu2Snr8ycDrzIbsnx9w9VZ0
	 AZML18BL5x4d6OSt/EmkoIlj6hFv2/NjRVyLBr/taEQNEsM+GYuGk8v/G3bLQhE+wB
	 zoGn2E8MEXD6nTU+aZvNIC9lq1+T1viLD713o5d8aEzclR3/O6jMtmNf8xGXVvA4t7
	 I5/7Oj81eQEpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB75C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564203368.31312.2566920666921556939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9163501ed5cb7bcc247d491f7e1f21b112bb933b3d8437400312e7ef12043244
Date: Sun, 02 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785642033
