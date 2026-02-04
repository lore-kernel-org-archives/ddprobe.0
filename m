Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A8D1A08BC
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770171834; cv=none; b=aLOplPlEhhV1fym/7mLlZgoRnyRWHZXpyEg800MQ8+XBKjp0shjHqkIHQzAjSFYVWWsQAM/CNBuAD0H35ydPdoKzqISfZTVGtwjCBaILDVXLiY966DeSMaCGcutEHQdhswbR1hvcaYhjEGIZhydRCxRB8vT0MzSpyMiQPrDzj+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770171834; c=relaxed/simple;
	bh=79VQPHNCrqbxHwtUcI8+MlbmWS65mhsOIKf+jDO8jfI=;
	h=To:Subject:From:Message-Id:Date; b=iFbyXkcUDsZDZ8IfnOJ/CGrJD8goOqbsq8IHIFqsqtLC5onhtshlvGE+DQXoSmMtSqdsETlX/TXR3Dr92dxAKoI21c6QqaRJdMvUci6aOZnHe5g+iyBYkJj0ks2ab5slJbiRJzQEs92D8c2/PCsFY+gNu83pfNAsYcaoAant4bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQHK9+qO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQHK9+qO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA5C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770171833;
	bh=79VQPHNCrqbxHwtUcI8+MlbmWS65mhsOIKf+jDO8jfI=;
	h=To:Subject:From:Date:From;
	b=XQHK9+qOT61c+RZYm5ugxkFlmLrcDw8VK9VMJP3ToWZgENoYAreiwvhCwshOq3vXo
	 XbYiFZJYTo8cFLhYiWN269YYz+K2OfvrSY0ArHY0pVcs9VsEKl4OFZQ9oUrt38gQzd
	 wtiDeRsyYm0E4j0M43rQ7o4Cy5o8OjYqs5cCtTla5p4khQG3aneoobU0XTm3Oht5WH
	 o9xTecwnX1otsxGNNPpkjp4b1eTBooACQH/VhMQ61g1xyL7HuydOGET7ljY0wXFAcf
	 MwOhdm/g26rr+o0HVK+xnZ4F5MuxFVYvXqvqwDC8Z3SUBvbUPkoDC7yMSdT4XMOaPu
	 mv8g6OLNT6lqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91817E8B38A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017183358.22932.12831396743604440853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4834522d6c5e2b6ed2a068c0f982b9bcf970062d4cc79acb2051c97cb7b1aceb
Date: Wed, 04 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770171833
