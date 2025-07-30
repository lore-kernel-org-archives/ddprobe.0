Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1333928FFE1
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753861194; cv=none; b=ogtvP5G/KNy1/n9ry9ng6Wa59Ri7RsyZuRQBTk+ZoZxT3zhtzYziIWJs8iGD0i53TZpuw+z0GW9za8viq+wlZ9fcWbkwKRTRTk3AXonVAbMOFUDUib99IaL9ZULjXm/zox2uL5LFnxtY9XBLZ6EOm59slvtClFdjbYh5RUzjgU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753861194; c=relaxed/simple;
	bh=0drtBtZeducgl2FebjdGSLjJ58nqdNPs4ZLQ1uZ2OPI=;
	h=To:Subject:From:Message-Id:Date; b=nh1596mav68taH538ASFkCOi2eUoVo6gnp5DW7LXveAS+Kbp1Kpyjja428M7FinO6M4nhWBX3yGrIdPyNDKmsCYAO3lBGfUYVpq3sxQglHjdXJGzrzMEdlwQvM+4urSw3ZKE5B/H/oYU6uGL0Kq+qTHE+v5/Xse/c/W2UbmwNVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmxCX/ZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmxCX/ZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2157C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753861193;
	bh=0drtBtZeducgl2FebjdGSLjJ58nqdNPs4ZLQ1uZ2OPI=;
	h=To:Subject:From:Date:From;
	b=nmxCX/ZZqv5gsD2asJnXbeqquwQPp2rsbW0TM4sKebgLNsG/C+u4Og+XFL9uPd5VC
	 lA+Wnl4wfjkq0XR+uxGvoGfl3+1YxbE1FeGq5IdNM0uVg2Uo1/DdlaLslhG/qkvojw
	 GbZb8Wq+f8GH2RyOk+mjAP4ClnFA7cX+kzX+FLrdS73h4Ii8lfTcZXUN2XGgoOxyNj
	 F3a08qttiAR75T65Z5Qg+/05MSKKAffx1oFyv8iuNA9bSE8SJWBMFtayaTrL5t0bi1
	 5mtGrdNb3QuJ+X6Nz1IQI596RjVGgvMzzzIUfqF+y9FcKiJ3RBOpREPxIgLEbCG6PG
	 xgwSbE7Buh5+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C24C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386119364.6558.11557439108273424987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e21cb1a881a6a6de8d68275945ee7364b9b5eb64348efb308082c40c583b34
Date: Wed, 30 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753861193
