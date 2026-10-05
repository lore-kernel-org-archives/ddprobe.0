Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585751A6817
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791177034; cv=none; b=CphgqPdsTmg2rKPmLJkrUMEXRtEBUMxxWpvYgSoWcVa6vd/59iGFi1UG/uIjf1/1FenGAxT7sstZEYk1OJEk72QmIcsNhSetwEIPpp10yoiRGQE3pae1gFO5WFVcmJxKzBmG8EbhKnXDUvfg9ZzBW8sIcejn8voPV25jkbLPGYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791177034; c=relaxed/simple;
	bh=aX8//UMzRQPAhhYUe2Q+dCTwTMQdtY5Th2Q5/oEE4/E=;
	h=To:Subject:From:Message-Id:Date; b=BKp11cPTaQIblnVD8yxFXK6YluMcvQXmCI3AxGHr/pVPa5xQoqr+RLCpwtnbmgI7uETQ187bPwwACOwoGIWV5MjmJZ7oMzlrIV4h1UOuQ8F3R9qZCqPUkr++/KzDKVLfWXYPggEVZER+PKLhTAL+j6y2nvr6pfrbVjJ+MGChzLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujkmgPI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujkmgPI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA391C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791177033;
	bh=aX8//UMzRQPAhhYUe2Q+dCTwTMQdtY5Th2Q5/oEE4/E=;
	h=To:Subject:From:Date:From;
	b=ujkmgPI07/79Czd2PPue9s0zDBF+Z1zJ4X5hv/WOgI29UCmrsCtvRKv0EFFnEJtvI
	 XzOpqRifQDFu9vSAuiOf285gxGwaEQYgOoosPB0kXfbY/KhnJAzHwlv+Kmc8t89nD/
	 jBuwdUcEhwpnJUByaB7Mkbe7RIhO0csfL07xJA/usHcFBVEAWNA/CNL/bNq/Dv9HWY
	 8qzIv/FkS1/GhI/dEDYjB2msBdDsXPydcFfPmBznoHOPUPipujfqItrqnaAHTIRo60
	 Hv0uIQHe7CrISk39xDYJb4Af2FN+3BaivaNf980U6wZ9L8InKzpTwnZLmFLfpY8kFo
	 0d8TtTaALaI4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9CECA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117703369.28182.13587597242195115460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750f83d794802bc6ae55850131a5010e86c21b36bb829b69f1c11613c4e0e1d4
Date: Mon, 05 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791177033
