Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AB6225788
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786924834; cv=none; b=kHh8DxFF4vYpOixbucCsd3ze3atvOK4/ZaGMfLPC45VKT4eTxVyYxqJMKCkzQmFvGqFfeAYiY3Fqgn9zP0Cz+eBwMS5pklb+u/xdd3naOKVkuedL1Vt7DbbYmE6FAZ15efc0BRlBHS9IzghWQNIkfPK4g136EEVew01T1aNltP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786924834; c=relaxed/simple;
	bh=IkjWmDyCin+BCtfb1NsvMfmGKO06Cv25rvFdVeiLA6Y=;
	h=To:Subject:From:Message-Id:Date; b=Un85YHVEXyrIWEQ3f7v+nTZm4Qg/Onm3l34E2EpayC73i+NuHm7VRmOsc3GRI4TRw/Xvpp/R7DBII+BHYOTioGf2+BBBllxCxJ7mHfY1PBMkMCzJmgLepQXiRR4Klhnesi9j7ysV73e1YxLRITOFzyeDd/2oIggRTSUZXR9twtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4Pa01a5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4Pa01a5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AFBC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786924833;
	bh=IkjWmDyCin+BCtfb1NsvMfmGKO06Cv25rvFdVeiLA6Y=;
	h=To:Subject:From:Date:From;
	b=O4Pa01a5f8DZNn6ppXiJ2U1fAg19C3sHzfyY+oILj2BsRABV3O9iKyf/2ZHUN6Rvj
	 rjG13dQIX443HhKYfhHrG/1uMGOb0xSPkPtb3m2JpeYRxc+UrdbbtzC8JkJdxe7Nw6
	 cDA+9oQ85WQIbabt0VY9ZSaQ0fSCcp54GUVSjcUYfg5dqeRNABdKnAGDM3HeCBTsQs
	 ABja8GX3NzQEL5/N7kwfWjsx42UTSIb05n9Pvd/HyU3A+fdDy4ggv/DcysbUmqP80A
	 0Uar75EOm61/8HnYK3+Z2pu3KACqed9L+qgos5hZKtvQH+MLOgc7rMaCUAj9sPy9Nj
	 4q4999+JxQ69Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B60C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692483368.6429.3494813236170988366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255cfeb5ba0a64bd0b115a0245fc8d3f6cb1e44567e32fac69589eb40ada30db
Date: Mon, 17 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786924833
