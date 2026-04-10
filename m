Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E04347C6
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775846854; cv=none; b=EqDSv56yXwiiJqHgKG8lYjdyQ7Txiu5zXs7KeJPVCmqUUXK0x0jKTl8jd8bbvWw1ZryV16p5xf3yUvP2XgBqQZHfD+LRdz1yQawjgCJz7WuAYJDVTz6yGVYYrWFtDl4XN3Ib34kMlm/SGj8nUeOwchjGCAoCDbMK9i+jGHovqIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775846854; c=relaxed/simple;
	bh=ssYCzHO0+XLo89Nh1xnwsv6J/9TxVi2q3NdpHyqWpFM=;
	h=To:Subject:From:Message-Id:Date; b=f+Y1x8MFqcNqFpeOoEURpuZGLcLygG2B1l9glp+lgBbFOqHad+ScedKnp+0lEqcSHoNm29a/1OAXha2ebpLud7f5VgG116kruf38gckO0vUIy7TuhSH/WGE9DzM2Q+rsq0DEVVVO7ptVA3yBUOsA4WKP9buR9ofWnbhTMl9oMoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwtpPRMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwtpPRMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30FFC19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775846853;
	bh=ssYCzHO0+XLo89Nh1xnwsv6J/9TxVi2q3NdpHyqWpFM=;
	h=To:Subject:From:Date:From;
	b=IwtpPRMyY32NZNWbi7xYHjyInBUKLlVV91A4RNF3JGEaNU+P7p1kbp6OQAwiC+0c+
	 +KpbwP1+1lSp0iA41T1/xoCmphWpWyrFpG3o+BCVlKYAB6OfoxxGZnVH9MHluroP1b
	 Cq8nL342G0U5iKDRmJ4sNwg+STr1u/Sn0yPjbayPs2n9AZP+2bv6A6Wknfb0FDqFS+
	 cLL2f4VX5ZvxD1da9uOfT3ddY8Xqbou8bAlZFDPfbfUUkDzInb8e+/NbKKjP1ZuWUg
	 bx3aNxVX0JO3FB/UY4L307WHTGZySxzzWLSh+u8AB1+NWMzJ2+WpQ712o4qu7ItCSt
	 EM9ASJ+3jA5gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0234F459FC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584685368.19363.487526523125150140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8d4d5a7201e2c440beff405eb4bee5eb8df59a1753e08ff47f57eda27a8cf3
Date: Fri, 10 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775846853
