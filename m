Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926A94A1DEE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790104834; cv=none; b=MM9ZUPJq8bIfIJnXE0sJSc5k/tAgy4m+AzWPT1eI7REYM5LS/QiHSLBC2FghuTicPSjjhmbDO7RP8BQqVNQoF4SHBf7dfSQYSVbbU/Ndv961BpetwQf+52Xg6h4EmfAPp1M8T/4eC37K7L3cfpitoE9ATVxpqjlp1IAignTu+vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790104834; c=relaxed/simple;
	bh=ACKNPYsL0qUfy2wECL0u2gifLpuQSGMincL+T2LRtCU=;
	h=To:Subject:From:Message-Id:Date; b=lWSvDXYVvVI0n+Sj/KQ2PXYlnM11kMOh8p2oNGVezq9wRm9Zx8BaEyQ1fzhizYt7IZRF34DIQ4Bwe21zUHlL7QzQEp2rk1FE0CSHB7oNhKMCadqRwSG/o9jPKaZJVJnnqTSjOzUscYE9yh1Ec7CSMRinIY3nDJRytyGIYV+dvBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZqkK02c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZqkK02c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C2EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790104833;
	bh=ACKNPYsL0qUfy2wECL0u2gifLpuQSGMincL+T2LRtCU=;
	h=To:Subject:From:Date:From;
	b=lZqkK02cyqUSBrr2JL61UNDH6g2VxZCufzkjCFeJABAVoBor6VhuIFOEsVJFSICM3
	 0pITzdixYnMdg8JciQEjOkqYDov+QnekVb5XkXF2jpr1nXYSBrDSigLZr40MwoZiSj
	 VotXr97DReCDW1JqLTFxjw+qHFsOuGptMhzNuWxNy0GqMIleTF3CPr0eLU+DrvfXcn
	 CITcce/Eib0meRruG46t56zaItwJhWW8tO6SY91XvLQoWT8nqqz3683B9mYVVmxoK/
	 XGP8MNZJIbVZsV6/zCANjjN1mBuLj0cdEkGpI9fiacPSTVcLabWZU0lrszLKeO4zeN
	 wtnw3YkAzNwmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE19AC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010483369.27376.15770966912857551474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7f79b0ed1785d88bad8834a27914f3bbc685f71f3893a14b53fb31d614545e
Date: Tue, 22 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790104833
