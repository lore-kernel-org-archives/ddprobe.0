Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBB113AA53
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746452394; cv=none; b=gsgLsarB94a7M9M0y6mazKtSAuGmk5zWvjf29U6RoDPo6Vh/A47DWzp3AryKQEgl4sPRZQe82VzcQCF2ghLg56oJIi02Y6wrnEbdoo/wzX5qKlAVvmOpb390KYsjeeZCFaaqMcMU1Pr/jRXMLFbZ1fM1eX/jETKeaz+MudLttZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746452394; c=relaxed/simple;
	bh=DZJhS7Cm7vw0VlHXDS4AgKOnbjjP1eC9iIL03td3wos=;
	h=To:Subject:From:Message-Id:Date; b=FAri8WrK0b7cg2fMoiZ2DL79Q/exI2Ojn95slvdxmQ8Rdv8SFZnmapMy38dClDzo72/rjP5aDPv9dnm2WmImq/Hh7bc8EzwCD2w6E1+4rvwOBh2wmk0KHm2Kv0tRlTEXyugITv7IAmFb42Fp+wjhTqKRsEI10id0zZtAs6m0CZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWLuSELq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWLuSELq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746452393;
	bh=DZJhS7Cm7vw0VlHXDS4AgKOnbjjP1eC9iIL03td3wos=;
	h=To:Subject:From:Date:From;
	b=uWLuSELq448hlGqik5XHStNrB/4/VCnAlQcw3zy6aBGnLpH8kW5pLg2U3AM5KWSp6
	 mH4JjePUOqDuFMVOeEP/Sfw/iHW2K1WbqWIbErcxHjgdO77rkhQ/C7BdVSJiGCzgrQ
	 5Xc4M2K4o2g3i+Qs6848H4rsTQZBrjE71qEe6rJA4vION5cuBb2eU60bHImvNOTzMX
	 ne8lAFaj7ekcK4LUHowt4g5f957uPUDCKfFDY0Vgp786cL93LKe75vf5HE659ENBgN
	 xXNr/5rHpe1XLedmV2bsHvHHMFumOw09F5xB5WMPwKGAbQlUSovItEFLnfof+ZlnUB
	 7Z/ZY0b4TpbwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B4C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645239357.25425.11006718756995216641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9884da103f868dfd12cf698dc28086a1d4da7d6ae1ec4d7903b84c76ac7cad60
Date: Mon, 05 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746452393
