Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1481E81732
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769664834; cv=none; b=P9FsupZSsegbqpGOPRD7zsctL53LvdDcnYNd/ycEmJVrb2qk2zM9Ye8idS+5utC5DmwmD4DdOYSSlh56Iv0zBL+oo6e3pdu6aPSiScjh8yXFNraPU8dpOeRR+/F4eAGrT+rlfyBuHwNQg0GQ3JXpq1Egd7T3yRtgN/UZUp98GSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769664834; c=relaxed/simple;
	bh=B1jgk6hEXSmeLIRMYXRmGZtzM1RuG3BFO4dzSY2LViA=;
	h=To:Subject:From:Message-Id:Date; b=OmJFX5e4/mStmlj/MUu1k341MT8MsMh2iTpNBT7cbHbt0xIcWNaVCO5ds4xe/hppb7HAf2ODmvOux3FKe2lhE27vXTjjUQROKoQS+lb1vi0CDhjbQRxluhZwliNpqDn4GfTs/IWelubPIxAHkWwASGZyx7e0uNpLj2SvNMAOHbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrxxpBEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrxxpBEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A64C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769664833;
	bh=B1jgk6hEXSmeLIRMYXRmGZtzM1RuG3BFO4dzSY2LViA=;
	h=To:Subject:From:Date:From;
	b=CrxxpBEkID0k3tNzkS1rDxkN9ICPizxKE7fx2hLtuikRGF821QrWRVZATiKgeFG2T
	 cq8WSRjeYI9uP7LH0eWvgnsBjVNaQfmF6dMqG0gqYh29vIjI0qpPcZZ6UWi3uITcPs
	 F56Y5IwgvEQ/uQtJIQtx2SDmGUXjXyLxtUlu00IRm2KuXtfrQMCUJqA2w9HX53Y7vJ
	 1neZ/6dH1tpuzg3ShCQ+t0u3LWK4x/5CNp0KjV8Yj48bGlscx3pFJJh7uQuEBtWpoZ
	 WXHdXA9qL0c7pRNYvM4Qy0JETmM8CMgaEFauuOiJ2j484BClZpoK3paZL71Yjjgx6P
	 qFV7xNlNkEqRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F0D3569F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966483358.26522.5990024285923941850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8176b053521b22e21e31bf7fc21f75c61389147aa7d365903458588170c66161
Date: Thu, 29 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769664833
