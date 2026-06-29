Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B413CB911
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782773914; cv=none; b=rv0BhGyC+6+B92TZ+YMNq3IvWCQbTQLuS8glkA96x+PjGeN2JiOyoERJqDHs2gt6nZOqgXLMV2zAxXsRkEyzb7N2jiWOWy2QM1eXzbBqfdMOVakLQ0i+GYwMCmZK+usM+cd/7+hIvt44i4oSUjmQ1VZ9ocU898RKUnrqbDj3zrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782773914; c=relaxed/simple;
	bh=9drQ/ZggvpYlKgS6rHyQ8ifRo2sXuLTyB5rhzQy6MIE=;
	h=To:Subject:From:Message-Id:Date; b=Tlaz/LxT5Akxy/9iiqtDNrBobMBgzRnW8FMQXnvMhPIrGxRTNaiAKyPjMQwDIUaLt0Jsg8bT38vl/YErltMIK362INblD1s/E69e8P30NE3Rc7/iYTykP8ODFdoW+WsJhjMd1eaLZaHr00av8qEVfvQYyhKWsFUvuLOivdcQMJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpI8Th1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpI8Th1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C67C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782773913;
	bh=9drQ/ZggvpYlKgS6rHyQ8ifRo2sXuLTyB5rhzQy6MIE=;
	h=To:Subject:From:Date:From;
	b=lpI8Th1EtoFJVXnPk5ilGciwzGUgC+pXyY3x0X0M6swk9+oDyEoQxqdSG1bZVPzpN
	 oBrAJajWFWAP4tE6zHO1Vgw15jVPRYn9ulJYKqOuVpUI5SpwyPPcfNYkKChYAo8D7X
	 FCwtrHjBVSIpCZCkdk9+UQeiy+8z7r/9DzIFHmAQwOagoTdRCtw6RpOMxlly5/zO+0
	 zJF92c9efhu5TV93GlZ8zwgWMDbTjezuPZmRXUDjUI0vPfIn8TXZs1LzbJk5rQvRY3
	 SL0Bq0CiYCWQiQNd5Y/bn0RcQ7XeaO3qVThThZtCdOSeqOcoRanHlETgKTFx1jMPSR
	 TSm3cMcHwmPIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE12C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277391368.11035.15129760144434917799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83d66430c3e2d3409e324288ebae8bf4d8e367023773e2d0296adb09bc22ef7
Date: Mon, 29 Jun 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782773913
