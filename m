Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534E51419A1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714985543; cv=none; b=N/gCwcvxr2FmC5V19LCOZlq5aqi7Ez9EKNiis/3rM/nDftgzi4MHzSwCrtnpfalBA2l7z74fR3Pbanluopv+ZghsXuMfNyQgFJ6w9fMNca4flXfqFyglpfErOdnMdPbTCBueCleis+wBiZEkiOZOAhlHbZ/i8EKB2I0s6GSIyWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714985543; c=relaxed/simple;
	bh=vJm7i5vXg3OByYm0bqhVy8++lRSkggpz8tugKqrUscs=;
	h=To:Subject:From:Message-Id:Date; b=d1MjdQC3Q3X/+JtehVpE2eomuGnE2QtqwF/zbF50QWFuQOoQI/6GnqAXOZkjY1FIeLmjxr4LadCJObNwMk/p6yfejP1Vv/Uwa2t822No3DZ5q/lcG3T9W151VEoH2i4RZBZuZEsyaj+4H1YdkhIzCVMc3RIjQdMKGTl7FBWkt28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MB1vs1kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MB1vs1kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFEBC4AF66
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714985542;
	bh=vJm7i5vXg3OByYm0bqhVy8++lRSkggpz8tugKqrUscs=;
	h=To:Subject:From:Date:From;
	b=MB1vs1khx0lUKdIh86VKev4uCIxeO3UnO4nK69aCZNA3oe4SZEoIfXozXv+DmDyzi
	 yLk0EgvvdmN/Q6BmZfJZa630038DRyk5Gw+gid7Mq128kJ3548gHxLKT2gyJVupfzF
	 uakstWW2We/dag73gga3haPrwyRklRfK+AN0DZoXpMI2/dHfuH1HX8V7sI29LdMREx
	 mEqwsMw847SmPUi5fRhndfdZM/aG5vh5W/u1zuDHwkyvEMfqw8q7sZJRm5Rm7oHYFm
	 k53Y7RnzfloNpSP2NE7V99eM5z1vNSTZe7PftjI64lAsOfTDqW/V9auItrTJt1kkNz
	 yffUK7RAmDerA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C923DC25B5C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498554281.30073.8744140536771309584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411425856be4ed67571baa56168d86012c909143650ef86e6fbb324eba939b94
Date: Mon, 06 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714985542
