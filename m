Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292292951BF
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745916594; cv=none; b=t7evcjHRkAyeHxQqkqZtXjAV/rMICweq4BC8+Pg2GFz0DtNA9Gm15/KBoITifNAUvjrSlJjOkJnyAp9RZDathAqIzeSpwP4gzoOAWQi+y15/c6MDZVhpOxEhhgK/ryAfpX9RcEx6jUP5aGdts3oM2rLGKfD4uCTI7qIxNHBsxuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745916594; c=relaxed/simple;
	bh=lJhcaVK0H2AjaaECWhaZo1OR6Wmn3T3RA4mR4FmjR8Q=;
	h=To:Subject:From:Message-Id:Date; b=V8iZoLIhSNyJ8dvCQyuGUhBMZ4EjagiOS7Uq3JA5h0dIB1y2cCsKBy6gR+39de64SkawyFSBYphWRnOxfgLGwBZJFoDKNDPPTqSZEJs6ho2t2m4vx6srdaJVPTvINtO8pwohuk5tak0/hhExb+1IEcTpghaTF5US2bMI4xRuk8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBrHGlCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBrHGlCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73CFC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745916593;
	bh=lJhcaVK0H2AjaaECWhaZo1OR6Wmn3T3RA4mR4FmjR8Q=;
	h=To:Subject:From:Date:From;
	b=PBrHGlCBKX2LtkQC5neqADfpI0WbCThRG60yUV6mXJCNkQU3LVMJzQ3Fv5MbCYfVR
	 4q3nSdCVYvyfnAhbT6+OeAJYkXCEj4DHy7SPYaJqaY+CClkCi7jZYfLHUU4rjddw3/
	 9lyhvuhdF1bjunFzaoO+0esag8oAyUSK/fPKoNvTKriphDG0EDdpRjaGOUHSGi1bYS
	 E7+OohC756IqqjaP3P1WvLfcAd+lBFUj0Op1rmM2Uqg/wI1pAFmUNOtrff8+aADat5
	 7qAkJzqetA5BCtT/KJ4opN+Nm/yWooOTWNvm5fFDqzEiH5t0aZl+rupb80ETiNcFJY
	 wUZfu/TH5KEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DAC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591659358.19108.3292149253413309189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7382d248981e61e352a6d1f4eae725c45899fdd8675cccf3886f4726f28df428
Date: Tue, 29 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745916593
