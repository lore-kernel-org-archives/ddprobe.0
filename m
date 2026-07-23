Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB86C8EB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784780974; cv=none; b=GtETf7/WmjP3lj4IExdx6xadrmTrK2L9LeQla6RRIHqukES3Ju+QzGfjH22JChaQyd+5gqDj1iqGXTmJZImJKfWTGlp7QFtXxjAitNLKIC24kGXo9+4xX98umlTGIuschrkiaLTQ57w1rQV8djji2dE9iXgYhoD/m9qortdixaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784780974; c=relaxed/simple;
	bh=br79n3fgU6O+ToDau/Qz16jAPskZdMQQkBDxcPapfmE=;
	h=To:Subject:From:Message-Id:Date; b=WFaHwBEqQD7sfWCykrCHJ0tg28+6Mtv3ZnaEfGr1wzb5NvOHHsP03f1aqLvjTCzw1u9em8tu9RK6xsY4SvzogA3NKdroku3amkzg38A0ml7NUSvR1MYV5Z9aDZKTdUewohUu+RdUvRz55p3C41UueZ2uA0wmvGJ9KlXEc94d8rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mECswjEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mECswjEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F59C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784780973;
	bh=br79n3fgU6O+ToDau/Qz16jAPskZdMQQkBDxcPapfmE=;
	h=To:Subject:From:Date:From;
	b=mECswjEM9uSSGqli76/qYboq7p2jQWd/iUPxjXGCEPhIHuzVc4d+UjnAig7CFCGVF
	 IBnRHZPuZKDUz/sZb+kKzqMcaMUiQNlrQx6pYL3c97q4JqhMVX2D3ThirQPRgyK/Ia
	 LHEYrVn/iEi9y7MsR5ubE8FZwNlwtLpQ9qGFrb7cokBr0cYkDzj5MqCcmH3fDsywaG
	 RNHVMIxz4mL9eIM6eKp2FfmyZBdeU2psLkjTufFlBtsR45a/X1Gx+ZODHkwDt66cCC
	 FWa78vJsradkSCafGT/lcBnpHgl02G/efRFrWW8+059MezHX8prvadRGaoVUKZeUDC
	 VvOUB97114c1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DD7C4452B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478097374.24201.2462561326327109560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55885230edaf7278057e5188fcb2d461f18ff8f82ebe7dbce30991e164d41df5
Date: Thu, 23 Jul 2026 04:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784780973
