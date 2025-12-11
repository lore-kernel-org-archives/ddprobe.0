Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3F3288C20
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765482175; cv=none; b=JVWvsv9sOtaaZnUStVnbtNyAWOiiGTztf/BGoHL9X3XllYqOGAXttMlgVyUbH9+pQLzxcZAvvilW8vzo4QJUiaxUAMmYrDz+OThxnPYHGt5EDjEQ3JVlA1TKB4HHi1aUS7KbwFKVmFtN95Xa8Gyoh9hnbrkghCtS/QJCh48uvnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765482175; c=relaxed/simple;
	bh=6LirrJnvhD0JALfye5QHOvfp2y8+MbiY8SGcMu/xRuU=;
	h=To:Subject:From:Message-Id:Date; b=C8wH5UeV2M7Syu1ZnQn8Irtl3LECJ62rCZMoJ3J8H5yqX6reUXRyCGT31A8YKRU1vGZ5rww4KDoEmCLSMLaNv3ty8f3hswb+4Dshk1/nDTpdQdS/4GhfQSaDP9KjCeUPgy8tV2GyHmu43QP590n+hvljZVb3uOq9GyH5CtBpfCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncdyvDFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncdyvDFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A456CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765482174;
	bh=6LirrJnvhD0JALfye5QHOvfp2y8+MbiY8SGcMu/xRuU=;
	h=To:Subject:From:Date:From;
	b=ncdyvDFeKRtP7FSFec/7RSEvF25MKc2pbV2SI2MYkYGV7M7xiGU0MF7HFUaYRW9qZ
	 DVbt5L/bOz2E2OUKcTG+Dwujd+0yRTRbPeqBZHzD/rR3aClhynJ9zAcaR52/VjyZZn
	 C3m3vPBVmYIf7evWM3GuJvCgSwzPJ3eUze5Q685bnKB1w2xuKWq/MLe3Mp9n/N7F2w
	 umtDLe38yLURgbsqM4DEmnCkDt5xA+6XWldErw+6y3fMQv0yzQEL5kozs8N1ssMCeW
	 rIISsZB9L3H9xCsBOGf7hmMK1pvrrforQ3lpwkJ8BAY5opRjK/7oNcsti/uDP/hGOj
	 CEf2fNGFTAp4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220ED43341
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548217358.26436.17786113996646284810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331c059f1b34e2b1e30fc685c15225f605025785456b5e426219b620e79680f5
Date: Thu, 11 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765482173
