Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4767C2749DC
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789953634; cv=none; b=h5XHTtTO4d6iB1EOTG+20mUV66wreIv56/ezhKbezUKAV6xcCQSB9P2uQJb5fOWKFAZB+lnMbMDC80ipHbVgrReQgjK/CFouarN05P8JpSB39+78IfwTuv68mUJJzlvMjcHC+wMawIaj+iWOw28XlBVzeQWzbBmLK+UJ9TwGlDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789953634; c=relaxed/simple;
	bh=ZypjW/Qa4r2DOBQhTOzaWUVqu51BWYwBWuJvedReF3w=;
	h=To:Subject:From:Message-Id:Date; b=A1cU2/xGDWFVdfif1W5a7rC3UXf7IzHlahaMTPZRrcZ51C3QhaTRXy8jqF5WgqF92491vrCs7y9HraF2PdicPI2OKA2qcPhNsQunhzSs2T39+xjth1ISMgY2msItReU7/XPXECjda1C90YBZtcyu7tLUE1k6nTT+HDw7n3LAjj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZkeRcbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZkeRcbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3994C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789953633;
	bh=ZypjW/Qa4r2DOBQhTOzaWUVqu51BWYwBWuJvedReF3w=;
	h=To:Subject:From:Date:From;
	b=cZkeRcbhku+JR9gj1CX+EsRH0FolGQbaJ37Skikx9wsHELC7vbSAYSsT4aLF7EdVn
	 QBVqQukrXGV2jQvU3tdH9GEyWFsLoIc5lhuHFuuWS3KchmdlJsuxBfqgBxsozRa+ib
	 CYCXwJ8vyCmMnd2bzilLUDjGOW0Rupw31EQvrbD0snJIZtnZ1uH+s5WjJitmVmbauQ
	 TyWfuOpZbrTPmd+Z02WDxZWTDtphBLwJe7wRbOdSdOrVkv4ybR86sxSJH3gBCCBwHI
	 i69HQFbk7lld+IUzPU3gbWK+rYEODJC46METO+SUp5TLPepllXEVjTvM6CFRl7eYWn
	 QjexFEucAc8JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06A0C982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995363368.19703.807061193182527314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c944557f5512d9ce00c1115a8156b257d482a49c06236a31176f2f28a954bb
Date: Mon, 21 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789953633
