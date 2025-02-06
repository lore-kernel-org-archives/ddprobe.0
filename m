Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BA423C390
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738880155; cv=none; b=Zr4fr+Psl9OliDkzbYSkxDRLaOUGd+1w7UCqFNjgC5fDV4/lyV4QZQJ7PjINKtj69a3W5eodrRyyWvtVxvMQGA+6KeNqzCW10vgAqu6ClTPFCjy2rPpYdrjSLnIzndqRF189T0JnmDhQReY6hHx0ss5kpAvBhFIPZq70ZOXcobs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738880155; c=relaxed/simple;
	bh=hte6UpZhKC/vNk6eBuoqFGjE3t9myUkJH3yauNA+4rQ=;
	h=To:Subject:From:Message-Id:Date; b=NDA0rHmK1JKf4CB/X7FmnSRmTGoFZAgfybA1uWKrkzOkgKYjxdI+QSgdARzzOl7L8Exk3eOSv4RcLWsXehTZCw+tFoPCXUu0kF1xmPtKPuFxVgYtn0FHxpCLNYdnyxNYLHXyktCNxPv6HEHckOapDBArzAt7ZhEcEN+PJ5nS+4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLLiOdFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLLiOdFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ACDC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738880153;
	bh=hte6UpZhKC/vNk6eBuoqFGjE3t9myUkJH3yauNA+4rQ=;
	h=To:Subject:From:Date:From;
	b=MLLiOdFulETI9X/1rtoqpAynt+D93QncjLLUruBg0iHgl7NENW58YCRKTKdnI6aSU
	 ijx91uckALoPc800C3HyylPRiEZ50GDEDr33KZMhhU3lgVKfjvk3XwRafheqg1wO7Y
	 asxtjZfavaCDNNsm5aaFPEb7Zy59uhqVsLFQRgpSi9e/WaTlH5nsuLXghdMBP0GiOI
	 QQAYwNjKBOkziaWGEFbAo9B8tjcfwoS73mEiNcHzdjUwEpB4Xw4A6Dfsthytf6nm8b
	 28LC8yznnNiZ01AHV5erCfaHYXY/5FToiTO9k5wMS5CMwtrf63myTr328LLhjL48t0
	 9JJFq5n4b2wsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D781C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173888015362.32709.638652230763689774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a815783d6f8cb49f23d2d2c38b61a97da8486dc77c0abb3c73b627b7cf4200ed
Date: Thu, 06 Feb 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738880153
