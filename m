Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C29208D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760768994; cv=none; b=IKRSNTitRQQmh46x/YpO9u0ms12Qo0q/+Hc45QLBpIbzXZ+6QgBO94FAfNF6z1Tzl642lQSTghRv1AD9MUsj7ddzPiwyVRlcDMDmtRhWlvfxZXmohUA271/zQ5oMn08fKwraQtd+MrEp2A9dpoUGiSqlrka5Nz0DAyXhwChmj5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760768994; c=relaxed/simple;
	bh=tJLWlk6c/c5DOj/27HKkLWK6DP9KecB1v0w5i4fMGtc=;
	h=To:Subject:From:Message-Id:Date; b=exZD9lC5C9tgi+zUY7EAPqlZDON9HMbjaUkCmkeziWSfMc9WD77uR9wijdYSWsjNkSFJ37COAnF21VZXnofGYrCyWaIaf91zrHO/glz3x6Vykibr2Wg60HNv2cEnFrj/lSn9ced+2xWR1se7HjFbEgxJMmqbhSkeXq0gTkVemao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeG3XUog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeG3XUog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB57C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760768993;
	bh=tJLWlk6c/c5DOj/27HKkLWK6DP9KecB1v0w5i4fMGtc=;
	h=To:Subject:From:Date:From;
	b=MeG3XUogkJIRjO4JfVw9FgGibhj0whsCP7wG8zMsB2Byb7/c1YYA2hcOfsPbb0aDR
	 +bM78ZTLHCSNvrFXcdEb5F++8h6BFkKZwAtDoIz48/kLeny0iEfQL643uitScuyHYc
	 us1bXtcp9eg2O2EZHogK0vhMsuixHKX5t9IyMUOQ8Ldn8xckfBTRo0bRcA81lxgkfn
	 3HqBVayNAUqGJFCV3bamE1u645T7L5AWE18Ia0GZLYWmDeHXNcWa7n64ZrCPeKwfZs
	 ZmqTUdi87PSqnSadl7wagb5sn5H4Juh+VVJWh2OmEkgGEmgUfRBhA2GV67iyXa+nqP
	 vQTHU67OmSldA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B715CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076899360.5243.11635391206739992122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144a2653ccfa78d2037537adef38e76c076bd25c203d5780a32be9cbc1958790
Date: Sat, 18 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760768993
