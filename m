Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2EA278753
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771232094; cv=none; b=YLQzA53TF9paMJqy9n+FLjot581nNSdImscaFg32N2L/QQBjxTZYqYS6OcDh4+xgCAiRFsnptvoQZsxiUVVaksRDl/Cx23XubryGU3HvtIbxhseepyWkckBW33wFAsbvWzTbrKRa0s+KSMK3EsPGVnRCd3180483+gU7ovWUwPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771232094; c=relaxed/simple;
	bh=6aPbViPAhaxEhUeJd3EmjrakYZNCKVgsQA+C5LqohZs=;
	h=To:Subject:From:Message-Id:Date; b=dXH01SXYu6379QXHCPY7y6q/l/VIbEQyeAS/YsxvUYMWpuQNm+IpYyccO7b90v5Ci0dPA9Iyla2/3f1/Wp3b2GHwSzO9i+LBu4IV1nbK9+lIveKCj4+p4U74QAdJOrHnWYV9BhKsD4lPBKf/dElBPgEFCVUhEWo6Dhnc/4AaukI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUQCdeQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUQCdeQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB530C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771232093;
	bh=6aPbViPAhaxEhUeJd3EmjrakYZNCKVgsQA+C5LqohZs=;
	h=To:Subject:From:Date:From;
	b=pUQCdeQviK4XGMG7+e+6CEwgEp5YKzM4BV+73vRXcsqRITom4OMF1TnkKCSzvBKx6
	 prra6Rkfz3LgRynXJDspFrpcG4rADBol6zvwOuvDUpKddhn4U2FpqF82SUK5AbWrUx
	 ZQ1EpO6hPixvSCKoP2U/CKQimqHmb9n91U6deOnWeJAEQ6hpW+Ra5DKwMeeT2DQaAp
	 sj0RPuKb/JBxLR/A3H1Vo4TMUaAT3FjXLTmQlZiAU6TV96clDE0e+jM9JJuNT5rHhr
	 +uvujq2sIbsFWY0W49izga+cmdwDPLpn5sxCIk8SCMhG8VV0hqH0TAoZAfbAT0iMmu
	 d8xAIC1hzafuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE2E63F3F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123209360.8390.5446054591698220789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8622e09e3b90833e139f37fb079c13210d8a86c2f06d1b797fd31d718f69c947
Date: Mon, 16 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771232093
