Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E14214A602
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718642303; cv=none; b=QIMe+4v/0UisRhXKxanV46kWlwEXN2BOsDur06ImxWZ9bTyLLtlquEulOhk/9Re+0B1P66atnJBPAjGp6M3t8BFxywqAHK03xXVHLmmdafdkqN0bXfJMZuvt2a4ShZ0pxb6PzeXDRb0o+ILru+ym+xUllGF4ls95Cx96ohCwtyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718642303; c=relaxed/simple;
	bh=GpDdzbFsuaYkMjkcobYW8Y1T8acj7lvRTMHOAW7a//s=;
	h=To:Subject:From:Message-Id:Date; b=H0p6YaE+1Nimg8+ADViAsbkhI011akKaH/OemEemL3Y/qi9KbNPMAU61Jv7xrBL/qFhxKqc3sevVJujnAI4Kb4AwJ3wD+zPvUYvhVY1DIWaVaEC3tyyFGZUVm1m9XEBppAnDjJYtDPXLUnSusm5ID25JN52DYB2vPEwBhVlN0FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1a0oiyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1a0oiyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45F8C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718642302;
	bh=GpDdzbFsuaYkMjkcobYW8Y1T8acj7lvRTMHOAW7a//s=;
	h=To:Subject:From:Date:From;
	b=g1a0oiyI/A3T4J3YQdgzv2uQzw99uXIqlgl1m0OVggzHbqQNKdqVELPanvpayvocT
	 vuiUdcGnXR8hXOHrBXGE+vzwZmljumaNFFBQZ/74sOnNTtrQBApdKKyTSv7nFJKhcm
	 htJkJ261ywovDiMEMTz0mm8rbqGy8+I4Rhl+VwA7pJTx/sYSFc9w3vnvDjcKOjRl2V
	 6aA5up31+1mpV489EISulgRVDkSr+L1aN0EINuKEM8oygw9mFlPjTuZBpz4w0KkOGX
	 TiCMitzallhei4oQWjev0O03839TxM6/CHSb6fFwDh6YByEAV334BikMv3nA9vXsE7
	 XKLxw4McqRPNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18FAC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864230278.14385.14377214216106798568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d1d50be18bca64fe96fea3701eb0e39b407605a84891fb73f832253b828713
Date: Mon, 17 Jun 2024 16:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718642302
