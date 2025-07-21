Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F96D1E835B
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753078794; cv=none; b=qssID/Q9Df8CWUuCv5rgW7QN4tYSdXCkvEgCAKjv1yS8gGl+OYawCCOalZG0aql2V9HMHHPT6JDRWbEWp+kt8R5EhbvG+2PSrDudGkUql4OClfRUN7BT9lVI/u698lKdsyaTDgc9cXquNQByevnLivPfk59Og8/F42rOl0K9zYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753078794; c=relaxed/simple;
	bh=GWf3yDPyTAsLpO/2/lQyIaUn3JE3o0rdwl7wIRxg+to=;
	h=To:Subject:From:Message-Id:Date; b=TMDOPNtcMwPWsx5BEdsdCkI1Dhm+w4V1UlG9Sz3LBXD+mnLd3TtQVErWRV1lK1+A5L5WgYl/dJ0sim74+zx+0SS+ZC/Yv31JbCcR+qTHIZwbi1UT431VocH26OlqWKiyOozI45NIwjPVTnxTI5WnYMYZvwHFlZsJwZADHRSTJo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZnygRk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZnygRk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C91C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753078793;
	bh=GWf3yDPyTAsLpO/2/lQyIaUn3JE3o0rdwl7wIRxg+to=;
	h=To:Subject:From:Date:From;
	b=fZnygRk6Kb0n2GGgM+znPa2aLYvOMhQQJAX5pYCDEuz+Cm/zUQwdfP10z29SeFIxK
	 WYa5+HAjvIdn1kDivEvJ/2BJXSGBkiLu+FgAKgwsKC98ibgqNk77/p6NFwwSUHEgP9
	 L1kTs1CqMNCIkv0nT9EgPbCZ5Y+l6gbowCbKJAoZ7JGDnR1fe0/B07Td50NA2bEhFi
	 rThxyLtRNG2OuqgbcTL2HzKnrVQbAi2hC6Kq7N93sz1zdbIMcTkOhIVZo+bOdYhNUT
	 XW2WjLcnOAsgXOsMCp5XMDM7uuhwDMjMV5GUhmlvQ+qiFgW9Xx1G8eOkHRozxtl5gE
	 r9YyEW/cLgWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADCC83F27
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307879358.16075.9131209498798663500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2e1157ee77b46c017227f5eae81ceaf1b12370db0f2d9dd374c6364717cb3c
Date: Mon, 21 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753078793
