Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D37FE571
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756096194; cv=none; b=csyWFtpDTZCLxxf/QbKWA0l03abvAkYGECxZ//KgyxKLni5vd/hA+CTc9lS2IrJm8QCcnIfp/sUgPc2lK+azF9cVhHN5gEiAtBc0tzu80k00pxvrnId86BUOrJxar8cLXDGHmr1b0itPylcP+1rpx/8aALNl5fRk2zqSe30bpUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756096194; c=relaxed/simple;
	bh=jaR4O+CgJEc/NqabIMr7UgF9oGuiWEvXS/gWPTpgtwM=;
	h=To:Subject:From:Message-Id:Date; b=urzKJGB+F5YuzF5IukASbx8wTs1aHj8+3dlwLJzafHGhLYwY/Ac4bVCygV6/BqeWabCkszCCwcBGtq4A/ipqZLM5BJvJcdfCmHbzCbzeaEXnoaFO9iJru5v5xA/nsDH5g19xtagYYNPWBFMMwqhq4N1kL1O6lOceNe8rPXbI5Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LseUvsaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LseUvsaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CBCC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756096193;
	bh=jaR4O+CgJEc/NqabIMr7UgF9oGuiWEvXS/gWPTpgtwM=;
	h=To:Subject:From:Date:From;
	b=LseUvsaQTN3hrc6PDKXL4XldJVWSNcPmRU2sHGNMH+/5vb6PbLCU9ASaEbnTyO+nt
	 1MVsiTZY+lm+6uYqucWFZI3dElmdB2pv5sC1uTb0ewtAwK2vErNExC1zXLHvEzyhYd
	 rKgLQB5dR6mR60/UoQw3laM7fuqBrbYBz3GN7+gW+tbUqVHNcSvsgMF1keGnhCYcEO
	 FT2oFJtShl1u7LFla59ZovRbiEkzLbhEjwUjdzFZtoMPlKuQLdEoLP1xqhB2bYVgJ0
	 F3GR2m3Pkr5krqm5RMA/a/Fmq3vvDdN452mEAcEaSX+6VnR6touGk5qvfoJ/6nZZDQ
	 ZmFj++EWNS4NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9216FCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609619357.26875.7730489700817001385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f883a3da38f25cbed00373af9755f1ea523859e27216fb109f0622c94640a23f
Date: Mon, 25 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756096193
