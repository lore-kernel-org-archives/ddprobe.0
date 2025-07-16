Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2074F273807
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752640194; cv=none; b=sXvkXb+avOPx0C/INtV/UaK+ZNQODd36DLskvKdVvkZnQpjfhE+1ygxsGqyLMOUvwBwXM4j+9zaW/vnKWCWgkPn/KErLscb3072zRCRzohEAkoLDERTNPfeo4Zj0Y15liejtd2C6pTNOcTrQfAsimqWaXJlni1u7Bx84lWlhQhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752640194; c=relaxed/simple;
	bh=rXxhO887nNtwxlFFQmcWSSZg9klcnHjJV7MzVFzaHyc=;
	h=To:Subject:From:Message-Id:Date; b=PO3GKkakodY92PXDbCg4xLOt98mraOES8z6KYRB0IjGyZbAaSUw6eRVuY4uPFSfgQWPc6fKmcJ2NqUDiaRrwtdRn4KHG2oL0ITciL18iAXCZnKDA8OPkCqg15ZzTG93eC+o2nfCmRPqEX6ZfYRplh2wGBkXvcewju1JXW3Loknk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZ5LA4QT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZ5LA4QT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9605C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752640193;
	bh=rXxhO887nNtwxlFFQmcWSSZg9klcnHjJV7MzVFzaHyc=;
	h=To:Subject:From:Date:From;
	b=uZ5LA4QTBkabD2F57/xo7URw5nWyr38kb5/Wl2/Xc6f2ntKn6QiE6sTNPbSgw1tCB
	 Cxn2McDj1ZS4MTrlAPYGDoaU+WriXlH/VJ+JObifXNeLxXnFRmZuEIi6EkfNDXMUkc
	 EDPuCEu2dniXhu2AQKl9Vr2UuVsXBQuJuGNc/foK7xppz6CE2Hnshb2NglckFy9MXw
	 F1nTfQBmAfwv5w2pT7LHumcv9TOvSUUDGfZWZtcPkIZCK0j1mgJitlaMJBgxgmsA1l
	 ILL4zVPctDlpuwkEKlyyrlocZXcHfSGbA9XrxivOYomcFi0cnrG0+bZNuKnkaBIfos
	 fJhYS+XfTTFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C3C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264019359.23720.12669496711122469236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ecde06c17f94003d67f27287c9361138834f047ea6003c4590aca43d00fbf26
Date: Wed, 16 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752640193
