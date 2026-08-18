Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D03E284896
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787030434; cv=none; b=cwO86RAottTsM7nIfg0oZS/rm8xQs5DVDyfpaSFK3M8CkGN86txD9WNUaXdMd28n7/uq3ochcFpo3CYSFJOVe8bnBCiuAlySIybgSmugl4XjEOZeFzSonduU/GGCLzcGmCwKdmiZPWDt8KzxP68O9IQhHEomS11aM8R9pnESrHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787030434; c=relaxed/simple;
	bh=0sKEp6CNIONy/2Zk/fr+RY2Tdc7a77+vWAeHOdiLEDw=;
	h=To:Subject:From:Message-Id:Date; b=rQdGrsy/vuY0vJBBEvrUNL6w/tu/jOM+bTki+D3KXCOWA2o9uy2MbYTRSA5f4h6r8gMT1PP5mV8oE4T/5/0cYEKt41AxCrNM2xp+Kse5bO8owtHoITbF8mY+Bo2NmjqW1DgVnbrQU1I8VvOMBlpr8QqaHHcXos5SiMcirF5KhQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KU63ON9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KU63ON9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2152C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787030433;
	bh=0sKEp6CNIONy/2Zk/fr+RY2Tdc7a77+vWAeHOdiLEDw=;
	h=To:Subject:From:Date:From;
	b=KU63ON9VlMcS9I6p+dpP4VF/+zqQ+igyjN1omcdgyjCrjmgDyxR/AGnI1g0dovdOz
	 HWA4rYdRuZTr5MNrddJsAsZXNghE1rkAuJHaU1Fe991GXAez8Mkm8wfgFSxQmPARrK
	 NafwB0Noh7rKeN95MWctgqtu+vZJvoggINQ6s53xKL+ls7Y27l6Vq0UjDYctK2OIVm
	 z/n4foUAhw4VxtO96nUFqvJY2jdXPmTz+ejGwZWGyuyBYC1QCJ5FY4KDJq469DRhj7
	 eiYwgCzQwyd/1CgeJ99ULXjWZm7V0Js6f1c7oBhKMPgziXlnSZRPfSq1VgqDweb3h6
	 hRK3kBQjVlPvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0286C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703043368.22801.16098507803132922581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f43a8b0ff0dd5f90411098b91c407f38648d2d286575bdaefa726b08f1ec96
Date: Tue, 18 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787030433
