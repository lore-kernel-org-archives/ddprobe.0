Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153972512F1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750800594; cv=none; b=c8iKdz22UldvtbdpLL49FNtRUhm7T6nT+LiYsjtes/SbN/tBmIiNVul4T23FxMZePYTKJnT4RMxZCo+qpPkHuQ07FPMBc6LmVZh/BAWZBCs7/11BmwaK2ZAsNUGqzTGZSHm5zxH49VJgcsaYX4pq41Mh0U/x1LY+2K+CWbYfXSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750800594; c=relaxed/simple;
	bh=UcD/Mqwx+x2XjQNE92P/Avwdf0cgy5Xx5B4wL1bOe8M=;
	h=To:Subject:From:Message-Id:Date; b=HP/1uEGolRpcS/Be92ajCR9L63S8c+bGyMsyeicpAzW4GkaT2Gpwcv9G325NvKM33eBLoGk5meuk5fhKxyvre+0UuP57GVIs5XwLQtbGmy/sNB90KPHwNIRjkwBDeOgrwcQ2n7Nw0M8SBK6S7Dh2V048j06fdcMNwCF5koRCqSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7XGfytO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7XGfytO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA32EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750800593;
	bh=UcD/Mqwx+x2XjQNE92P/Avwdf0cgy5Xx5B4wL1bOe8M=;
	h=To:Subject:From:Date:From;
	b=X7XGfytORxVpuKsr+a3/cLtj+WrqRJudUDB3wNP9H2hsG+qdfCPiEF8r0FGnqxyRL
	 8+LHfY3NhdNraeMrbyB/4J2ClhajMWYf/BAxEHpn6C7MQYxL2ZqTrYfnEUT6AGUuNk
	 W/i0gd8NmEeCuSP1r5ct7Mo6+glZXEbNY2MEACaMoDT0MByg9irh9QaHxbYJBkSQdg
	 Run1bWU1x4DLVcbS1ImXWLPdx0o+J6Q/++bi2/HsYAyXVWb6QSIqMy3LJIiGjcm7au
	 OKL449DN6BLGU86AxdCkfNSg59UUsKaIykejEPtExuGmNw3pmA7a7Wchb5p3P9Ji1q
	 Yi1RcSo6z2O8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954CFC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080059360.5990.1837217903861501277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0a1693d097d693fa36e43c8fafc089de3ba34a16521b001e33edae8d0c1888
Date: Tue, 24 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750800593
