Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355A23EE1E4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779876154; cv=none; b=kC9PUA9PgsaFFu5MWiywiUMABVK/XxzTabuFEXmEc2GJk5NhQr55vGihFG+gGfmLj85+XzgyKken4UtnEivTYpPW2elkdIOaROeAIJcIsIf9hvhxEqRobIHeBZiE1sLwP2jnh/xsJpljYCXqUH6spgOyp1oABgAQmxhTpzWu1Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779876154; c=relaxed/simple;
	bh=hfat6QOjZ9oWyAmBS8l3tzkykCgbTvw9ye4rwtU4DKk=;
	h=To:Subject:From:Message-Id:Date; b=YaPAeUxLnV/Q6xvfgpeFxsoOydvVU9YXukPZ3wtJE+YyMVrQFSzZ4d//ezk/LapOa8Hq6fnNtqCSj4g7tyvdTR+Uc2POtpRW4zoIOOsXBQRQa98t0nNrabIFNop9w3zyYB8aK0MaiW2gCica8I1Lnqu35d0eJAhzE4HmIriZJZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWGYXMxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWGYXMxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB9AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779876153;
	bh=hfat6QOjZ9oWyAmBS8l3tzkykCgbTvw9ye4rwtU4DKk=;
	h=To:Subject:From:Date:From;
	b=rWGYXMxQEqs0j3stph+3FLdc9I44SonPPZlp78mla66/a604lWHjAu9y2St2Yk/Yj
	 IMVG7ItNm2jsAsu4vCfOlVDnnyFbhvMq9/xu6/5v4uCC0y9BH88AOII5ZTMgiiASlL
	 62i65xGvnV5vZNiy9uHvRHBYGiayOnCrUmtAiROIi+t394XzsD6ta11V+IOejC8THZ
	 n9igZyAT90VaOOsSFLviVYgVyNStwj1R/sQllmeuvgy7YZDsCglWiTmp5LMdAdFsVW
	 lhiN0Khr0dtk9REHeiUPJ654t+2wZ+zXpnenJRHAtORhAl5Qh7QMEsDOdW5oNrbzeV
	 zHJGbaizeESwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB87BCD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987615369.11512.6548979499088408445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2a46aeb41e37e7ec30a8a80fa79845d30406257ce1916d3bc69b6ae94be936
Date: Wed, 27 May 2026 10:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779876153
