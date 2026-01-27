Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDED356A23
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769525634; cv=none; b=WW9Koy1V7pWfJI+DbispzRfpujQl9n/yRgoQ0PiNknseA+yCnwuVfwZ9JX5OHntQe7jpIlkUBztfVSx7yIP06H1Q7uQiMXyvtkEzplGjZpVtHEw1K0mZRYPSBhAyApoN735zxkzz4joWK32WsH2BgCWdbJGBPL/0yVDTAkmWEMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769525634; c=relaxed/simple;
	bh=qqOoIPAZOypA3oQ0yN8G9jBQSsSGBJvcMcXdURbLElo=;
	h=To:Subject:From:Message-Id:Date; b=luy6L4CjpsHwhxuZBMmqitnSVqAlN5NcwvYpGsFUMVNX5BvOlGgabIFwKsZ1sRdRzA6ZRHl63luvEBdVqRDqdlgo7KAZ+f6nWdIeQAg0NmvVgKo6xod9qpTAKMs5D27TDlMGreFcfZ0WWnycDsB6BpHt2Nb9oZ42FPpUHVsjLB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgDhnmCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgDhnmCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A256AC116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769525633;
	bh=qqOoIPAZOypA3oQ0yN8G9jBQSsSGBJvcMcXdURbLElo=;
	h=To:Subject:From:Date:From;
	b=FgDhnmCyYYnMwVPvvO1KUr/l952zHawMNou9E0OCl9ZFRXfEQZqPEnCszrlfN/b8A
	 ooAcS4Gmi9SYmkx1dih64XysWDTrbfIz6HAh+RFB51r8nlYiU5lhRmEpmZYaia5Tx0
	 XoVSTYF6QhndnikMSJaceDlHW1Z2G42uXlrVtM/65uQRQAy+VQW97LK55WRMBwRnG+
	 nzzvBxI2zYwj+AmUCIDxk7kxxiWAitsLeCSU/iy2gdB0j++Jf/OhEzlg7hnnggnvSN
	 5mDZobnZX2mvPdXgLjMFNVtscgkXNCtpD1vmZ5pCkt6JXEUm5Y/CGQm36P5/ptHmdU
	 49ph/EOWn3THQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91009D2F03E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952563358.27017.9077778150769839272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8997adca05ed3b31dc0f1b64ed17a644ce16f86431bf0938891129b61e255975
Date: Tue, 27 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769525633
