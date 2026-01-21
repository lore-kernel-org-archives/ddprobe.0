Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199E92E541F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769037834; cv=none; b=feA1Q5LU5g1VvwfyCykSP7PS7pLpawDCjuFwtYUgCu0Ds3gwJaoZwjCz7/ysQCwt2CPaT4armIRkaIkFTK6CZVxedx8mLWPoZYgSJNrEcfa+vmF0Fhxmh5scD2fSdJ74PNBeNKYtmIgLqQW6ksxxAi0qdvxaCeD31phUIwr2/ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769037834; c=relaxed/simple;
	bh=i9EtO3KeaRTtICJKDCthI641SSGuhr0BhNa/npEpoQw=;
	h=To:Subject:From:Message-Id:Date; b=tH27yWWq1SetLw8RBFtlhhyjv624w3LdGB8Dvuz+1MgkJHO/5JD3VAlH2TmlmN5uracrjP2gCvzd7wPz7OpY9RxTvpXh64J1Qkm32GBUDlIpIBX/LvXpkmqt0u4MnF7EcE4hOT5shjyYFiRUO8zH0tvrLJ4z79Ld0ib2Eo8paFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2U6x4hA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2U6x4hA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADF3C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769037833;
	bh=i9EtO3KeaRTtICJKDCthI641SSGuhr0BhNa/npEpoQw=;
	h=To:Subject:From:Date:From;
	b=K2U6x4hA+Wk1OOF9rJ0sZj1tCh7Zdfn7pGuiOjY+eY64tDJBJK1Fj/JNQAzpUIeLB
	 sl22HgPjiKZW0E/mo55hrjm0vgv00sqzVkZ1WjYWzhwUBVCD9sBVI85WviSmr8Y+e4
	 4TYKrnd3aRXLcsTnb0CRKphU+Okd1C68+AbSEe2u60XwFCQJzPjSO0dWO7RSwhGsrl
	 X33AabfZPoso8BfXPrx9dxKnM9vddenxanMAIl7mJV0tn9pXlLuIKER8hVKcHaFtCJ
	 3uHZ5XoDrDYjUw+LjGlExAk8XDHxCUta1CRSHQt0YHd99ym0AyESOOju8PlDsVnR4f
	 d35gPM4l5ccBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BD6C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903783358.31166.11794087855958180967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c61f12432d471eb8f048f34d65496def79d0575d251c3a06eae907d880159de
Date: Wed, 21 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769037833
