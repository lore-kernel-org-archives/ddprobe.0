Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A39D221269
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754519994; cv=none; b=NBJfo44a8Ho8tsQwpeOO8W0XByVTfVpUeVVn1WbIFdvuRakYe6xH28DVFgvmpwsEbrtamjIR423cooBOo5wNMK6zCJTJjbnniN1jToOjjxWnhMMmwQS+wC+Lsv3+4ywRx6gE3UNuSkv1jebcAw9u5t00rERBO5YbvWMl8doGltA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754519994; c=relaxed/simple;
	bh=jrjrrR462zDVPmFAW2YsdCOOv/Oet0X2Ibg/MJXkVgo=;
	h=To:Subject:From:Message-Id:Date; b=qI5JuKQdjCDMrLBMc1iCsYv76YjUWhaAsISVnbeEWD/LNoYQ39wWO11EErRdWq3LEAHWChhERPVMCeJ9AqM4YeaQbPEgsRVjZkg/e5crdk5nmmTZV8uP7C8VFbSxEjyt0kqEjyA5r8NpzbeKb/yyCwq7+s774W6Wtnj2nOUct6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDVoRiAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDVoRiAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB05C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754519993;
	bh=jrjrrR462zDVPmFAW2YsdCOOv/Oet0X2Ibg/MJXkVgo=;
	h=To:Subject:From:Date:From;
	b=nDVoRiAeQAD+7mqnsqu4V/svgk6bZMGCsqyh0CASrovaTE0dysehEgNO7E0Ybxi+I
	 XQ4fRyZCb9VMIQSCBAEL9g7XMcK/29M/RdRNUXZkd+OijNvRpL0/tOcoDIb3CJwIOs
	 W9u+BrUzPqioMtditZqPNgXEg4eFpXI8kb5IhsIoll4UtmFTN35pW2JBzkRfdeUqBf
	 zG2mf+rdkDm5tzqKE48ctPrdipbkCooFFBAcAIcMuSgL1s7VOzh3NCPVKRd41rfmiL
	 7xDm2NMhic5KpYDgzoDyGKEuBquvUszWGzP9tblgKkSrJ1MKp3yCg6CjOMWBdnPqdo
	 OnT3wHgn/osDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1FFC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451999357.5617.2946763314520676679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2ab2c4a1c174c760d4f85029e2002860cf04af55acae0e28e13687046314a4
Date: Wed, 06 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754519993
