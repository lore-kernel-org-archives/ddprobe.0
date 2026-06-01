Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F8F35E1DA
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780315474; cv=none; b=DRuS0EgCg1sZsNIUSLs2d+WLOC00NPyAORsBca0VwRM4J835eRpbCfEjD3TnJ/zzIPoTtnQZy9pCDzdLutZOCoex3LoNzcmDM5XEVPoGEtBXk8ud786k/Ym5z1TRfny8cVJKs5DM+22HI3MW8MvUW1y02szwyFfBf/BWUXZFsAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780315474; c=relaxed/simple;
	bh=IW3B09GuNwMF4yWUtVal3SBkH+cbcCU7AGrQnzdk8xg=;
	h=To:Subject:From:Message-Id:Date; b=G4c8c17YJ8pdaiGLtRvWdJ6osiLEAOWlfvnY5leR5vvQBbUE01kPGPDQ3k4dTfMi0J3ccwEFeR6D8+VmoheOGdFRRvoQZ07UOAIZNfpTf0Qndcsgd3BgAOOWSPYdPHYScuFoGchZF2uBWHGMgo3HRjGwfXYU71gWAzqU231pR3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTvA9aiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTvA9aiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEB8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780315473;
	bh=IW3B09GuNwMF4yWUtVal3SBkH+cbcCU7AGrQnzdk8xg=;
	h=To:Subject:From:Date:From;
	b=CTvA9aiDFulsnTEv7yBGC1pUMvraoygvVKRQWNJjVXGjbYIHXJpd7FgcYFUSxnCpr
	 aU05uhBM0q50l53L7ZBxl4irX8ESiie1HkTuKlnKpBKlg5dd6cgf8K0n44HC+tTRx9
	 w8Py7qhuCxPKTtd7ebze/rya5ElmehneGsERFaRBPFa1ns8+3l6kjD7Ezjt5WTzClf
	 4JYW8BLvTikrMxqrF21Y1hEA0GuT0wjLb5k0KhnNPe09g9g5Lar4jnZAX9DOTiEQpw
	 1jdPBj61FVuZ9Q86pbhdok0CM/rKqV2ipuhfeh4foVEHCq4gKeAPG2VQBpBAIYjfbJ
	 1VddcvzfM9vMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0490CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031547371.16825.7165300415864403879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109af764dfc7506a937fdef3a3d1f437649688a459df0e6361ec21230529e09e
Date: Mon, 01 Jun 2026 12:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780315473
