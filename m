Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4979D2E62B3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776878254; cv=none; b=UxmWA/l7SMwPWjSgzfFr0xBczNHsfiGlNFqrANUUeJFPGjrehTYPWD3opTa/ObtoBD1cau2T1zDaqSkFEvigLxrA0liojq/t9jwpYbCqGks4G/Mthw0OwtR86+PWh2Z+WaRtAXSZRwiwKYPWoS7O2jJBfQFngeS/c09ewQHMmsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776878254; c=relaxed/simple;
	bh=t5FuLI+laaSmsoOCaQdvUy0HGbx6CNczZ56wJODqYek=;
	h=To:Subject:From:Message-Id:Date; b=P4kse7lIfUKN/IzUA2j14byn75/Zs1zGR8LppnwTn6DGyb1zHxb40g8oFMJ2qGExI4hTgxUWKmd2ipIIgbsLysUDrnVG0YnD6/uPno60OhOUzNBzCTc8qJOtnLYe6DJS1JvaxuiFiGHxZXX3a3v/Xv7uJ1JMi/nxwdHF0P+UbVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YT1DCI0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YT1DCI0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BE6C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776878253;
	bh=t5FuLI+laaSmsoOCaQdvUy0HGbx6CNczZ56wJODqYek=;
	h=To:Subject:From:Date:From;
	b=YT1DCI0eN6Zf3/IrKxE9B9jAhGNitHuGyyjuHXFeRdnSAchjzepBzIqOzHYfy8y0F
	 uYWB+AI4OlJmWQaxJ7kfGI9kNjyEsRNP+b2E/e+Rf7APSToB402ffPEh5kN1kiEaxE
	 aoPComEeISMcXKnwRrgRndt5/ckENmz1avJeTlvaWbDJ1JbxJ6BCZMGJqt57VYk3I4
	 y+a612p73cuIZnDyZck3wjf3m7DYRBFoIO9fdFb4Liim3Vk9LeRQhF3N6sz282lXbM
	 XDgpZ5H9GX42eBZhw+nG4BelnVPDImLZI6Y644WIkCX4on3qAEVVLMW66vHNz0R+X4
	 lxxhv+bqKk24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A4FA1FD9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687825368.30460.14885106638372101463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3c34c889159866f32ac5432a8912d80d09d042e48a6e757c7c6d8229993f2e
Date: Wed, 22 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776878253
