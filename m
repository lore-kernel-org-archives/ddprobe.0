Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36B83128A3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790562634; cv=none; b=Ar/3USMOJWrVBUiJnJB47EHr54ojFEv70MLBFqiMrJCf18rrG24d067/O71S6nodALWv52M9VelCLYu3kVfvFvkRqxz5D7Ay/tzHGaautEKK3SdfS1KnPl0z7VIOwIUcTDAgzBm3lyKAT0ZSlsWVCBT1yTk6rWlgqSrfx5X3vLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790562634; c=relaxed/simple;
	bh=aKJT2SFoB4EIiq251YPg/m4UBpYSmbw1H2CTknI5J2Y=;
	h=To:Subject:From:Message-Id:Date; b=F7vRDQwc85wYkDMC/YLLyLQ+BuWNbsTyvuJsjXAo+/ge7l0k6R2SEd+GOktJ27FSpe7STDs9gm0okeECNfsiZdaZ2a4K4fxD51uNzEqC2y8KVYaeURftVHjzCcaJIE0YkkpVttwdv9T7fsMkJXzmxgAvDWjWTscM7mODlbu8+pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcHxB9ok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcHxB9ok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE0FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790562633;
	bh=aKJT2SFoB4EIiq251YPg/m4UBpYSmbw1H2CTknI5J2Y=;
	h=To:Subject:From:Date:From;
	b=kcHxB9ok4Dfu/22nUYfZLGUUTvRR2SylYSLo9OBXibfd24Dxe5NtLLmpTLBrGUApk
	 4p+RQHbzxX6+Ww9Ue3BKvBHH/tNXHBQIcTfjMGjxKjWu9eSzoaYndNvEKXs4wqUsrm
	 d9o3XFp2JRF/345cwxWYXZxbNF589P1IYR0efo4DtEiu8l/KVTdSGNcawnQVAzUPTJ
	 0IBZq/RU/b0Uq2tSjofWKlBcFr5eaQBw0pLXhHSrFhWHFZ8GW6Cqsixggea6nokS6b
	 ZKqJGMIyFAihwLK6RdnEUqSoqBTephi4P5+4h2b01zWq4HaYVn9AIKioXF0xZ1ie7i
	 By6/svETFYnyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A8DC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056263371.27045.1974839857104537214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07835707e816cb84a49cc39685c7596fc04706a8cd03194f832569118a715fd3
Date: Mon, 28 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790562633
