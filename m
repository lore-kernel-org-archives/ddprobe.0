Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F303ACF00
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787516434; cv=none; b=fPODl9W06HiOhvKbgn90yqfcQIw4iT/Do+I4GefAE9POm+ZRqA18PU+iaaCNLZlT6jRa5DoDcDcb/4H+CwQg4AevSueTIL4lFKmVRQG5RhVbzQoxPsNNmCM2K+vH4AE8qay6wj+gPvWH77wVsWXNhPwk6dZSV88mD58ugnv1lVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787516434; c=relaxed/simple;
	bh=JdeMalGYYWV5WDmimGW1oXZkYfqNNXvmIFraGhszPOA=;
	h=To:Subject:From:Message-Id:Date; b=Pqv0Le1u/vVA6SvO2yXAU67wylcQ0Jb1ZusWbAfHQ9b9L5+XokN4zVr+ZWr7TV8nb6py2MQJaZjbjKcAjTBUgv2W+973pfNr+kF/dXPregfEH60ZOFeY7WIY31I1BeFVhs0B14qEI4ppke01p5UhCw9tZlK4j8hythfOtHR6eqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sb1Kl5dq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sb1Kl5dq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA191C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787516433;
	bh=JdeMalGYYWV5WDmimGW1oXZkYfqNNXvmIFraGhszPOA=;
	h=To:Subject:From:Date:From;
	b=sb1Kl5dqfLPXBXQqAE/Wlv/yyOgMgJ1i90EFHF5QQI7zFao/Re2hXeXP7k9KaJvcb
	 gtCXHhuwi05WVYWaURpRa6204QxLLJqoCvLhgIseJCLnpLMYbnGwVSRjWm3zISPSPc
	 UoXor1qLbIoPYJksZ92+nfFN2K+LaBchJltzu40hk03jGQWzo40vYGL99k5pLZLvmF
	 7wSHIKl31gpPS3NSztYwQhpeOvRO22GnlEHo2U6nvPqlLgurt4QtLHvg25eGFdp9nM
	 Whu44+WRXiieL6IAoj0zKwW0/Ym45aRtSQzyTyGtIc6G6uWfpB60nc1ZbpZaHJEFVK
	 DyZf/xlp0seMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03A2C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751643368.29850.16666446428927291903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a056585bd837a79781a1fe3f88f24d7063a522409da172686a29712824613a6f
Date: Sun, 23 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787516433
