Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCD93715E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720906823; cv=none; b=hb5aqFDXbM0DmnFt68mAqtFByuyMxdkfCB2dZRxHeEDSKVWOHdRqpSjYnUA+mO/7DwXlmJ1HtY4XllUJeqis5y+xPTyboE6pKxzB3nYRzT/UmXc0ouTVccx9xbdNwl/zs/6SWnQrKepbbTAQYLFjwRPZtFOx3HAdG+e5we3vw0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720906823; c=relaxed/simple;
	bh=3yJY8P+AofWssjVuSQtkyCGuqwSIvHA3Bg2ZsVrsPEU=;
	h=To:Subject:From:Message-Id:Date; b=oX+nfXHlUtGrLMf+nTfGYCDHUrbf47Vtdd1JEohEH8IY8iv0ftsEKlKk4+XYM2OQvozRSqSfxa6yVTDMPk5JMdXeqI7oRtZ0l1D4DikY2Sxrg30ILnVphbRRvVf4EF7Kqu+bZ4+LI5GznGcQE5QKPyza75srqLzeCc5xcda2Ljo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pzh1CCmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pzh1CCmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13A7C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720906822;
	bh=3yJY8P+AofWssjVuSQtkyCGuqwSIvHA3Bg2ZsVrsPEU=;
	h=To:Subject:From:Date:From;
	b=Pzh1CCmp+PeIY8Fqr/jbUT5taQPd6aNBD0PmbsDLOoO341ZzUrYOMjVulxrB8dN5B
	 HxDUKQUVZF0hGrvI7Kdzd1y4hdsy2mos+UujTL1ahFHKgz2JBhUcZKHiIB8oOVSHig
	 67SnHUFnmgh8BYTWraNHI8Df8ya4b1QAtn9WuhxYRlnldDXodwhLJ/c4UAXHlHgezA
	 Kb/bfjr10dLiPAqdOWDJl71rdvINVECcb6trWHiCYl+T5ZeGS4XqRClshZqh4gY0po
	 GwAttA4mfWarn2pAL9SvIBiqpE7wxutKRj32cuknyN7RiEJ9MteidhjTCPHibN7IHu
	 P7/7PU4MURgmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC97FC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090682280.16413.13066447350980866305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc8b89ff869404f74d7cc9c8345445dece76ebaef319873078760b7d5b03776
Date: Sat, 13 Jul 2024 21:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720906822
