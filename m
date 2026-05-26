Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DC43C3C0F
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779835354; cv=none; b=pSh2Xra7DYDgaasERXfpthTFENatk0w6ygli5vElOdWLCM/iwkOnjTZbc8k8Y7KaIIDV6aSiXepXKWnEBtuOLUqbkahaxBzSfGZC+19s78rirUMUE81SLRDxymQe54lTy/qY1RLUjiNeSIrUB7pKpnSkJsv0ZnxEZ55rivony3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779835354; c=relaxed/simple;
	bh=Ug4N/rVa7pKczlmAEzqFEvf1hsY+K0XUWcBm56rvcdA=;
	h=To:Subject:From:Message-Id:Date; b=PegJMoLFyvTSVqxV268QeoYrt9OlhdbfM6wWnGXe3sdAb7wKlWO+NWdKe3K9ABuMo7cKT5NvoIMsU6w1oJmXgGnxsE9yYeViau1neILwzyqozPxTEr7BdnOSsGXNHQYAUHQ2RH3loZoD0WifacTk3n/XixruPXoCSWpvx0iIG/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkww3Z07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkww3Z07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2787C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779835353;
	bh=Ug4N/rVa7pKczlmAEzqFEvf1hsY+K0XUWcBm56rvcdA=;
	h=To:Subject:From:Date:From;
	b=pkww3Z07GlK7UThH6ECcVvrc462B1xJlcfBTFm7d2ade8WQaUxTbYs6CohJ4VkAjJ
	 hvux00hEuTI4lWgIF5OssMUhMaSan9oF3BieesbFN45WvYuQq2nHwnQvxNFv/wSTqm
	 pWbF02NTwyVZBLHyofWbwj5opbXRbN1XftEOHEgy9fZGUhM8TmXv55xPxPNbennr/5
	 JmwPTqup5460Jp6DPyg1UkRJ56XTQcSX0xvipTYhc/tYwIrwAbpTyRyTJNkb6xKJjj
	 2ZKdPcoQVcl0tbinRuc5miWFdbuGhIBPIdLTdFtjX0RZT0tiNE5Fw+cFWOJkZsEcR+
	 Pg1w1EC1GLGFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A904FCD5BD5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983535368.3710.8369802980430289944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7a15b881dac0e250168bbc1557d159a11a7b8a2423c7f28493d1fbb51f639d
Date: Tue, 26 May 2026 22:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779835353
