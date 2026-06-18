Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56598282F38
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781753794; cv=none; b=B/hxx7GX84wrW3h6fyunuwofv3LsFAvgZUKOUUbmGAbXDdtz2DMEkfbWfQ3KsJecLFQID7aU8YDO5wTlhpqo3exxO3Vk9LPnNmwKCVzqXaBu0ECQsZCZ24R37ezL9ID3tYqphzbABXCvxG697GTV5ON/1McYCg8Fzzfcz5Bo/UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781753794; c=relaxed/simple;
	bh=yDnZAbT97qVsn4P30SpC8Un9ndiIwkXD20inGfCmxYQ=;
	h=To:Subject:From:Message-Id:Date; b=DLs3K+AFH63U5Tp/uW5h+ggkDOb8sAwuPKrkd4dDITdForJfJyNwJvxEKUbSW6zR0ODaO9N27/ybGwRYVgrBaxxqzOG33mQWKyGkXyAPc+8q5U6ZBTYc2438aeNIyv6riOZslU8PwGKccTSw4VkB8xHgRvq2m2IuDoS2Uy/BRkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3AMIh2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3AMIh2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE377C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781753793;
	bh=yDnZAbT97qVsn4P30SpC8Un9ndiIwkXD20inGfCmxYQ=;
	h=To:Subject:From:Date:From;
	b=S3AMIh2Mc0mgmAc0hNE2yZ/sCqwlpnWNTC40mYboS8cBBmqxUOxDMpr1AWw0yCIMe
	 YOt11DgaDPrd1Z7/TNHNm0RgFbr7/CN2TQHLxSLO38dXRQEu7I8J+9inDUYb23mJRd
	 joga+rZrENVYvrmpEGA2GYhrSv/87IxswIb5V9QhbpxFNzQajYsQp8QBgBtEMeTVWT
	 IN4xZcBdCppxjG43I0avhkLJFsjXMzuDFOJ5pfRGSXkjRZ6TpMoIS15iezq6mP+sEP
	 pyr7sJRWNMkY5tHXW8b4rI4yGNYskrakORx4/I6RoEFAmR0OVehpT6QwLuFllAOf3m
	 PIq/9CYfJToAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E1ACD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175379369.2532.17379367469641316880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e002ef3220f3a3ba6d596ecaec3d827d14e821da58a9c67d49cf8d21506262f3
Date: Thu, 18 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781753793
