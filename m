Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116C82E1EE5
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772392494; cv=none; b=sW3bqRadM2YDCQSliZB15WEruNf155gL7kEKzem2ReKRSzoYVOa8OBRBaPInueyRvU0AYUsjImrASEMsR1znDFj9nJnN6r7zIOHDwTLvRsxS2Y1q5/yOATIK6NKVsmt4Q98RU18q2H20kyVO5yEvZPdSt5U33N5y66/qlcpAzpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772392494; c=relaxed/simple;
	bh=xCo7bRfK4PT61Fd9ou1Uj6nPKt9/ROFR10Dz6wqyvog=;
	h=To:Subject:From:Message-Id:Date; b=XfGLElbX8bWssHvlu1jyM0wyoMnS3XO5o/jXhhzfWtnTSDoqiI2H9cwnxCqfmvoFF90900OBRK3Lbq9GsFGsKOZv4nyOKYuVtII2SRFnwcTdJvH4vot6H6k1BLTD4meJ4H7bWzTSA5UoOEG54laObMqxtREDZZEj83PB7qssSq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaK/e70F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaK/e70F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94E9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772392493;
	bh=xCo7bRfK4PT61Fd9ou1Uj6nPKt9/ROFR10Dz6wqyvog=;
	h=To:Subject:From:Date:From;
	b=JaK/e70FYi/qsN5/qi3kahMa8pYxziqSdpOpNFMMqXuedNa2iB+OA1hrPxQ7L4QBX
	 qlRaf8mt370HgbjNpPAeiPLwe/Kjn83wHDdcBenCxEVePj8BhDED5eX29YNP8kqTYg
	 YZWJsza55cqGys/LHFTpXefB8nBssfZi6ZX1Ob/AJnn4O21W/qHF34HrezqLghfDQr
	 ckBs/Vhwx/l+6nlqBthlQx1SaUcvBTgN3OPWDRIpxV7CC+TkTStiE1SNMr/q5XOOpW
	 FXZ4Fr4frwrg0kIEYWFcwL49y/Y5nNrn0GnhhA3yCK/JuWwQKTOtIVHsIsM8UIcJ+L
	 6G4+jyeN5LL8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968DCFD0073
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239249360.25372.1407397884861166339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d322533bafa9ac92dd2e03fb96dd2a65debc3e04d111297681e79fa6e1cde28e
Date: Sun, 01 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772392493
