Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DDC81749
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748799594; cv=none; b=WLtS7Mhwug8xJLLESTVatJtaB4kU3m/RMh9cbU2z94nsQBhRDjH5N05MfEEB4pGq3+slQRLVe2Nu72dOMUayHsSi5ef/C7yj2O0Qg9jb+sFyXyYSYjXfRjrpg56+l876TR6LSNDaV4BEfVdRCHJT1SIoexNTVejO47DL1vQCDKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748799594; c=relaxed/simple;
	bh=kELUo73T+a1Klm5M/DiaAgQABCsL1QzzlnCuhQxVSwA=;
	h=To:Subject:From:Message-Id:Date; b=QgHoy0MjJvRN9utOIk412+XRL2XZdckwE3q5UxCWPJsA/nn7uGFXsWlr1capYcrd4yB95cVo7b2ytOGmMpBL7qZh8h3jwU/n66hyDn95dLTQeva/dO2S7nP5Ml8D8P/u+PkUS2pKiI4GiUacrwB/ghQbE/AZIXZscP84X1K5R1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2ivO+cI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2ivO+cI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1679C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748799593;
	bh=kELUo73T+a1Klm5M/DiaAgQABCsL1QzzlnCuhQxVSwA=;
	h=To:Subject:From:Date:From;
	b=t2ivO+cIFeeXgF1Zmrxgch/mGLhaHxO0wshm6H97YHCbM+wkaq+RBZ5z1ITqi/c/q
	 G2AEqdJw246EVBjQmkS0q98wkQ0vBaSwIco/S8x/4PcPdbn18SVG9OEFuVT+rlvsDl
	 OBYwabClPVLzbNPshDFqkSeeUa+942tAILd+0ptEpSbzAeU0JTJwK6qyYY5tSy9MuB
	 JQpLWyymGrTc5CmlkzL2EEmOZlnSAy99bMADttV+GSrfy3Y2VU8IlQxCPTJRDUmN9V
	 K7fw27okdr9H6DawzfxfIQ7dd63VRgKbObBRFJZ9O7r74WeYLbf/ymFO8murBFSCyI
	 wa9k6gxY4y3OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F934C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879959358.24770.8705488723497128615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fb9fc2705dc1af3b739a6ffa55ebe7581d6782ac36436153834a2193ee8722
Date: Sun, 01 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748799593
