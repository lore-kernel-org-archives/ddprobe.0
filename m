Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C28C17993
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780445074; cv=none; b=XOAfYR6/XmkuJ9RF+dRy7tZ2uZ2io3X0VsJ5BbXwjaxduuC3phwhHu1d2qp8kWmo1Q+CxrodPqg+RjeMxqy48PIicqnOWy+KiKoC8GfXMxDNlM4hRxslkO5a2fO2DO5mK2lb5JJit6GGRDllcBPi74BtJPvpJkoE8kG+HcK8qhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780445074; c=relaxed/simple;
	bh=R94i0/rfl7RK8wbN4eOgfjpGGW+YV0Z8L288oQ899i0=;
	h=To:Subject:From:Message-Id:Date; b=HDdS6so3Ozc+LQfXkS79HB9GXYPiWwp3E/xDOYp3MSbGKyrMG/CG0SP5G7SXKM+RHGoPVObh2CazIvPGV47HTTY12gdx0QpWZGsF9Q9SrAAT/V0ynUE8+oK/0VIgzhe0V3ccdx/P3mOWoOCwRucGEcbfwrVC9Cy723rIh46ZD9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jbe5uCOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jbe5uCOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4462C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780445073;
	bh=R94i0/rfl7RK8wbN4eOgfjpGGW+YV0Z8L288oQ899i0=;
	h=To:Subject:From:Date:From;
	b=Jbe5uCOsoy+OYjZMBYn1/ELqfI/0LuUk6OyFIYtuAbehKMW7jkgRixIIwJgvPJIsF
	 Ivy0EBUjuR4WRidqJppLkInomLtlrRbd7dmFuCgu2UY/4YuatnplA7cPs2Rwx9wEjx
	 slb8WAdRv4vY2c2DCyk+TI7zSWPuUm++N4WK0Xn96pyDyM3R0+G02it6qyKZW8QupY
	 +3kq1XyJCONxHP6dlvZEIUJ346ZobsKzgejxryh4ctzjunLcg6K/RECxBGoDqUd3Kv
	 4+MiPqpHSwPabjCZDuo9rLqvPEBNrNQ+XC/WS8HsXJgNofTU1Zzo37UOE/kHaYVL0E
	 cNK+wrOr0x+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AFECD6E68
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044507373.8087.3118445115086964699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732c252a6dafac0c879796985c5c719043c77031028498aba9f91cfe1d64ac23
Date: Wed, 03 Jun 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780445073
