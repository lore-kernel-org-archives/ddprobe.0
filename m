Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF21F78E6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764730374; cv=none; b=RLrnPti5HmrR2Vo7T+eaMLed3nKn8tDS0eJbuVj4oXRChY61nR/FMCy0SLaFTAh0XjGrfi+WLy26yazkAZuFzs3Sc7kK5uMWYXRsJCnqt/iklVya6lkGecw3tqFW44M6Va7HX97tyDgXsqKJtCw5aRggz5PtFscHwrFfFiG6TZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764730374; c=relaxed/simple;
	bh=qR/8DDcHzUP+GsCvCzoFx3SMfDqIMRwAek7gfLN1n+A=;
	h=To:Subject:From:Message-Id:Date; b=TToHur2Sx9hC5LpXOZJ+PXoSm40DxyqMLgLvAiP8n1HB47FkLduxsWqPjs+huY5UYtV2oJx85VEfeXgy41muup2zL8O3n537aK2xClchQbhwsIrQjq2heAE8Edzjhs0y0rFAxsPPjwA8T5ipmT6QFX1hPA/c6R5ZW64y6yxjblo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjrZG29t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjrZG29t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EC5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764730373;
	bh=qR/8DDcHzUP+GsCvCzoFx3SMfDqIMRwAek7gfLN1n+A=;
	h=To:Subject:From:Date:From;
	b=pjrZG29tbSPNwh64cevfyZjI1yMO0L9Mp2ckXInoawwbqt4fCaAKyELN0rFeYUwvc
	 Zn361kE3i7kyljzebO1NqjOUt5dae8iuulNkmJgrROp9uMWjC9nJZyG8vhrYrGYNjv
	 EUAEkfXHrLdNLdKS2PxKA3aPPfzAfLU/8O158rV6bRTXhcrU0wVbwN2WAKvuegJvv8
	 RbA9iEwTTj4gTKcBgixwf2mayLP2r0mq3ObvLRM4g8Y7rOSQ1N+yOy/9IEQp54ljO2
	 udncsEkXLUdW9aeYtBFACGKi+2Rh8RNG5/3AzD+uV3Zdl1LcI4pu1SgOoQomRBFLTD
	 Ojex7biCB/2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F65D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473037358.15732.4625670350018003026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcf5acd9feef97603b68576a9fb91d20b7f2e8e3f3f446c33b6faf4f42e4c58
Date: Wed, 03 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764730373
