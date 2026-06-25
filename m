Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B30A271456
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782375454; cv=none; b=JMslR3H2BrFJfbB0ooP0G1ypQ/FPkigTGMDE/2C820/0/cw/72L3WBXqvPWeZL09qviki91KmWqh6FUNt6gyDuRGs+9WN2GhQdRiluxd5naB/yX24lsJGs2HgkMX0zqjT75/VcL8gqdprU/BdyPNu98tzYrQ8Qk2DoDf8t3Dmak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782375454; c=relaxed/simple;
	bh=D6VZ9b3WDau11xQcZH/Rw1rAuwNDAX6SsokV5DTV0+Y=;
	h=To:Subject:From:Message-Id:Date; b=UEe+St2GErl8wakdDdRzIg1Oz+JGUq6VWd45sODiz/xvNV5kSdQ9nm8NVxyNDCBvsqmLLrwV3zevyAa3vwAvVWoQO8cr0vib++g2ym3+fw089wV+SDWD9V0N004B8r1MWKPJdr1dVZhfaRWPLbLXWHreBKWKxk7nTuYahzXrI1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhuWbuCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhuWbuCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDA2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782375453;
	bh=D6VZ9b3WDau11xQcZH/Rw1rAuwNDAX6SsokV5DTV0+Y=;
	h=To:Subject:From:Date:From;
	b=FhuWbuCl4W4LeNYEonVFUQ73euP0QK58dTPnKQ2MNi4GVe+aWyu7jQhh0jmjZLFoM
	 Szn37d1V6c07287NVXn9DA2Wa58TzAS40/UfLqMnYDiKtdAl+NUVVaQbmXPN+0MXpF
	 DcgyIvOtxwVAVqFxJApwVBmpUzPMTu7b0Xf/G/PHwHwTovVUf6yrJqgcEEYWPArNp6
	 COxwWLFk9XyIJqvsa5h0tzG+34dj8jWa+ICGcurYn27Iiv5YnT3jicFVtbufbWhMKY
	 nu0R1Ij7wY4VPN6sZsV0ucigKt3lkutGNwKqy5ikZrLBOGXFgFiuNRTNbwWoYLDVO2
	 2l0mdYQcw1wug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2576CDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237545372.17739.1041185516220469509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86c179cdcdc4fd767383d44fcb40db9a92ee993f4167eef96201cf46bf271f7
Date: Thu, 25 Jun 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782375453
