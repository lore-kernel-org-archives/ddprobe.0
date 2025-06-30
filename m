Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD51238C2C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751269794; cv=none; b=NOT1BiDd81cikJwzQknaUPUY1GN1+yZ1SajL7FAsfQ3PsQPFgAaAiRYjCv4gZANn/i0f63fMLUkwHCUTCJsxNlDE3TdOXm/++lwZ1+jpd8mcUSEE27SveKTQ3QnJlqpEA7fD8eNaq1jmib+sixjM6VxGTz1RwjSLQ011r9MgM98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751269794; c=relaxed/simple;
	bh=s+N7jjCuS7jzcbMqzokvDgQxYLKZ/MO3vIDlQzQwJ9Y=;
	h=To:Subject:From:Message-Id:Date; b=tay/wANEaJUudbODCu169FpZWTCoC/AT0qRSKyk9OOfA5rDoOtq3sDFebWVaQG7Nm6fVMqiCrjrtFf07c7VEvrRuntIk7I9KQlSi4Y2C2MBfOZpDbxanWdbE3x17LuSAhOTt2zlnuND9y0qpRfxSU4IsxJEjueNrL9+5gUUVQHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUcbxGwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUcbxGwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F17CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751269793;
	bh=s+N7jjCuS7jzcbMqzokvDgQxYLKZ/MO3vIDlQzQwJ9Y=;
	h=To:Subject:From:Date:From;
	b=CUcbxGwEZkzPiA6W96GQZJF6djyz5jf0HUiw653cbvZEJl6QTs++rtnX/sPnqa8Uz
	 1jCqglAL8KBEk/b6KgxW8AgtL5qzZVxY5oOGTr0kVuOjQbcrqX/C5tgfZQI/83vSkZ
	 lp7PZ9mFZ2Hcxn41NLN15RTYisK6nCpqHwFWjkYz+eM1FkMXoZC7ymkxxHkUyeXLYb
	 idEhfyUDWH/BSVcON0i7DCsjunJ709mDQddzpRGkOQX+Q33pjRy1+h8poz9H0AyMD9
	 LRaHJPO2R+IH5rSHvCBTD9+mGgTQNFofIrzMqS+JVER9mdN7ZN0/4MEQN6GOL5r2yX
	 ZiuuzNO6DWMZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E25BC83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126979357.13301.11745077923030954883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9809a335b8267635681f8d6ec055aea7891743a2f934a9257e81c91d2d64bc1e
Date: Mon, 30 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751269793
