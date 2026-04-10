Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A2D2F7AB0
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775800654; cv=none; b=XPUzdXMdMJ/A8eHiqDCY0aqopmYZoC3moXNDnM9/R/MEbJuA1cVmVXk0oOSuaLlufg/TDG+q0iBjKKTN4nlCReOXlRwZa/InGCsabnBuxuwqxUKVIAnLBg1xyp0saZ+lC92EoQZ4Li2MQUUgpO+hmRZFD4/A7nKt8O5adMDWca8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775800654; c=relaxed/simple;
	bh=7AMB+3EpTYJzpdPX5G6zHL59Hc7H6o5x6/a2XwDE2cI=;
	h=To:Subject:From:Message-Id:Date; b=S+XhjWkn2Pgr3XWX6AYYd1jzwr4IEXuf5kYDdcyFWFJek2FF25/IhI5eLpvGUfVR7HF9cLpo9zmvh9cG+85occvucOXvPsuRBWztyuRpFiuR2E1/IzecxkdaTeMKnNwpgLh2tXPERZ4BwramoULoC1u93l9yuSIeiiV7YcpkhkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNYxeL3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNYxeL3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B738CC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775800653;
	bh=7AMB+3EpTYJzpdPX5G6zHL59Hc7H6o5x6/a2XwDE2cI=;
	h=To:Subject:From:Date:From;
	b=kNYxeL3o0r439vXv8bJCL2focqY20moZdPlGgmrg9N90Iizzjc3XgGaIla1B0LqyI
	 HjJfgO7/92Rfn6tTndPazkAZoyi4seBogb4SzuYoNEZExvP0kj3JHCyBP/P9rySGGl
	 2Xx5fWKdrR0b93F0cgIWlOh6HVdCYPDz3y85AKsXQ2uzx1iY/e1NM6oWucQzOVv9h+
	 aDEkfFElveMmElWRgyXUrXiZwUgdpYOW5Yc1MRKcEDwDMbAGyrF4d+k5hN++guBZBO
	 snlSz0fTn+Ep1clHJ/PcqeA9HKmP5WA7ZqPJ+uKKT/x2KIDUnqmBWG/C7tKI0fwyBk
	 cm3dlupzgV/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9187F36BAD
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580065368.29151.6068257842567449024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70bc0654ff09f9352444f26192b500f61f799c13a33722d310e2e43fbd11f705
Date: Fri, 10 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775800653
