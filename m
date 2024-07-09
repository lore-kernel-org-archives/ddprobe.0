Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503BE364AB
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720487183; cv=none; b=dRNcY18bgFAIX8aWqn9AwrkyTgwo7T/sqWp7myd6W2znQiweAnr2CoeG2fcSS1wSdhBpEuqvzfn3AwBtyzbKL/uDNIGXnSdwQ7dv8gu48SlY6Nx7zPkjSZGApUChXDYCWaEHbEZLYhasI28yDWBVaa9/zafKfc6DLO8woOsJCvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720487183; c=relaxed/simple;
	bh=HAvEivMhEzETcg9+sRPFUAiyK+8lrLpOxf1Q+m7XeYs=;
	h=To:Subject:From:Message-Id:Date; b=TXKtL8WfywVtbPZHYHSd1JXL5LmC9jmxYB1VnQ5t3mG8hwrKep9hqyTZJCH/g7tChbuUwuI6/Pw22MqyVG0p7f6kV6y4ID3KlW7lhzci0VZF4e4BU87vTIIlJPJomJvt3VBxgRFI5Hlqj+MuaJIYb4pno/Kqp+GNg5KlYyz0NXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opsm3gvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opsm3gvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90A8C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720487182;
	bh=HAvEivMhEzETcg9+sRPFUAiyK+8lrLpOxf1Q+m7XeYs=;
	h=To:Subject:From:Date:From;
	b=opsm3gvzn/OU2goGxnXEFY572eEK/WSlfwd1LGqVLY2tcql4MbiCvCVHq8WdwShCy
	 FF/vAoooFUKgQLgZVoxP30WKYzzFkrmEwvNcMjmQXZ5FTn6/3I7DQyKfDftsXOiKCc
	 HVKceMCMqOwDqn8BFx3tnLrc/U+IChHGt1HK9unC6C9YrXhikKxtuHqJuZVEhp24yd
	 srV1j9lh8GxqEriyYzfbxgUpg39LXg9nCF7iaOeua5Z4wbUaR7sX4qDmHtWkz9rOvI
	 FpryZeW66+vfCrmHI4dXxuxRFBH0cWkamzD42WWr0lDSuQr2b9952lBajhqat7aWDC
	 PNtIQmqCbvH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BC3C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048718278.12650.9106319114149691305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ce2e936f8e438fdee7689f5d204d62f53dc12dbc1372d35582e61ab38cbce6
Date: Tue, 09 Jul 2024 01:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720487182
