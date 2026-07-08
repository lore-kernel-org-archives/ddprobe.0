Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5332B439354
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783525714; cv=none; b=D3UR5mbAAIYBCgj/zsFtCylaaUtmSx59k/J99+CZCvBlWMExO3eS2mVDHPBjZ1cFmcwjVHSBEO4t85tyxKwNV8+nUK6KRcsosLU3ji6HM8HqiyYo13yZk9WMdzOBtjyrpraBaRTORcB3l9JLqeo48vZhIRJlN8BbL96m/weCcTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783525714; c=relaxed/simple;
	bh=sTY2UG+eE4v43r7P6tkiySLRvCNoXYYsOXi3iyrfrDE=;
	h=To:Subject:From:Message-Id:Date; b=lGEJXqvMEMyFJgW8uzfcCEMKk+iQFNj4oYi93iQwqwZzIc2zOyziVi/zqZ0M0t1AgnHU0VfbzCceMnuBjog11pN63EEriopEgyaEOUmCRsHx3dLnxrkI2Z7M9sSy0yU0v8nIMc9suqYjHQrMLmo82NS5ItrOafI1Kx0KqHL9Tsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSIPfIsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSIPfIsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D077CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783525713;
	bh=sTY2UG+eE4v43r7P6tkiySLRvCNoXYYsOXi3iyrfrDE=;
	h=To:Subject:From:Date:From;
	b=LSIPfIszOD+nRGs+XiGThH1JyrvaC3FDvmduoVBsgieEzYYwMPa9yt4L/2ZJzMqva
	 lANNxtV3AIPXyFqMXyuMZLPGp2MuFL5TxkDWKNE8fEeVvz6IoUtZSbnaG8/YLrOEEO
	 LEs30VfDnT5kO9PJcEvdOlFJ/jCF67/99BujmuP53gYYOflcg1p52oN2XUA9kgeglK
	 6LvyPU4t7+vbN+fAOFYGYf570QKNqdUPedAKpI99JphZMlUFO/a40LNx16XU4u8tHt
	 aiooMznLn74wcyOnYy4CWoDZ1UX+WcHR7IcyA8CIo9e46bwDa4Lrzdn9+Ti6i7HssO
	 LM4ViobnCTI2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5AC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352571368.949.338066161561055153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514a5b51265f2c5a00773869789e80f75083c56cf4c6b96bb39ce4edd091bd6f
Date: Wed, 08 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783525713
