Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FA92940D
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742224794; cv=none; b=Ttm29hRQpt1vJp6vVq6Q5nKtrl8qx9efY5eD/aP1qDw/8IPDJ70Ibpm5WymZVN0v4BHxeCQV39aXud8w9SNs2GITP+L6105cDmTLEdLjO0d+64IPXMFDebGt51klh+Opq10pdG3waurSvNqDRyljaWhg5cAUpX9ozB+iIrzDjsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742224794; c=relaxed/simple;
	bh=T92IWfjswZvEgwIfB4AYSTY0HPiM+vXinnQFGGojY3I=;
	h=To:Subject:From:Message-Id:Date; b=f3oiYMjhBpOLzdODVWO1Yx/N8ygjbek7rDSsM8IMXjybluZqpphsQOswhNVusYwkrC+562BRIb2FmzaDUYe69mPd1LbK5M6VOO+4XWqnXCk2bCpV2DEzNPO3g/2AGaa/PGv1Ts057RUsenWRnFmugrKovv6ixfhaD3Q3to+sQaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXzKJzFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXzKJzFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A373FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742224793;
	bh=T92IWfjswZvEgwIfB4AYSTY0HPiM+vXinnQFGGojY3I=;
	h=To:Subject:From:Date:From;
	b=MXzKJzFONG3Ink1iZaDDPStMzBz0ZK20IM+BZiZbqISTdN7Ton1eC/rLhPeA4cUTA
	 tBrP92kQRmsz45nlHaKhsUfUufcWbmRE/1MsdMDHTa74GjDXfI7iTo3xfFbLNphXG6
	 lHhVz292TwwzHQ9ff3Bm2Y+Ojnz7ffLR+ckxzl2VS9/8Af45deeiZJXipdj9NeeuOR
	 xpijtAwAqG92vvNJ7nPlzuXwly6oCbAmxwgcl56Pk9VKPTi0FND5jNLctsWus1nQYw
	 aTOD/fNciAfQ8zA+0vPSzZAWU2ax1MNji+n2+Yuk77hfH22mB2hoJaXOyCr0B84LgU
	 EBQMz+SzsfbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC6C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174222479358.24857.9524991167430097638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873ac781a28803702ba5c5fb6a16a941f0cf53cca95ef316f81c9019e51adc31
Date: Mon, 17 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742224793
