Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492903D76
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747029594; cv=none; b=FR/XgTBAsL8t20uzGQQrL2rLFKkP90uocP0oFNYF18wPLv2LQCrHiP5t8qIDaCWLGNnTP99UlVM4YDwISWbQbK5jxS3y1T6wpJsTdxr7izrVq8Oy50/WiNICByFnDuWwcSmsLrHsM8oD4oO7BUZ/N+wGptX1U4qRAboXfDNBGE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747029594; c=relaxed/simple;
	bh=awdfp5fims+jzSqBUm/JE6BjXdyNW0MIyocjP+IOWz4=;
	h=To:Subject:From:Message-Id:Date; b=J349wQgngPo6ZKgsY1H8O6vTfJuoyeIqEs4ZZngApmmqT52TsqWJYdOUGUvsrR9Glc5Qv3Hu0NpIG9k7YWjohxUHvRyWpwTYPDxG4/GShEw5aVkqHW/j7+2k7OISXILMdEh9QRhh8qAsjnKZGm68/zSS+EqtYeSgDjf4crRkXuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjS+bo7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjS+bo7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6595C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747029593;
	bh=awdfp5fims+jzSqBUm/JE6BjXdyNW0MIyocjP+IOWz4=;
	h=To:Subject:From:Date:From;
	b=fjS+bo7WAM7YsuCpq4Njr5NL7RC7SG+VJJoWvX9+lxECj1qwGhUmoVs1fSQMpkP5V
	 7aPTrVAkHZzavLr7qJ2MlDSbkpEngrp15buTdd8vuzRfUpDp+Cg6mbfHRToFl+kj2S
	 zcgtaZx98nBKjHzsX/KzIYPXPVgHfkyrvKDh7PqO4tRO/mukA3H6nJ/ArmIGt7mje7
	 Mf03PKnsHtkE1ZcwDcmk41XdGAI7kTWMn+yHS2LDDceCIn94QESAObWM+lpCo/MWYF
	 +nuqP/KIbpiF+K5F1HRMetYe2wN9cN7MJABNMFNupOw2Bdq64xEKVo/DsXurJ22cwe
	 YUgGLoiUmtSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C22C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702959358.4225.9708095871743780590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df879d55c3a3dab5cefb735d458e903ac6a85ec6779962bf90a05b52912fd9b
Date: Mon, 12 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747029593
