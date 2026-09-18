Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F63F36F405
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789709434; cv=none; b=dgimJROjeWnk9J/Q+3FVmPiNkX2tHcVKSv6WIdG1Lhebyrdu5B2WNUE6HMoi4jlwk0jjO00fLqGz3alLKgobZ4UOc9QvMi8yn83OlQ/wstwxJ9f3tFvW3cRPO0GzFTeKCta3VBrPU8ydM0xslziRxydmVfnpCnYdudNmkrXeXZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789709434; c=relaxed/simple;
	bh=wiEsgFrpae1a7sb5pLFkofauzREX7PD8U1aRe4upxg0=;
	h=To:Subject:From:Message-Id:Date; b=IPqYHec7+0L4DggtTDJ07whVyVpWgx466arSdfrhq/w8HsS1iIC1MO7QYXUpkfK/Ixh/U9vjrXrREOs5bLgT+MiHEVoX+CO6usSzrXgexBoaatnylrztBcQbQfRC5tEui/oR5cPJVK9o4BBrPa7SlWgut1hj0rlrrQqZkUChDNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Af5mveTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Af5mveTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0461C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789709433;
	bh=wiEsgFrpae1a7sb5pLFkofauzREX7PD8U1aRe4upxg0=;
	h=To:Subject:From:Date:From;
	b=Af5mveTXvP1/l/QtuXer8Jf/hKA/uJAO33pyKshcwa8B7Is0gtKQA8p3fxJ/ZMp75
	 ETC0hVt5K6ttBsrtQsDxoZLY0yRjH6D8hwulThBRLNDz4j6+MF/CB3TIwA4XJarAQY
	 ORxfFej2wdRfyZKVyvFxvbsBI0fw+lmiUFAj9dCuLE9dqY+YuGsB8jScoTDtNOskLZ
	 D3ZB2SEXPSEHo+UQNIFOTEgMxOoLAE7C3te7baBP6MqopaO79PHYSrZkCynnkxRMbZ
	 BwRQMYEt63rgI2V6SRx/gaR4i1vh0F04npUri/syqCvBrUKm63FeZ7ZIy3fo5rA/cH
	 KLOBGvh5L20JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC314C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970943368.26138.15830403998902213383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4fd34f33b30be427540950350eb07663abd3822aad47f3290b36fd1ab4e148
Date: Fri, 18 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789709433
