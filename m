Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D433597B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775522134; cv=none; b=odbxJ7jiq5m7ZaPUEBdiaibveowHl42QH5kD4XDDGOwvQXXADJ3Zu8oa5AF2DpZ069LdCqpOF8ivYilm/CaPNrQjD4UQQemocVIjV1mj/AFFaVgS+iQvjoeufZsbb3Vnv9x87QwPinTMRrLZr09Hez2eabiGg07YSKXDvyokoZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775522134; c=relaxed/simple;
	bh=EbV+7YJaQmuPDdWkv8hSGJ+8EROBv2KCruYcboEN2L0=;
	h=To:Subject:From:Message-Id:Date; b=IQF+Py8IyOZeiLqNFt8av3aZhl1mwg4owfuONAKNBgmUr2kdERTcHNs2RjDc3Ke1+6rRBuhK5jAyM7Jq2HeOZtXSOmtvzHY733+IXuMPpbs5LrMHROIMzMioFyTLu/0CitGroXzsmWbOWbkR3sYLpcvPT/MBp4GbQ+lZdd1+xUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r323OTbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r323OTbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C631BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775522133;
	bh=EbV+7YJaQmuPDdWkv8hSGJ+8EROBv2KCruYcboEN2L0=;
	h=To:Subject:From:Date:From;
	b=r323OTbR4fpD6kqwPAn3zZRX0YHN0DN7UKAPr+1bnOb4Tg5c79bfmimGEZtKIgy8q
	 DarbXDbCMt9dNKPWrduGbkf2tpj1UB3F4j5mBaOlEyMXgMYZATrOXiHxtZbWCajjpM
	 DHADjTjYAd9EVJtJq7rZ158dV0wq/0YcXBM3I9fOI8Z3kwBtxldoYcC0tdWQqlMZ22
	 oTUFLGiApwRiMF7ydRorEXfhEAdFiryeuVwiEnLHQHPQShaemkku0ZdCMfSFrkJ9sB
	 vb5IOnxxYdmSTKAuV6tZ0rVX/Ia/Nv+WthpMwKgB1GhZXsrfSLq1nRz0J/QSFSGQt0
	 MQuck0hRk/xOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FD9FB5175
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552213369.18212.2777886732889588100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de79041aa5447c1b43ca0d8611a2bc59fd3b5fbe483aa8534318d2b8233766dd
Date: Tue, 07 Apr 2026 00:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775522133
