Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5E51547E3
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724916954; cv=none; b=TqJyb33ordTiHMXGcFFGmbfrnBSNFvJCtamloRTlj01mQBMh1DEyAJtRePRMamkCjG+L4+md8vGRqgGkhyWr56ozsVxauGka24YtigMMjN14W0FTt9pPfyNLBXpgAHJViyRFDz3dSCX2qYqtIE8zLqut5qASDdvTnAQStY0TCik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724916954; c=relaxed/simple;
	bh=z5Z8XDp0uVRKlF1rsi/hlsWh7TGxY67CQj2xZN0m48Y=;
	h=To:Subject:From:Message-Id:Date; b=NyTsIeKxsyRTs7fdrjzOSdesrTD60kya7PiZuxWdV/T5DTF1yJ28oRrmgmLhtcV5cs8RZws9aVW8Brk3lO0nCwRvN8tTiq98+uD7B8JdwngNhUK1xpOKFxA1otrJpTHseiebCK5IuWRNN0KopIdaKsd3+pgFdOARTiIMppqJvPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqzkpQlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqzkpQlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E7BC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724916953;
	bh=z5Z8XDp0uVRKlF1rsi/hlsWh7TGxY67CQj2xZN0m48Y=;
	h=To:Subject:From:Date:From;
	b=mqzkpQlz3dkMi8GcI6GHnNkQLXElRlVTy2F9XD+Ot6buFg+WiHsKLAlP4qA83M3Sz
	 0Ziv7KFoOOgIglUMfef259RlTj9dnkVuHhejCNDQSwg609c3Ip3bGGApfS0rzbqnxy
	 1+J2M6eHytJRl0QiG9ZT0V30K6OKp/oLDxnBqjQNjC1rK1HPUV5PvVYEGbgcTGh5Fc
	 gPueyLs1NRw19HU4TYo1rOTjxv8wiFJuuxEIM+6Wc4qteAiHPPhhGBH/i10jT0V/CR
	 7c69wbMBjZx79i46Dg/VW+TGQ0xAZaiBCgRE8M8MxJBu4d3dq0DsSG+9M0CP6YVzJ5
	 yGS5aj0aoLYAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92976C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172491695359.13179.17273976003419055771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f24bb0cf2952e64e5e7de7db3db90320a175208ac6c5aa91d46bb3301d7df56
Date: Thu, 29 Aug 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724916953
