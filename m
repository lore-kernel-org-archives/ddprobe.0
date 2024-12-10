Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A25A19DF99
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733836554; cv=none; b=DZUecLW0mXyf9DXw6UsvpdNVy22aIuAmpTLLcp9R3UUJI9ZAnLnTGBDV4+NWX/1wUiTTI+ZBaKFkfRtGjwtE8MOO2+gsrPfbteP9qHBYbbCUiqwab0a4Q3woeiRa7cMB0ngB3F/hZl51srzelPxMCsScDrc2O4p8CYORn6IgAUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733836554; c=relaxed/simple;
	bh=xJVtkE94GNhC2U9iWsCEXlz41BeE8IkgFiEIzgpscds=;
	h=To:Subject:From:Message-Id:Date; b=HmihCb4FIAXS82nEb0SOVpnx5pRDYVPCXKUTi1hlhO0EbsnXDZ9EDEg/rZDcEH31oj5m1+t4Yjeikt03RG5/Xh2DoJjEEBH72UyAyXShSgYLC/z9dnpBSU0pAh++NSURXxCwIpmSgi9eeyPzvfJ/ECvAgdJ/uXvQtUUVZq44wtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NP+/z+Iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NP+/z+Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BBAC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733836553;
	bh=xJVtkE94GNhC2U9iWsCEXlz41BeE8IkgFiEIzgpscds=;
	h=To:Subject:From:Date:From;
	b=NP+/z+Iw43H4WH325TdXkr5kM7Cnm1nIvyv1QyuJ0SYy6qQRwaKRh8l2ZfO71Bp/U
	 +fr3Z9S4mYMemsidfd0HbB/IaaD7E/PRm+nVk7Dwwo+tKS/Lkruln8Edn2VoqLaHP6
	 wiXijuoQwBtbYM9AbJtj6mwEePAtuPwgB5w+elYSkUefDjF2OTQJJq2QD/7tLrtFv8
	 35vjWRZGMtmVCm1e2P45/0UbzKfuUCGrhJ77SDhhEd06RSqvuzBxaCflzxyR6c/kcz
	 yDw9Q9gL1XVki/YPMQ3L1dKOINtjkomAyY1Vh9v5O7SWRVXmuHcc09ETrsFeOOrM6a
	 zlSb682LkIkxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91988E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173383655358.5474.3609013870729984176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c10d4085301379b07724e7cbd2e11f46b6b044643c19cb3898c01e40a75358
Date: Tue, 10 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733836553
