Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC79242D6C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769455434; cv=none; b=CDZkaNhKikO3S1rBlpl+AR+/3fWBgtRI3Bmq0hMK98SJ9n6gKZj8wfWnCEz7cey64BnSrXMWxpNiF/wcBd17swbgGNoPHbJrnF62mj5yIvVfgSUk4AeCF48uSnCnvCarhx6MjMPPcIxr+/ysZJwg338aTJ8j8AP+kZkvKTyXOrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769455434; c=relaxed/simple;
	bh=CHDbg9W2QTSTvXtrJQna2NzzdULAP5Njz691ZbDmiSs=;
	h=To:Subject:From:Message-Id:Date; b=lhH7/EJOLBgUiOF3/5j8vCTVZQXUZPYefuP1gXs5F8oSblMkcoaneC1fYrLxuEEat1EaWMn9RalXEz5bRBEI43UPSMGR8y81XpnJ5QcPYCG9Ad85irPBtvNwKVQt4ZwYBmC4MqbF/48/3AgGNCbIvw+kioRMuOpbSTmYCuFRh48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSz2NRG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSz2NRG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD55BC19425
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769455433;
	bh=CHDbg9W2QTSTvXtrJQna2NzzdULAP5Njz691ZbDmiSs=;
	h=To:Subject:From:Date:From;
	b=tSz2NRG1VgOoJiAzEf3SnRSwzw2j9rn4cOKUZpa0bFg2pne508ENe34B17nS1dEUn
	 eGz4N4CefeeaolsK9hmOPwF2VqxbTP5G/vK6zwhsYD72/auVj46FuZFa+p+GGV0Wfa
	 V1ISmefW6hQfWceZbiQin5RBOgxkwRTPtdIYMRSjUctJP36+OJRmzXYjYwF8ltJ40X
	 eXxkvaqHW4Xu7gnK0So2Yr38aQPbWtLhODI23GakH6msd02LFHpS+D4SEmzaKiaBAk
	 rzfW5o4RagF3xIJywlyeroiL7imODM+ta8hn/vS4eX+8tLQzI0S5Lo4wJl4FMcWNY8
	 z2Bm/dSTowSHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99517D1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945543358.11935.16443645056503263782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684118d6f2bcbed6707b43ea51f0091f8fcf7d34fd4e39d5436f7c78c5d96092
Date: Mon, 26 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769455433
