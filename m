Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A1B154BF5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745813394; cv=none; b=X9YsFOSEIzk3mIOJlilatiLb7Zvltt/jEfOVIu7sRjIxFDHpXOLCsy/eq2pAoi2HWebHoKiwlIM0g8KS+64VlVq9RfjZN87IBtQSDUjliuOGA3p/407e0CiV8nsTOUwK0OWTBfDuUDm75jeodGKNVSiRnHKdNu2fNKjHaGszsXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745813394; c=relaxed/simple;
	bh=mBut1OpSoo96oedZrc0dRUQ8Qg7toaWMGNxP0rjnuw4=;
	h=To:Subject:From:Message-Id:Date; b=X2zVefg9+MW5VqAUmrabY5DkZrb7whftQw/ho3Rhk2rUTVqMlXAWaXeS7pFfZS0g2v6rKc9eHBcB64R1+iHOfBAd+UJfYbasKMSO/k+aLLMW6Ne7pCNaG2Mb8HsroiFHWV18VjNucGoJyj4Ctih2ItHOd81e126S0fpscvR0GCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNoNZqFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNoNZqFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12FBC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745813393;
	bh=mBut1OpSoo96oedZrc0dRUQ8Qg7toaWMGNxP0rjnuw4=;
	h=To:Subject:From:Date:From;
	b=CNoNZqFIOv1hx7scwchbCblCPCJRlnoGL+TCzXhtak7O85UKF3nXmsb/rmHI5y1rg
	 cJobbygBBWLYs7N/fCzyv4ND4SP5G2DQ3zpJTx8v4SvdoY4E6mWoiSi7MfR5gYrGin
	 uoEMO1yiE1eXajmPABSt2LeuEYYjsu+EqNf6Mvt0FYucVeMlrABN3wRmEGwP5zNk6b
	 b6cgV1tDWfxRUkiJQdgz59YxgVYUTLwE2wBsMIVhlxLGkKaHGMEiDIPDoLuAVixGUp
	 i09SBmIczDeQ6t9PDY+tuQRiL269yOMdlZV+Vy+Jr16ltPphK2ua3BEDocqWu6mttm
	 bZikdbSd9QUUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F575C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581339357.26926.16217844525670066513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee513b447977489176cb1aafeb88d3977cb05e0061bb76537c32c58538092ba
Date: Mon, 28 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745813393
