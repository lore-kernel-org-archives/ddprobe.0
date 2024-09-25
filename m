Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D29175D4B
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727268354; cv=none; b=KQMhoGF6KuSujrom8r5wtDoIVb4kSHbEc8ImxqRfJR4NfsmtvOkk+19FxBuvUVgu/S2Lj+obIbkNXk4X/k7eFhxMrqUJRdYrDgvTKIFSu5UVK89gs4eP2d7Xu6Y/RClWGJmrF1AlbxYBjuvHJhCYTQ56mIP8hM05nvh4dTZtn7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727268354; c=relaxed/simple;
	bh=KQbvg76rPkfsDsE9czodhDcmIwe3OuFyRmwUC3tUWqg=;
	h=To:Subject:From:Message-Id:Date; b=UOlEznTEnGCDWsSfnrqNDTGfNqKEj+2XssZMTUFVn3ympzPus0j/bavqDIBTt037lqukOZ4iZwRij8W9AlMT10jGy5jyJG8i8hpR98pJQ7hG1aoCrARIbpBEn4dPWc31v4nM5NgXQSyUKTceNdnwiUJjWM5nyPH52TuaEcSA1ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWcOX/6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWcOX/6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90B9C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727268353;
	bh=KQbvg76rPkfsDsE9czodhDcmIwe3OuFyRmwUC3tUWqg=;
	h=To:Subject:From:Date:From;
	b=TWcOX/6puEp2P08pqQyM1/BVbtkDmQkriJBa7VispkQHyMVH87x9NNTENGVZgMSV/
	 yyB06SgoL2dEm/qWBgiAfe9JxQ+v5ZaJGzs90VyHd6ExvG5UrURMH1Le3W34RoH4ao
	 XhsXsXMr042XASex0PhAG8gTWXcmhtJ/wBIkB6dh8PAELpNRzdPHu51fuOQEVItTlR
	 POmiCbP9OUcdALpBajgByN4TmWhCGO5vyglhWrZTuXD+Vp7vMzkqm+L6/R3A1G8P0u
	 /93M6o12Kc65ANYYibx66ppAqBiFvzAAC8dwC5Q3l7hOiBO52+tpUrbWOnh2nP69w3
	 ToV05TqTbEJ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B0CC369DC
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172726835358.25391.12292338232656669523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d323288e712761666319f0f41c4ec741062503f94ba5211b20742d942e6181d
Date: Wed, 25 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727268353
