Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECA13064B5
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775391934; cv=none; b=mdS8Bhj7a09tl0xmrDU4lw9bBy9ndM39vrIGNrJMtja7j4sg2i1h1FI9TVnQg6HCXY9eVFmrUGnaa4MUdGKv4GIIBcNyfaG/NWtgX/mIK23Qyy+n+ezi5mKMm5jK+n20MQKpaYXLXgX35NZBctfNt9tjOO3udvLMFLN9RDFIWUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775391934; c=relaxed/simple;
	bh=yu9WtrMlOlMil4dZMRdlvWEgB20JJ02NQSKHfowA9ww=;
	h=To:Subject:From:Message-Id:Date; b=KHfMuCumgmdhuyy2i55kcIlaDkv5XzBMy7TJlw14tEs+Bgn/RIUQd1khZOYpCWU8snPU6Ibg9Y+fcyLJXJORoJ6p9kXPyM+esp2EN1d8LB7Wy9DEYkbli+0ZANVoZKUX5YCwiTdx/QjJw3G754kVWHJL7sr461O+SVDG4vYu/8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3LQxPgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3LQxPgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DD6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775391933;
	bh=yu9WtrMlOlMil4dZMRdlvWEgB20JJ02NQSKHfowA9ww=;
	h=To:Subject:From:Date:From;
	b=J3LQxPgdgppoa3NpaFxj2QjM56lnp18o2zIMESZ0xyAxFmWh9QCiFm2ep84dOLWfR
	 bFhrAaS1X/5xIEzPhCSoizQeb/gfN8igIqJsb12fyBLLdA+sYw3qIq5URt/VkK8K3W
	 4O1vN/AUJSpAQE5Ea9rAsQ/aV3DOsHGK66AcBzSOLYcjpAqbtNdMtzvz1OHJn9OLka
	 X1xZWmGhucUzImpM8WY7uFt00oD/XJBey1HzRVayNHuMUxEr3sponYt7d0wvZs8h9m
	 frrpVEec09ykkubeUOrojxOeM30Xy851S29n46aNluuB0yUwGSWwX3p6XKawl60HRT
	 Icq3K6Sco/Ycw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BA0E64013
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539193370.16202.12914246321912045866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da07b47f5bc6c88f68c1aed130f3fa19ee981fcef654549969c0f066edb780ed
Date: Sun, 05 Apr 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775391933
