Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D14A243951
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780151014; cv=none; b=L0Cmmcoxm+9PMfc5BEsTJ+GM1L4DCEioG95uehotFaT7rIOCmgf026TDquF3/WAdLtYJJQABCxaXP0S3AmYTqzppXGwcaCaR5dY0wLhdHL0UoqSt9WNo1w6we+2wfwjuY6dCmRKm0+h2zIl3E5x/JeXqLsHw1WrLo0lC77+VHrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780151014; c=relaxed/simple;
	bh=Vj3TGGQkkwdHT8OSQErJgaY6eQi+ewbDaqKa4QrPCBM=;
	h=To:Subject:From:Message-Id:Date; b=H76z94rv0vGAWy+iTzaLvbRGzvnLKMk8EE1CAX/RP0lXWrePhpqykDcuQxH8c/Id5O93L+F6zXgTR3OMGognoN4T/9AChNpZyv2qKQngKEPNUwMjzDOzACo+1U3ejpVHJKBUD8UBw7R4jCiRnzJIrRTtfVMMd0pR/U4lTkwe4Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVIXyxER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVIXyxER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C897BC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780151013;
	bh=Vj3TGGQkkwdHT8OSQErJgaY6eQi+ewbDaqKa4QrPCBM=;
	h=To:Subject:From:Date:From;
	b=hVIXyxERIcD7gicLrSjcKEXi1I9UsynAdSJNWvqHYERjNVZy8QF5AjT537QpPnRW4
	 83n+HPga0C07TdEk9nQ9418zR6Kg+A6vk7izd5Vs+nnbbpIE2GtP7/MxhDqFQaTMGe
	 JqLNTyjCUZuo5mLTNRzFEcHyv1+ypJn68pecllCExByQebdQqTUxGN/QOzflsMa/JA
	 OkuBlvrAtwVaE/yIP4FaJdYdr85zRPL1BCihu8Gps5oW1hElCg2owTvZbQjiS2k+qL
	 vT02ZFUSHsIrRYcVm4sO+VTLGWNfc6aL63frTNerz6LgX4F54ab/HyHOrqSTn98Dr+
	 jAlUNW0yAW//A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC28CCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015101369.3001.589801919684854433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d82cf3813f55324c82737b748cd8171065b841b0061fc97a0e0be72409e08c2
Date: Sat, 30 May 2026 14:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780151013
