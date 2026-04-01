Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073CE35949
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775010294; cv=none; b=IbCLz5QJPp53byCgzxSxbDqQfPn+2+d6ONVS1jVRiV1YB1AoUgmwdFDQUUPEUbDD7MlxXehlCaGGpKiKUQ6/TTBcwWuFhYNdwUmvgt9qXGTIyprYWvLvgVUqOb7nBdhlVGa6SSdR44bedCr04iUQegiGpsNR6UkgU93L4A0vxOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775010294; c=relaxed/simple;
	bh=7vynS6HVFAWTyVNtWopJgAIndWMf1p9rKbEBrC0+eXc=;
	h=To:Subject:From:Message-Id:Date; b=BIRpQ0fwx+7JAOCaxJeDf9C6GD90lgMxEUxJ/AE+OHzELBTWdKFubL5rHUn0vr8jXh8lZG4nI11Q+XerY9TP4ZHp61p9AMlZ+w6k16STM8Mevsx1C1+jOrwPu8K8ChBy+lTkmgNuAfJzaZW9LU82Bgz7Ida4859Gg+0d+txBO94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6QnUore; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6QnUore"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B186BC19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775010293;
	bh=7vynS6HVFAWTyVNtWopJgAIndWMf1p9rKbEBrC0+eXc=;
	h=To:Subject:From:Date:From;
	b=q6QnUorecf3mxK0HqSmlZJfxqFxivOzTejZANRcsDO1ss4R6zCVqpv9vtbNjcG8L2
	 d51NVBa1EZKFYhk5TA2T1iNSNnsV3pVAsOIobHGncQ+X0nOaUbwROEqb8wIngwkPc/
	 sNSnaT+XVqSYj9cnAEWTw1GPyTyaQI3AMJ7MiwQ1YxtGzI46x6n9dfy0XRMS6mqzAL
	 UNS88oRYGzze2cubE7Nz9xqODI+BLK26JJRlAmd+2015ULP71Kfoc58j7OEBD5jUkY
	 FymKETNqxuN5chmLkzp6lkHOJotvqYrcd0awhC0j3JhA52zSe5qb5i2twTQMxPpFnu
	 ba9puIDSIIdMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7A310F92EC
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501029363.10438.10979190962260125175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82f7da3aa5de395c4a572ce3afdf07620c698adb76b756fa4be92da1122fd29
Date: Wed, 01 Apr 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775010293
