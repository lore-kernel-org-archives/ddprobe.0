Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C612346AC1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770592435; cv=none; b=Ve8h9lNAc75dgxTPdnzTM00cZ1dYQlZNaA965+GH/i2fqcwU7DQ3XthzOyK6r8HDi0i/JRNxwq2Ny3QzJkFu6IUCFXH85GaiGor4NGZyNV9sqLUWoSK598foOK3Rp32uPFklqukhcUnlI64Y9mLLAc7ryWR7FiTl/l7F2DeUIXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770592435; c=relaxed/simple;
	bh=IN+RSROLuE5M74i+9B8Al+ERJF4I3Td626cOMl1uUZM=;
	h=To:Subject:From:Message-Id:Date; b=RaUoXmEiMEmZXWMZSVKgzM6Kry7kJgs7Rfj/zZ9uvAi1zB9OUDJ2M3gBGKIy24J00AtIDbABHvShVCTzgnlFi8Ztnizh2WTB+FK2Hv5eyOu23K6oxwaK/rwcyI9TeBKw608evL2StmOlYwr8Cve7iy6AXbL/vCUF5GS+giHhyrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=my4nDUAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="my4nDUAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE6DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770592434;
	bh=IN+RSROLuE5M74i+9B8Al+ERJF4I3Td626cOMl1uUZM=;
	h=To:Subject:From:Date:From;
	b=my4nDUAsPMZJ3NqP8opNxuLlYjrvVGf3Q1UQ0byZXqaubRxInaZURdB0X2cqji9hM
	 i+f8sNJMhHL8TsPgT/snY7KAvASkj/ktOD/Ad4cR15JDveqx370epuwsr99XTQ5Y/h
	 qMQ3f6rd/AbeF1DqREjzt+Xf9BPVrrU62dM0g8iml0lAbrBiaaS299HZwHq40GfwZA
	 UKZABVxp6W4dx1gfphLGizS/X/HQUjx9bOXtAp2l4FUBAtnP120kr+5vVV5GPHn7O0
	 lbzRJUjw9+ud7I9iFrJfcb56u11u5utz9ZHbLXMMx2jXfmq0svr9JXkXIMO7Dtu3m4
	 Z9XJ45azTiW1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA42EF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059243359.16807.3303260857045605884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703ba2632c887e9ee4ccb1581799c656471fd88529486edd378ef11461f38195
Date: Sun, 08 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770592433
