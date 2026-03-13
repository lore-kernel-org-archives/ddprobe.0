Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD0417A300
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773375293; cv=none; b=LdPcQuS4HH6BmKKm6OVYB6UiSFn2Hqx01u06RS6JBrIijhIAjpymFW1uE0jL3ahxwsYVTuBOLjWqIk3l0q0MH+35OiXwCbbkLxtHnX9+/xDniMFfbxupR0nHy0Pa/GZ5zj1Sg2ssIqV6+k27/yPXNLvn9g5HiP7x9M/ax3h+XY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773375293; c=relaxed/simple;
	bh=oLxtYdrF/fAp2E50NTw28xt0JzTSpzySAKUusb4EYAI=;
	h=To:Subject:From:Message-Id:Date; b=CDjINy/H398NRXbrKb+rTkmVjFNUXwHVtL4vkYa/yrMgaM+T23WAWh4YsWHCQlRxrNQY9o6vfE9BlKIPzC9kz2DWxMhiJ68cko3zaaWofmh5iF08ighyCSfFjUXtnprgRMzNsEpyw6y4Ckbts0DZ8GAF/EGOxFxuhhvFdfoKhfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISYvc5xu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISYvc5xu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0401C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773375293;
	bh=oLxtYdrF/fAp2E50NTw28xt0JzTSpzySAKUusb4EYAI=;
	h=To:Subject:From:Date:From;
	b=ISYvc5xuAeyJudR74MvPvBE4Se5k0t6XmstMYyFq7J9pMlBZC2V2ShyEyMj91oXoK
	 1yxbPz9AbVLu42ZTMk+6DmMId5Cfcfwxjo7Zw+gabKqPCuMuYvVdy+KwlXkPODNuG3
	 PQHETVI2YSNPa6YGh90ACznSz8E6bsU82ExGxE1mZk2UOKbeIsAb+Z7h27fvvo84xT
	 kHSLpK2tw+V20pgHOfvSjuaGKK/VVv4DslceijoOGBO1vdYHwjVy4S9XXDhmOqmmTs
	 ILwS5NOgggmGVjf3hs9/2/JT0XY4fbu0L0PMWsGmPGhCh8OGqgYXYgS3bQXb+jzDp8
	 ZLHa5dm7jBmHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FC106FD66
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337529357.31837.3849850428887971154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f279382a76072eab17b9fb293e3cc63acc21d60f590769cf0e280e269f1b8b
Date: Fri, 13 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773375293
