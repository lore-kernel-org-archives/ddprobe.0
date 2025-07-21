Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334EA2E2670
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753122594; cv=none; b=gbhBj4olSbubvOkuGQwbMZDnkCZmsuCZppBZUEio7o7SPgWh8IpyAda4SSvauBj0vKSWEs5UoaN4tieyNmmcYUZr393h6AQYeQpSiJ2Y85szYk0FUY2rumO4ct/bRe2B4sno9og9hC5CTxruaVuZ1HqfGkP7oV7m5nuMjAcVOBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753122594; c=relaxed/simple;
	bh=bXxxfhwv+V22TrMSH3L6lfcs06vCumyYlatLg+JNgag=;
	h=To:Subject:From:Message-Id:Date; b=Oxvf70MsDu1Ks30ckr1NlaPPM7hEA5MDuK7diW6rcOYv7agWZmgUH6XaowPaectSXNtLZ8g9LgzIDQaRO062VCfLcw5lWputDU/PEH17sx0Ag2pvBn/PGLfXEq50gP0u6ggxwSC4MLheDmZ/TeYwEJrEph3eoRwSG6ft+frmusU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mck28cPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mck28cPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D08C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753122593;
	bh=bXxxfhwv+V22TrMSH3L6lfcs06vCumyYlatLg+JNgag=;
	h=To:Subject:From:Date:From;
	b=Mck28cPlRGPE4E5GGRGDQJ+V+RoX5ufofiEy+DccuskiRnHLukyDoPLFOn1kRL6ir
	 Ws7dKk+9a+wcTiXG1qHpZuTdDlo2bYtTTyUos7Mafg3YndDNVfOIBllAkeI7MBGk+k
	 ZOvZ9/AOY6FQtUfuM3KsYFYYM+YsP5S2R3rKUdbsPLCd2RalCw0U6L665LlrhNRIHT
	 Gi2OltJ2ouXg3sm/V61CwzQrc3pZc8N1Fsihlw1jyQ8hsEO3SrcMetysF050Drs/6C
	 GxVREffYSXY2IhG/Yn/widfb526ddMEE5RIySugGPcsnyxGl8nMuaEbTkO8WLM+VjW
	 SePbQwsd4ilQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94972C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312259358.4013.13713119467287774240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d75158685bd0472051969704c7973d3b4379722b484fb121a2d4cbd3e49e1f5
Date: Mon, 21 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753122593
