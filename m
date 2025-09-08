Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1755B2D323D
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757360994; cv=none; b=VjH1gJdkSdTwaVIZ/UTzfvshGRoknQG1WsI4d01bkKU6FFQgK3Vj4E1IPC+m5o6YHrYO43K+d+FaZSOdhEWvhKbTcZa5kvRVuOL0vngXxPPO9wna/ywp35kogeVWSRLnw/tAtVy7Su4CUOQGW/5NRiF0sjSeqyGvZEMhLgCnM2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757360994; c=relaxed/simple;
	bh=qHo3Ltz9vBaBbfRTqRE4Q+j/vVsbncmoPu4RQHH4nm4=;
	h=To:Subject:From:Message-Id:Date; b=SJfZpK4cvE5Z/Nq83nH3ju6My5/nFNBXA1JFZpMqfNvrro9u9cANExeGUY/zsWzfAtbDH7xz4ogn+X9OIJiX3HEzLo58R/F9zjETxbnDPnSWDEZZpGtFGD3dhgAppDKc/ElHSpGY41be58GTDeldLWJpNbmkF+0gj6UYtUfA+EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fA+Pi4rf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fA+Pi4rf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1FCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757360993;
	bh=qHo3Ltz9vBaBbfRTqRE4Q+j/vVsbncmoPu4RQHH4nm4=;
	h=To:Subject:From:Date:From;
	b=fA+Pi4rfWtzRyvN3CPBugz/W3XJCiJvd1xUMKpj1vHX4GSsqYesxaJT+6CnWBQLRP
	 MG13UYCvC1cwPMl2JJ5ijLTMKKnEiNn5gFTB9oP1bdOuX4p+XzerHzC2dxT7e8yAXr
	 NDTnXjY3rs0YH8G33YrXvCDrdsMEVDMXJxSj/fTSaKP+qN8HoY1hgLeVKNlAjPM2uo
	 MUGUsk9BBOthTI+9XODmXBhGnKZY6m6c9SR+uRKGRs8ei6J7K73H2HbB7kMpX5L3B8
	 D/e+Le2Kex+iwS33QxWOtLLLECWLU48RwBCEHvoNfayARf054ObfRhBWUn8iUYO9vq
	 ir2oxNZE2pfNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDACAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736099358.28027.13139237666513422804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbe3bb5c85546fbc210bf7db7eae459ffaa9f2228f724ab5facdd464cd3aa78
Date: Mon, 08 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757360993
