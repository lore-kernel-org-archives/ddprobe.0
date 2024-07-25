Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C1A172796
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721894154; cv=none; b=UMBulkcT6/DHZDUCz1q6wxuVqFCGBW+Bk1JnlVJhQurcQjVZePloLMu7uEplBhUlOvBbWqc7ucF78j4wjAGdX53vwfuNtKyPHUelFfGAc03CdMeuL3OuvnEuP2qHadxw+BqHs+0SeDO2LfB4jKLRElwr7g8uNAyJ7YgeQL/QaCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721894154; c=relaxed/simple;
	bh=hn4fgOjNDI63oNd0fK/YZgdXbq/2GBM7ohdLdwTj+bs=;
	h=To:Subject:From:Message-Id:Date; b=cSlUatbuSRx+DI4Cqv1lk4Y/mVoQpqMnzYf5QHPu2YAsGQDUGr//S392iVq24Q6gP/GjXRNSA2IS2w3Yrb2DKDrH4whRevb/2u/46U1SG75Uo1/F0duUR8jSw35LFp+Oj3hnjto7lSBlBCP5nIfVfeHDspELMfj7VOk0NQC8wMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYkkJrhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYkkJrhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1A7C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721894153;
	bh=hn4fgOjNDI63oNd0fK/YZgdXbq/2GBM7ohdLdwTj+bs=;
	h=To:Subject:From:Date:From;
	b=GYkkJrhHXFREBYzmpIUPr3hy7QQL0s1Fw+HFxHzwWAa5cfrV+eh4mkgg5MR93UHsf
	 Ea1U8FgY7oxKBEaHyJ9QABitRlZAZ/BAdXBRlVp0u+sUcJOUcgEM5rSStT5UB6qknW
	 WU37JImjSZtqI0df3Rr3f88RDVhXzZkqmKxAZ6ItcmwZ/Bu3eR97r3B9QZoEIPBEFJ
	 tiNhIly/DPDbif65jcxN4GhRSyDfLuHUuQCO3JCzBb4kVVhGABqF2wd7TxoqCGtWxM
	 /smCXi3xngJyn6JvKiWSSEEU3EDRQys4royjTUC7tr53UAxiBWE2Mf3YKLvGqhMJer
	 pC/ngcWM84FYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9763EC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189415360.4314.2863175791474638400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95c14c7556e8d0558523844f8cb575c5c1f3a9f1c4d0f7da0a044f96e0a729b
Date: Thu, 25 Jul 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721894153
