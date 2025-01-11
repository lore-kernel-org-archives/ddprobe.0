Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F58B15B554
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736639754; cv=none; b=Ne4aU8fxD1fUZMmkzd+NU7LQQ1pK0hMBM2NLL4u8XN0evyEU9r4ulXq2hr4XunYP4Uvauorur5GAvHQiRHStlp9E+yViahXJMrZxBsp/CLd6pWAtVdUZueadfiATNz2dMhcRzlhmGCOUDxYaZULHuv7bx87oUAWHpKrpkOMbBF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736639754; c=relaxed/simple;
	bh=4Ln+/LZhFBWHYoq/XT44HnQIe1rWEu32MLXjzeHCG6A=;
	h=To:Subject:From:Message-Id:Date; b=pImcqOtl+VAdTGOOfEGuDKwy2PQHkSjT2KVAhtJwXceL1Ir1qxSZviAKnnwMYC4Uzg7edqadbhyUKnrCSN8l+UYNSMSYSC81BjJMtnCSVMcLPAzEPjiTqzbYUCb83NgjrXaIn6VjuYajflWGrQA09D0dCDWOIuxGyLgMSQIUixI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAs9pEa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAs9pEa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC166C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736639753;
	bh=4Ln+/LZhFBWHYoq/XT44HnQIe1rWEu32MLXjzeHCG6A=;
	h=To:Subject:From:Date:From;
	b=ZAs9pEa1aUMPlUfPJA5DukemrIu7TTm7yHSYAscWcDyCt98vcmJJpla8VofzzC+s3
	 qokdeIwMAiUCxVdES0fbAr3BG5oFWEovZxrItQYw4Bnkbk467ef/a4+OHQ9fuC1qJS
	 NMo2lalNy21ifZFwsLCvy7T9QOWs6uvESP5DHCyMhH/5UyHzxwj0PO8G+NQYpj6w7Z
	 Tecz2EomYrZFbiBQaTBnTfrxtKIrM9TcfJ3TGe+R6UDrRwLvLEGSe+QGShwvH1N/Er
	 SwndCARuCzUB0iUN2ISpYMvLgPk7jeP516rWGRATH6Dbz4plcp7ewmOU4QzlgF5LSa
	 X+o9Ord+EbHuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E0EE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663975359.11348.1837024258271567724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14230f2e9b5af300706f6f7019db5678b37028cd94486b25b873a54dfa85b0f
Date: Sat, 11 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736639753
