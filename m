Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EA81FF7C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785600634; cv=none; b=RaZ+L1UMRqvk/xWqXQ1o7Aq9xaumtK+UZUoghJrsZjn8T5AsGRLnPjQlo6ZDABnoEfimIQ+9H9eKUn1rsAvAoEkyPZx529WfcNPuzEUbQFl//D3S9qHevREivvk3Uy+8GhfA6YXWV4J9bCBny9bDj5daPeyccuxtwvR85qDFIRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785600634; c=relaxed/simple;
	bh=mxUy64go7EWS13JFxyVAaZ9o+r4nS/QOObpnhcZvpcM=;
	h=To:Subject:From:Message-Id:Date; b=Tq6hNKqhiS6yJJCYhECmn6HAvY2l79ddLYatDRmW1WEA3+Lz4VoR9ppf51shA1pGRM96GMCTNiNtlpWhkqh4mjeIqHXc19VkxLPfQx3T7KU1qDkVfZRLwsKK+DhMJge8mQVHeD9ed68jy+XsnMbnan2lBmDJoezoOOct+IeTnyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lauDEWa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lauDEWa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD9CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785600633;
	bh=mxUy64go7EWS13JFxyVAaZ9o+r4nS/QOObpnhcZvpcM=;
	h=To:Subject:From:Date:From;
	b=lauDEWa1+CPioysrkNPyYFPAzuXEbmWo5vOFpwY1/lcL1qnjfbJ2qgISxIs3QKkMC
	 NB4R58Vn+44CAZKPjNsqLoiLOSP4Be9VzT/k+h0ng8AnchXS9HrikJxwOqR0X5JoUB
	 cDyyluoyQFQMYpG6QFtQ8KYkWgZ/PCC9CPp0sv3thLMNsUc0cHXRXUhxTsMesQDpf1
	 tD9uxlxMTQiaaJRJyIo2V2Nv/GvbGuJ4lU4c7qs504UCjzemy4aT34fyr3IezcF/3N
	 5A8OejUJu8w+nr22kuuzb6Dm4bMaflKzwTLIBrRfANc3eonA2quwxTqRpZi0jEr2Lp
	 tIxbfrFRBIPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1481C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560063368.753.5951982627973137281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a291b5416b3337c442315cdf5d1c2bb4b52a11425403a428e99d588f2f8932b
Date: Sat, 01 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785600633
