Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D442BD59C
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790879434; cv=none; b=Eu48bqKIx16muP98dhQWUS4fIYzOldIduLjgzQArqWQfJ00BfwNlzzGGIagY+3r4q7Da7hNkke1sgSdMlH4+ttU4i/IvGw7iXrs0fiSpRdOrWe47V3AdxRIqh6Lrgh85EtFHmk4GedR/3GeS/eJEEjqalFKYkOLFApdbNq7pke0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790879434; c=relaxed/simple;
	bh=oqZLJi62RTxjh6X1zTDdd5ublvSTgP/tOAJl+Wi+bMA=;
	h=To:Subject:From:Message-Id:Date; b=lM+808Jp0OAe4/s5EPjc3KdRNX0ZDcO4eMUTczwyqmdg9aHYND1r6NVxMUYHLNE5Y7IhmpKD7YwMJK8J2eBf2OqqFPiUUKq339hkQONj89zfW2+RNeIklXVnoNbG34xX2OSFWmNM9yt/Zl4yDitQVL2WClvUlB7ZdJ+wnumLq30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQP4iBtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQP4iBtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB666C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790879433;
	bh=oqZLJi62RTxjh6X1zTDdd5ublvSTgP/tOAJl+Wi+bMA=;
	h=To:Subject:From:Date:From;
	b=pQP4iBtLT6XoIHOK1dXZCVvIpHdHmnrLQxy7g79+Hc8u+KMnL6kEUP1M/JxTlddT7
	 JPxey4rtp7TtJ+m5lrnjloLR9s87Wp7abkhqm2q3m7+zBPrtuX5V/O1FFLGDf7hL4g
	 0JFOHyCsrabYtFRoxZeDgE2aUDemv+8yiIV8eswGBtBvRfObONTS99llHjEGQJtyoY
	 Y07Xw5LfD6MC1GPQA1agOxkmT9QFSe+msRuFj437hRnbHGdZb+KMI8Ree2nwElvQK6
	 iXfRg6KTrpac1tVwsMFnSOwarsJK0HT88vHcwYBeXfRvs68/6Owtq1zdL6Zt1z15xu
	 sJjpxHZRm6AgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0504CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087943371.12283.7527684108575731192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53bcbe821c7d70bc2c8a7c1e0fe27b68a3ff2272963657aa3a2699a13a0a309e
Date: Thu, 01 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790879433
