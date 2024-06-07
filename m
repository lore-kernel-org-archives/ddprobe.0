Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55350171BB
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717774643; cv=none; b=KPAs+/VlmdjV6mEma4FZYDkPnSG0Twj1vgG9qbTCizlC6PD4UWS/gPIbCgIYL+azhlLTCtd0L3L7oAVDNaOEJlVvmDYbgOCoZ1p3Xes0aqyhYuoRndyYqel7OUig0djdGj8cOXoMoNA0umDOlNZG50Erzjg/SShB+tvxPHfTqLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717774643; c=relaxed/simple;
	bh=uNYCfqVIaAxPCfOw1YPugpj9He3a5+44VIyyCSkq6cM=;
	h=To:Subject:From:Message-Id:Date; b=mGz2gdpKHUS/ia0guTRRtRzXarSuJXPkT4Wq62DWzqCEVp2fCj0mCYQztRj0T7qs9O7ks9S9b3R6x9BYJf1L8YVBXXgogWDWeyOZxn8hynHKfGcPFgDBux4+rvUGgJNj93DTdGBTuuTkFnvZpN3JSbvnY7XctPFuAYYzETD1DV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQBkpuxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQBkpuxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D1DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717774642;
	bh=uNYCfqVIaAxPCfOw1YPugpj9He3a5+44VIyyCSkq6cM=;
	h=To:Subject:From:Date:From;
	b=nQBkpuxLOn0uJeQaHLpfmVY1/RJ+Eym/6qTVhee2PlBIdODMl3+Oz2eZrRSiAOsk2
	 Z7GRV+ZAPc4m6zaS5VfZhwInW6l+wwR7+E3LUHPs+kv97jCaiDYjFGWTxQ18SOBKWj
	 zOvSy75hgNhTbo9EfyCKZr0iK8mEux5tHaRiVqBz2M5FvXDd3AMumWAr4KBFAJN0Nh
	 qpicX6NZ90cr2fycGN+LcVBFv+D1Cph7E5PEny8qEGtDcPjwWRMNY0PsQV9KGiN2pQ
	 0zxZOWcm0WAVksrzafZnr0TN2bmV/9VrN13f1GQTWzVSaDg3sJ/U26Fj9MqxKBCmQl
	 +ajN1TOQkvF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C850FC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777464278.2488.3519812111988567307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355e4afecb5ace3f1bd600a26645b2b1c59ca913a66f3adec9a81138b84a311d
Date: Fri, 07 Jun 2024 15:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717774642
