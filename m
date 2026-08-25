Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6586FC3
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787625034; cv=none; b=MteQQkmzlD8C9+twPWWSkVEmwoewYN1grvtT8BBEqDN3HOW742OUYY+h9VvY6IgpRgKxzXIza0mWPX0rasDt+uIZO0e/wGbeVQhybH1orSHklRPOvm5tdo+9miO5xBcfCkd5+kdQEHvR2mFZL4F1YNl9LbBT43ppXMbDYwwe08Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787625034; c=relaxed/simple;
	bh=uyGn7Y3rLfh/9aZ9OJvOJLsHfyzsLEBKkfntsJRxW5o=;
	h=To:Subject:From:Message-Id:Date; b=h829fyyRf7uJnlRy/aa3OaiH8AvRdDaRq8+FDiPhA0arWv/pnVBtFmavLgHe2iz0vKIPfT0K+8IdcZZ/WTfSbZPQdxtwGnmRXJLsuKIFWCtUt7e4TxozO9J9gkfCOvIBP8W+Zz1wi4060x4bsf9uIS3yqp9tKd6wd9yCPgw/YhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GA4LAErc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GA4LAErc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD34C19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787625033;
	bh=uyGn7Y3rLfh/9aZ9OJvOJLsHfyzsLEBKkfntsJRxW5o=;
	h=To:Subject:From:Date:From;
	b=GA4LAErcvzbwk1j9cSc4HdNYd31/Fz+n+6UhsMX2uW9dUI8JwANrIlIIKHnWPNFAD
	 MnmiD0nUvTQN/FqrAiM3f0g9rxnaLm8r+YYpJidHqFnHpifs9xV8SsHZ33p9AVuTTK
	 67GEk2G4G1E+2CRERxP+xdnAozdI2Ft3l2axSo7Qmcy8AdnWJBLobydZTYp/3/tiEZ
	 fElQsKpMmxPeNR2IZ/UWEyFsd0n+SSv7VlcIFC6qZVmlgRsYP/pLwVOmY5GFqW5TJA
	 aixdy2shl/AgefdzssArHA0lYLaVzJ9rbObD4xfdz++YnbIxjM0fsL1AdOHcwkaCeI
	 3P1Pim/KcqDxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97FAC5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762503368.19117.620926330089273392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 118feca6e11a23ac32f2eb00b13699a90249cd3f279389a9882c05a24ed8e782
Date: Tue, 25 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787625033
