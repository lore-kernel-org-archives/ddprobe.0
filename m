Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E58399A43
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768593234; cv=none; b=SQL6762z/0tlORUUATbCsOecD3F7jn8E3FaEQOKEL+9gszQn+zVcm2T21OuJ+bs8BSkbGoeFA+pa242hk0ikzouwUQI73jOABcNGiPh0VU8H537vKXZQ5jLvk2MlaM0kot/bBC/JzG4K8Xp4d5hc1b/SiyopzSS3rceG/84LxFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768593234; c=relaxed/simple;
	bh=5MvtjAFNdJhnt92lDXNyg0anxhp/Vk5U9QlgYU2ovL4=;
	h=To:Subject:From:Message-Id:Date; b=QZSt5dgZbjt1Zza5U6a/XtyK42EyI/tWuVaPGML+J9kvZzC3Q83cbVppMCfnt+oN7WwW6OGmaewAtBZE4iY+EeY70LYr07N3d7XoY+OYITUgw4EgIuQIBDNDU5L/JChSiscZu0sWU15fEoNUSA8Zzke0OSDIHNX0/xvqI6OT8Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UohLYoLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UohLYoLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC64C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768593233;
	bh=5MvtjAFNdJhnt92lDXNyg0anxhp/Vk5U9QlgYU2ovL4=;
	h=To:Subject:From:Date:From;
	b=UohLYoLG68I4J4Br6hD9FFgA3XcqRgkYOxrJymiznjQBoRI4eUn9UkLx461/bTPbj
	 VH3pSFruKRsumAo3cyNAWQ/hS7c1+joHeHJQlC24o9TakLMSrBA6GFibz4BZ/E96T6
	 brDsTe+VeGHssyE9d90yRutPm/RyfIj6xV8IGtnitN9qpa7GqtksIeYzUToVRU9M0d
	 rdMA2B8lAL2uXFa3QVlVAuuhK9tBmubuFDmaO7kb6kyqoUIv6k/vF8VGooXhynenjY
	 QIc1cw6T3prdY70Te9UFrf9fUgYhjinYEzDGwtJB/BnRhRTQrexxannsL0it0XN/Tc
	 sWoRK0Ov7XX7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90498C982FB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859323358.16728.15360433426342438731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb288f3649b0af45c4b47690ae2c74118187f8fe0ff056a6db400cdc6a140b0
Date: Fri, 16 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768593233
