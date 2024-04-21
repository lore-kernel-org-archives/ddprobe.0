Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C5C17E9
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713667823; cv=none; b=BSVDhLnMSOYBF+Ucq3at7ghXWlHhAZ4LGU6Fg8bajZx2llgyymz8atlTf5rU+WFiyPqFJyVMrc155JzZWqcJ+06NE134HWK67h3ArbjBoXYVhXVd+y2MPb9ayVro962hPjjn9ObkdTAr626JuGpJITL6/mN9eihpJg0KCy3ZPBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713667823; c=relaxed/simple;
	bh=V4dlwQYdvNrEKbXYdpyilvU3OR/pbhE+AMT3zXMFSc4=;
	h=To:Subject:From:Message-Id:Date; b=TYEA3Lb6omM/OdmqqBI/V8swAlFayMjaeAcEILAVQRcofDFWUaxem2gLNH9c+/tqAbD9C8yhSIKmleTjOWeiXSCc9xEiEFuImzeaoO9/rwxNBYYvmr4BHVtRRWwFL8Lwrr3RlbTRffJmzeTeU/WBQ04ecnPmb325TOFcU2VI5Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKo8Gvtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKo8Gvtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D0CC072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713667822;
	bh=V4dlwQYdvNrEKbXYdpyilvU3OR/pbhE+AMT3zXMFSc4=;
	h=To:Subject:From:Date:From;
	b=mKo8Gvtxsnrw/LMFIk+Dz38tMkJw5Tn8HRgPvWfX9o8prU6jLy2iVVMEUBvWJCmsM
	 OVTxlTN3lRCU4G86wwh9b0D9Rkq9cfmULZUwkPVbt8+tP2o0BChy85S51SrVJAIPdL
	 9ZzDjLX/V4wyj0oqjqpD4Ufs0r9H2HV2zCQyAhKyhlHOt0VnswWMge+rjcvr5XVCyt
	 e0H3euV5pZZcdYmC78eL+vS1OsFKrwubqeDglk22RrJFwyO41KXt4Zxu2ZkG2a3IGS
	 xQP9wR2OroZksvhUahmAWbezCvzkPHMJzfrCsXJgsDu+VOqvceNVBi5BGwQX5du5BQ
	 zI90RZw5uyz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1076C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366782277.1483.1526705222080882668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619a8070da18be9a82a86f9bb68bcb41fd833564c8b6878fad6ced473129c6c4
Date: Sun, 21 Apr 2024 02:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713667822
