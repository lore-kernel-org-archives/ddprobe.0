Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C44E1F5435
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754854794; cv=none; b=cUGbaEEggJb75rjAhkR6Psjr5cqMBtrFQFAeCpYbbmWW+uIu0IT+pkfFGNoEYbWBNS7GPY1yY9NwKGd7qWSikSDgGGejozSK37AsiL70gTo5D4nzZkWmEJ/WX//e+44iwTpFnZ2As1+KHFa9Bxh2AqMH31K9ZFcXpandbjRSzEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754854794; c=relaxed/simple;
	bh=ZazjGm9VrMW+q1cve7uDhVrUjQMRrfLWbHTY01OaMjc=;
	h=To:Subject:From:Message-Id:Date; b=pHfSV6O/TsJKYMupmbuf0/At+gsvRPeUBnT4KxbAgXnK5MFLXLGohAKg5Wg/iY6mMeByBBk8GEBxuK4l49wuU/6KnJKgmMGJGNR/lrAtjJoeSZICZLCQRaJ1/Rl7YutrBqHvNPfOLW+MgaLF+DL4OS7m4Adup4XY8tkh65SEEQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJ+Y3voL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJ+Y3voL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B47C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754854793;
	bh=ZazjGm9VrMW+q1cve7uDhVrUjQMRrfLWbHTY01OaMjc=;
	h=To:Subject:From:Date:From;
	b=QJ+Y3voLVC5zfLL+FpNghEVJw22ylhwVUFMKnIMsR3MMtgeu7kNc/FLpoRpq270mo
	 XRacx7nJgo0OOzczmprWIBaojNd0fwU0g2/gbhT7wPsYnWmAgFMpoFTt2m0MNP/WZm
	 +bMrF+9xA5vEMVg5ZafgrB4AFqULMI+VMralKiAz41zyygdGRGFvo9plH8EfrN5NsI
	 Cb/t6s2LKNpPIJLPrfUJFpw0ffXLP3jXuhLzImFPygCDHK3eGV0Yds+I2Rl2MZEdvF
	 CEHAsnrpU05WYnu8As0KPttM3Qmrfi8y2JEL0giFQ8NYAblCOxnu4VJHuqGVyUXZQ5
	 /3267vqubzPAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240EC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485479357.8986.15447121404237694615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ee19ce69d0a284c5a60728a9278e568db9397ba41b786890dc5a77c780af8d
Date: Sun, 10 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754854793
