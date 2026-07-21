Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FE82E7BD3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784608714; cv=none; b=OVE4U5UJe6vd8CfYZUMxdpnmbG/zE5CKj7Yng1WRwakuoECi58dd5d+HKTrxAOzfFtPURgAu+V739uOaKHyEQvLCzdZCSg8Tf1xTZQL9GFJpfRN8A6TGiTwzaGNTdbpmaN7UGbFHJ9KGbcY7T74LoopD/DY/F0upjUpb4z0Y7r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784608714; c=relaxed/simple;
	bh=5w1Q/vj2YS17nvE8yOkIcL7wqSiv1YfXQ7sPpLpccVg=;
	h=To:Subject:From:Message-Id:Date; b=EX5KzeCgQdmrZslbNEXJQiPfWPrnAnG/HWIRlOphsrLw4fxUVcnoMVxkwX+ZMczva837YK3HVicUz7xjV3bIqFYPEePRa/xrSTFk0AlJXfu3mP82J2HvQf8cfurBF52PJKtBHy5faG6jyC1w4AipBXs+Dr0ALNECJVc1cT7dhMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4wwLJTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4wwLJTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD53C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784608713;
	bh=5w1Q/vj2YS17nvE8yOkIcL7wqSiv1YfXQ7sPpLpccVg=;
	h=To:Subject:From:Date:From;
	b=Q4wwLJTNCMs7mVImybrfR6+SmOS56SfBfFtbp5ytj/7SdM+6SK42kpkpslBSdyQGr
	 CZuhhxzNuiAjSfp91iQliuzZqOxB6/rthMrYQ8ddV/II1Loq40oLnS7pqhMppLW4P8
	 rKYcE6lPP5W3gKRc2gBIeXd2Mk3ncRqbI1Lc0pVs/tJ3QM1ntgibYJT/mNbn9wlGrM
	 ufl9e8izvzTOj69by3mFLrc9XXL0uUWgjW7kgR2h01h73INuKYH4lQf8fflq+A1rhd
	 c2sflqDkItgoFoHDLhVVbsW5tHEQ9qbFpHRh3lgNdj4Gp33jtAmupOJ147Fsxl1Qcm
	 DVBQ2tdDRVSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9259C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460871371.17186.15934411067379847355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fff06c05cbed075a5b68228c068752a9d3a283c2494ec595136cc8cee4c0a8a
Date: Tue, 21 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784608713
