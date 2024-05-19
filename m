Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595852114
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716078743; cv=none; b=mG2D2JtEaDqkMkbhnlje6L7xSulbZZIxKs/zsyqtVs0oDAgz5+clM0KI0FJebjZL8U+dEhgUXQE/256wtPrbFfWntDQN68L0tFMqVRkUKT1U6m/IM1ZDZstGEggGsONnZnr+yVRczUw6vP8qRvW59aG4g3qd4nWEWv+tUOTBsiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716078743; c=relaxed/simple;
	bh=AXO7w4Sfh/u4NIV3zelBT635kTUtr1EpdtSWeVTZcjE=;
	h=To:Subject:From:Message-Id:Date; b=kpmGcRiEnFIB2D6dICskaGd2HnBZgXPX6WV5AYXXcPSC0S+SvNpoLFpmx0fmbbA8hQCDuZGvL98LmoPdka1vkCgkRzbYmYnHgT5cQCUbqFtUuoycZbEg2zfgoMkpRXvnbYrK2CWzz3WdmMJ5XHHi5/iRw0T2yRWsSDnaq1rE8Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWhFDulF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWhFDulF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6D5C113CC
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716078742;
	bh=AXO7w4Sfh/u4NIV3zelBT635kTUtr1EpdtSWeVTZcjE=;
	h=To:Subject:From:Date:From;
	b=YWhFDulF8q1lHuhVg8mtvGutw/u4Fh1bi1wAGqdzRh6oeTh9+VbFHKZAVBPiOhtiJ
	 aB2r5/wdm59MuH4/BfHJsCz8SQMty68yzr3GJnt5zEV984nZi7f17keti4Dn8YGaQB
	 zGxTXIGvM03RA6BvhvmzmSwGOVOT6U2ntfMhA6NW7NIE/GhzWlyDg3g6/ou/t1iQMW
	 iBTXWT3nVxv1IEryYqrkHqqYEb6lre9s7fncD+7R36nyh5e2jbFmcApgTJkJBJ/Hs/
	 W+w7t4FNnZkS6z7z8Z/in9nlfIym9YVStVfWCBs76AADXK45reoO1ufnJVcW4wFBCC
	 aW+c5pGcMr7wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB403C25B74
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171607874279.15139.14136915201533474344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8661666143f239cce7a39f3cfd224ef4096a042c226e34d3e566c5a781f98676
Date: Sun, 19 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716078742
