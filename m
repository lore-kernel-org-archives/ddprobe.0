Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BFA15D1
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730367354; cv=none; b=py9+4f+6pRyGSIK4XKgo4DrRGb9sRp46if54To7bfDpygLXdoaGonHeUQafJ1TSGUOPSDzLYFacKNJybxwCSwUnJmGnAHjT1b8aF/9QYsbJvE2okhoj1jnfsbVYY5zzJBFevFXRhubJ0dSY/2dNMUGQAAm8z175lW+4CIfwDqTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730367354; c=relaxed/simple;
	bh=J3GxmvZl0lOSSyhjaA9sqg5N3F2az4yvxB4+EX1oRUc=;
	h=To:Subject:From:Message-Id:Date; b=aWLgqrqfTy12520P+xOjaMaxSOv841odpeJ70qT3lgCfCqC1jjJ8zfgMmkvLtKzLlq5bRjw3u8NJdr2NIti45e6htLwOTTW3CbfrXmWUWV6KvOksX3fgAk6OV1kzcjIl1CtU8C8fhvKvjavUlKErwczwNp5wZBWc/dzG9Mq/Kks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+Q04kEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+Q04kEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7462C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730367353;
	bh=J3GxmvZl0lOSSyhjaA9sqg5N3F2az4yvxB4+EX1oRUc=;
	h=To:Subject:From:Date:From;
	b=s+Q04kEO/dl2KOEtRsOZapdVHjX5DOahR0TgvrT/gBuhnnj84f2XLAZmf+2WIncrZ
	 mnuLlzWVU0syqAduCZF4dEkIb62+uLfRKWHYxnsJvUykbyQapJvKrgYYuDtGocxBko
	 MiWkCB31daGnxzLQ+W6WykAMzICwxjNYzEGqojEApBbZw5XQA/fElNQCmBC+5V74q0
	 JvIFkodmAxg9xuienAnhik65iKXYfbrTHKpJDonGyWk8EO1HuxiqWiLudQ7Gl97ZO5
	 EQruxR97LGG4lkSuOuhJhh3IeT3+3K7SwxwzSL3mjN0cTYB+jJ3QsN4TalFq+4MjIK
	 mMXgBugHuCgTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A904EE68965
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173036735367.7017.5837848011026270956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e067c6163275f2fab4346d8e4a0f49bdb44be6f8a4db2d6afe4373ab10f32aa
Date: Thu, 31 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730367353
