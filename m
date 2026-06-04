Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C202846A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780545874; cv=none; b=rYcrcbBVvTubLCtY1PoqYa0ySuPRE3fIQaVRTEiC0GLt0T0lpOyH8VYlFZk8d9JdRT9AMKgequuv40U+e1qIM61MjaZIWPL2vi/0rlzBaF7LicWWnak9uin24qPsrwqQnOzb9QJOcU0sGXvS1mCb1E2gUvAYiAYdD4wagRmsd9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780545874; c=relaxed/simple;
	bh=r9fDT/qpEOv9UDZfAUbQlYWMLiIFid/xiYpJ8F6zo6k=;
	h=To:Subject:From:Message-Id:Date; b=d3Aw98KAxTM8csz6Vma3GbuDr90Ll94WzkS1HR9sUaJ0+opv6DyPoY/NHYQfFZzl61I0YGgB3nbdvC6iOT7SEWFjC1fuvYmTt81M09C/JlIAPphJhQqq8tYz8f5ESDT2uc4ltA/wkIZmjs+Gv0P/z9TcpS6Tzg1gykB8zMlfwNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgORG4sV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgORG4sV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C451CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780545873;
	bh=r9fDT/qpEOv9UDZfAUbQlYWMLiIFid/xiYpJ8F6zo6k=;
	h=To:Subject:From:Date:From;
	b=QgORG4sVwm7mdJYyY4uACAHOcs28KCFd7lN+/Do1xt3sAbWbQs9SUdGVS7rC6W0LV
	 JleP5P8HcHFyn0nXCAA2EVE2vmePisDZmFvRIRXI9J+Dwc1M8iqxYG6U3nSMvRGh56
	 b6Wopbu4gEDsTP5Q/5mhPHDGqaNl62LUhBxEMyma+vyYFib6PL+30jTkq/BTm3Rgo+
	 C0/78+3G+2t6zuSNFms9u1wiuoMfR337HLrmjESJTT0i44G8ufQr1H79uiJH6iwmKQ
	 ZBoUpsKBwzboagy4hx/PHckPf8cdsJSOWR+wSe1t22WLwnXLsy3r2mmNvxHdU4aE33
	 GJEOYlr+dU/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1C7CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054587369.31642.16026316206124501543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccbfd705d21f70b010762e99389b6ee5c2e47e9fe2e9ac0dd0cb7eb0c145da88
Date: Thu, 04 Jun 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780545873
