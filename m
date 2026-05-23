Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3895CDF1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779579154; cv=none; b=CNN+nQDt3owYITlvFQloIvpULvc81gNdxUFJQ3gqZ29+hw3fxGu4M7FDPvegX4rdELJ0mA3cK9sC48KSGh0ec2CjnyEF76+wl52ic1CXsV3jVO2aNY+Nk4eGnyLlO3dXHv+gyuVVC7HeAHwUMXSaIjFSL7iBs6oxJRhIJHPNBss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779579154; c=relaxed/simple;
	bh=18iIXpuNtGBQ4+/WTytCa73KaDPhSpYXUdiLeZ4ILMk=;
	h=To:Subject:From:Message-Id:Date; b=CHsUR2kKXivBfwn85s8x8sqgvB/TkFnZ5A7cVSyjyOP0jRRm4DXPpBFiicjiOtaA4QuKRcx9vcp+xJ4eEZvggo3xadjqGaVOIFs+hmli8tBOHRnM4VIWrt/AD9Jk10G/weLkG72S+VMsqF+KvN7CIQ5V/1PGtRCQk+Ujh+b6/4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLbmAxCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLbmAxCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D748AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779579153;
	bh=18iIXpuNtGBQ4+/WTytCa73KaDPhSpYXUdiLeZ4ILMk=;
	h=To:Subject:From:Date:From;
	b=BLbmAxCOnnjf36UNf7C3zGLAh1FkXYsslqLixA4rzy3AqjvxtuPGeR08N4GTQlwEv
	 Szzfrt79fCNR8ETivE/yuhNaPQHKvQPw0G3eRaYFk69VFgnQFawLc4WsnhCtRxEjDe
	 TaJtlR5SgPBJYiSrj9JxCv0VepBJoZnMGUDoGGLcbK+WDIuP6CG0jCUz5qpuNe0/qF
	 mMOvsqMcIUw0MzoHdTh1iCq9EbeAabXvY6JxBHsQgqZ/a5FhSikA0GUPr4VJuixyU2
	 K8lm0yIg/m9WbExUNnRou5WEfFGvCCx00CzXz/VH85WJuyAZvWqOK5EgOrmAdSLHfu
	 m/g7/5ecULmyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A97CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957915368.29916.16339061777010249541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2ae04095d94ef1df06c1209a87f0dfd35df3f275038f9c2cd17c3b32a9cef4
Date: Sat, 23 May 2026 23:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779579153
