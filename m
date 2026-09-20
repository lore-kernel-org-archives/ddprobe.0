Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1B625F7B9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789914034; cv=none; b=MaGDPOTUtAbnmZXmQEOTFJ9DH02CPKNm26ajFKlRxELLV+MnNHzClRAgtPFlmikx38X2abCltEg99y9Z/5rFpGZzrotbeVURxMJBL7+jgJYBhWD7zsGZ6FUEHPAL1pSvrw/DzWngmnLIYP26QS5pgeIXVwKMRyRY0x3ZfLsuAoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789914034; c=relaxed/simple;
	bh=a6ivZG7riqfAohTx7tUAvP+0yKlpEXKpFJy2m1MiQJQ=;
	h=To:Subject:From:Message-Id:Date; b=MndMDHcVGJGV8y9tlTjZunMqY63S1f6eWLTFcvy918iq/82PB7HNYzp5wF/Y5caOpJVHsKDdvPbukhSmQZXN+RQNFE0r9pVx8FiGjrUpsORlz/9ypKWb+lYRBFlA4k7N1yZLOoE6uGQ1axsWPNSbliUSdAO3vb3NGS1+2q/WxCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2sz2Qww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2sz2Qww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40F6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789914033;
	bh=a6ivZG7riqfAohTx7tUAvP+0yKlpEXKpFJy2m1MiQJQ=;
	h=To:Subject:From:Date:From;
	b=l2sz2QwwNC2r+UNa+KA1WOpcL9kLIroKJMLw6ScpWD3Vw/rgE8Qf6EAYv0QRBgDuA
	 xJlkldcLBvapHtLhud6PE9xSFZQZ5x7Ut2Cvqn2uBBvOuu5nRcjo+RS/+is8okyZyg
	 q0tOfukh7sa7U9v7vosCfPCT5BANE0OhAzhDf6ZZvUvAo25cHfTYF+/zdtAVRfn15k
	 pZc2mvaMxjTFLk3k/qLF20UAgvamrxrYA1YxsIXrrFYvgINsIJ7cMSA9f0Nv10+evH
	 iNINZZJyHjYjVxS46TyocxvUgbPGdMRN64nkhyjjJdbakmOWCYa0OvyMeHg9FFm0BA
	 IbdCCSlCvH61w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D1C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991403369.11642.13154069851632143169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814256017ff57ebb3dd1ee7117dac24bc03fa9d5b6e64da8d950e32ce1064409
Date: Sun, 20 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789914033
