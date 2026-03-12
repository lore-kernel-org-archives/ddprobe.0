Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056553BBA19
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328494; cv=none; b=MY1X64RQtnF0eSueKcJBsTGF1mvLbu79l2WWFseVMXSndJy+2efKZdZTBkRU/MysyGfGDbWCuySeWKbUPmlf5J2shdoL6MHKwMl+aKE7EvlQ8qx05ne/L9r+SsAS1d1MOK+xqgJiy73X5cxb9E5G4oasvWVf9OtuZDkn5unX/jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328494; c=relaxed/simple;
	bh=yHkuna16pDD1T4cmjMmKpmy0/9fRraGZrSlhXzZHGq4=;
	h=To:Subject:From:Message-Id:Date; b=NvUKxe7vsNjAvHI8Ck41MFdqXKVJYhQoKjgyZM6tu5RM6jj1QXAxTQBb72FMFHrfFzF+P7BHM11l/VGsJcwc2ibPg8y41uyWtCQ0ORYRqO4V1CMlXCaMMfkFdBTy2l/6z1cn0L+vKR7cRJ9vpamFJmeqiPkjDrG+ykmI7TpMYYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnyTXpIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnyTXpIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD65C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773328493;
	bh=yHkuna16pDD1T4cmjMmKpmy0/9fRraGZrSlhXzZHGq4=;
	h=To:Subject:From:Date:From;
	b=VnyTXpIstlWKAuKuXjkOrMuXmUR99Vrd9b3C/Z8sP3YWhdpEh1rKe+HvzDCQy4p97
	 8VdS7A9T8nWCf2ldjGonohB6kdNlg+/gGcmQWjb8pfCPJWVIsPR4MVY9pMYsNMssCH
	 kTGfwrSJmhowcP3wY5Q9NZtJ/R1iE1t6gOwsR8a2I3V92a4iYugdcavTRSMa6fuUxg
	 txpQzcGpfu8iinIDavTL9EQm4A7EhDMHlPOAF1azKSloarlRbLxi/UgWh+WL4xYtKY
	 Euk0NwZ2XCTzt4m+zm+35k7c1tPnKLGR9zJAB+w1Qp2soaHepLSGkgABbelYisQMd0
	 KgqHEvncql71Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CB1067041
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332849358.5963.629946320075963435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8211581efc84c4c2b3823f4c412a5d0923f8738778a57341abf3597c7c8538
Date: Thu, 12 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773328493
