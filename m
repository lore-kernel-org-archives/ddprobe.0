Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AC7227B9F
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760824194; cv=none; b=mnBL7vWph0I/fIngj7CHrr4g95fMkWbF78U5Gj7hZdwO2PTx0F95BjkZPaAPm5CYeem6PW+ghfC+0K1EziYBoVlU+iQyU7gpw6Bxu7VC/32yQv7ca8yGAjGTw2jIIe6Kb1R9RCFRSnndXl+D5+trqCjwfDwlqdUXkGDvjPHbYmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760824194; c=relaxed/simple;
	bh=PrYaWy9wpysJEYMfMJgI3Evtc5041rpNKhmEse4ykO4=;
	h=To:Subject:From:Message-Id:Date; b=saCeHyabnHUdhg8iZ+5fekO2Ep5ZDoPKu23bH7+8fxkHUlkwvG/AYwcmL5sn0bhwQ9LB/SIaQ3VgnbXjwVjQJxocapHT9D435mANy2r5aYEdh4zmvhhrZcq1393E5TsGhkPEaAW0UozOiGROV2/KXbYupG3p8E2HwdOZnbAMSyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhAQP/sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhAQP/sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26F2C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760824193;
	bh=PrYaWy9wpysJEYMfMJgI3Evtc5041rpNKhmEse4ykO4=;
	h=To:Subject:From:Date:From;
	b=jhAQP/sjXEqseYIZkpgzl8drzzqkQVvmnxx7YLPsksTvSa/AQiEibsgolbzm3Ma6o
	 d01hSMdwb6ovv1UU4sGaD6R3w0HxRq55LOY4OpZjmsGAMx5s42ZaB3yKVBcUcp71aO
	 iXJgnkxf58kT32gwkPJjgek0hrp96Nx2Qdu07MvQ6/mcmPhg18ikRfoz7HGc23nWcZ
	 xnqIreqbqFd8t6sttKwksFiL9kcdevrUNe2DPXndbcns9+gHpzbn5UOHTpBsco0fph
	 UZQJlWTkTd0bYF/zKdrAxtKcGooZD3KoJyKP8qBK5nYJy35UG48l43T+oAB+ASy367
	 feSrCNKlq4l/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD02CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082419358.4715.6731719337800864486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0216315be2a5cdc109fcae164cfa1978d8e5954f712db114287f22ca508a1465
Date: Sat, 18 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760824193
