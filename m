Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C56B41736F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783430914; cv=none; b=U/sGc/6E8640/0H8DrpWB7llx4gyIPhDeGiERFGI6DaOQfDyc9TMdd/LraLqhCLsMkEVR32v4UGDeMcJZv9rdJEIDY1puDh/GOvAW1InBi7CZn6JtxjNCtOCgH2L55XdC/RkCJdUyLs9Zmuci8cS7Z3LmoOxWkdY7tvVVZkO/9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783430914; c=relaxed/simple;
	bh=lrAHV2jPAhWt/cCMcfhb0M6lfTQImSMhjuVjLqpglTA=;
	h=To:Subject:From:Message-Id:Date; b=La3W/4Ur7LvlC46vIc8rIeO5M4rhMP83+7msiun6Kx3z5usY9y++W1Hry/lm5W3scrbw+lhAditib0OAPMKRuSsAOSPu4rY54Z7gZ3I5E2OnDbsV7IVXokVyc+DMoTJWqCi36xwpfM8kvTtaScRpfUzCOgLYSZIsatq6BDMmJ/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3OfS5RL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3OfS5RL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB311C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783430913;
	bh=lrAHV2jPAhWt/cCMcfhb0M6lfTQImSMhjuVjLqpglTA=;
	h=To:Subject:From:Date:From;
	b=t3OfS5RLqFUef9Ehr6gY3BHBe82YO+EiuqNTr0jmX3t7QfszdbyaHeNKBe6JME+5w
	 Y4sUeDxZjYDTV6AiELVv+UUIm0+YnKOWYtJflpTMKxxTV1XQOAlwTHiWR1IxaQc2jy
	 VqubgWFgTLT1cJiwAzaovu0oGRtdMdT9KvSstpq7jZKTY0VLUt1LPwVinOj3HmvPVd
	 1d3yy4OyrCt49N8SLuyyh2rczYxr1KBQbP5XikITzFrwhwlc/cqFKr2iaJj6pgIznQ
	 dDaF50x7GhhwmxlKqeeIreQnMjkpAtxebMKEqINELSi/ZYV3xUp8hN1Ccqy11DcewV
	 bkrM2gFVkF3Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB892C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343091368.31924.11650973429288642892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ac3cec18f8f508c4ae1d00bbdc4e73b24390987f09a6314a84fba0edff813b
Date: Tue, 07 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783430913
