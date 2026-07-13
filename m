Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A79208D0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783901314; cv=none; b=dFAm/bEYVkz8uQIj/hzNTrK9gx1xqlkv6mmtoScpxv/OVoAXyYbR1s5M1pzy4kFf6vyhqyeJz8Ew3kg3McIBfMkhY95yRmMwG9w+yPfygtCmPg7fY5VdihHpLRIloT0kWaeLDtdTDqNTzVvvVKo6l5I5I5vy53i8kUmq74WHTlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783901314; c=relaxed/simple;
	bh=UsLbnA4uyyFhUZ6wPZn/EQHYt6BY6lW7YT4eJ4rZElU=;
	h=To:Subject:From:Message-Id:Date; b=o8lfH/7VejmRvZtLCmQSi/AEmpRLcff1cTKIYvbZMoRC4flUPwGIjau8blPbwF3glBWZ1/RcKXG7dBVgijm7pSZV6XMHFC+ZOVkqt/mH9OgxwbdFYvzq/vMm/t3D9ldeSQYiG4qF7RLQBJtm6N9NwEdk1v+/wcKMKI+N2BbqUo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVzpCQ7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVzpCQ7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A49C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783901313;
	bh=UsLbnA4uyyFhUZ6wPZn/EQHYt6BY6lW7YT4eJ4rZElU=;
	h=To:Subject:From:Date:From;
	b=LVzpCQ7oXHwBy+m2yBKPM3DJNeQaqq1HrRXSUEzRkNRx3rr74gbU1wwyTpi+WKwhF
	 oBCkPxNsI/rBBblPsf3ZDXxstVw+zlwQPwmv2vbpotGtnciIRzxwmfDvgA8dKam7SD
	 V8H+qp/gwc+rau4aV3kOsBAFRVGpu6JOdmGD/jgGM2E44yTEDam0vrTCdNKudFCXr2
	 keAnnRuyeYfyiaUDGnlfXo+i61hlD+N4v2PnC9qQyZZPq1dlniD/KPOovxWnm1Ws/p
	 HG/mFfGhfFQp7dqYqGzYpmLM5bCg/iK0XDmDu75RO7m2P7tGbaXEBzdv2+1MrXvmx2
	 mcWEFN0fcPL+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD721C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390131368.17388.16444615719442898624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce0f52ff3af3e4399226197e6a16bab8fba48acee4c017f7cc54bb05615fafc
Date: Mon, 13 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783901313
