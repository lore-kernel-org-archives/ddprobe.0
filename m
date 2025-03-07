Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F3B257AF9
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741382934; cv=none; b=hFM8qVY/6eepwZz1ZWGP7/bh2ghvagjrtvpfuwbIPNqB6IWMoRKdZQmYfv2u6f0qDFSGwHfN1W9piK/+if1Lli4v2M0ZORhU7m6ThAnOplBf5Ejm0xeWFikpr/FnAHC9P9pSFR9Es2LN9chRCCMA6P3H2FqNQSF+V/So4lOSc7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741382934; c=relaxed/simple;
	bh=9uYUPmnql7lNzQSfRMLENKJ2t8po6sRDOLM9XdkM7ko=;
	h=To:Subject:From:Message-Id:Date; b=nGOfuOtmGzMlg3CbHQJbsvZ2qhxzBr9meHNazkwT0QpIo0zZHuV1JuUYVzlfu4HeIZ5RQr+CA02cOggcxQf/sp0SEsBkK/8n6xj+yCrWbmRmtf6KglFgvdVRmQS2Pc30DWDkGCeZr9q8TaEmVYrIz7f8dAxLEHAsic/4u8AAp6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOfCn0A5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOfCn0A5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC56C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741382933;
	bh=9uYUPmnql7lNzQSfRMLENKJ2t8po6sRDOLM9XdkM7ko=;
	h=To:Subject:From:Date:From;
	b=fOfCn0A511D2zhHppHjb4cDZl5IrZZbS34r2iFReKnC1NBQsQ2xbwXbOrKDBs4+qX
	 Amhz1cpTH1//MRO/+I49HwvqRNkM3UQNV0fco+Z2h2jvniSPSgkhVnClqvS2jyVA8G
	 YIF6AUNuhjds0SACXcd77ssawLlftDRO1Ub7XmW4CNU/IoaGPNRIc5ympTUSD/xEh+
	 6b0Fhq8EJPa8GtgcpF0bRL2tk9uzWmrRiC3t0f4I60FP+oWo/4AvWf1yoPhC+Cx33c
	 /GQ5VszBJn3XGbVJq/U9FMJxp9igrkn3sAK378NH6YRtKS/6C7UayHSuAvrG21dbit
	 +g7dYkvJD7rsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CAFC28B28
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174138293363.8768.5150698143577556612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea25b1c99fc41a84fedd8e4896dd18e67b5d973ff231b4bf392ceafdbb600b1
Date: Fri, 07 Mar 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741382933
