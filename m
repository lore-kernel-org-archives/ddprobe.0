Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6621F099C
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756063194; cv=none; b=HEP8ozMUaXfLYj12tWJn/mQ1xRhOyunyZSlMosoSJaxhvOEBvBeUHrScCr+SxYqO4J3WXXOfr7ZvyqcSXvxr89RHvzMLlgTcqPyayexj1JTB9fWdF3KDdIvjHLMgC2zi62QSd+2H4crttgU5LE5QkV6DJT4am6pCLDoUZzk2+o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756063194; c=relaxed/simple;
	bh=Y40LvWtfM5xOFi+kWoJFSJKGY3pyI/Ofv+QilxkDv/I=;
	h=To:Subject:From:Message-Id:Date; b=SrXeiY0eS8p7s5y5bOEfb2dINO2pzYUUzOFKtMp580r7FQ/MEwd6DMaMkf4cfaHiQDezd7Q/rQ1K7QqTMbbGzpkKpN8D1nnZB64nYrTludyqmld8HGu9TfIXU272C4oDtoy6buOyGfHc4f4qWf0lmA3xHMRBp8eSwfikRPLgauE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrxAPSz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrxAPSz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64C1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756063193;
	bh=Y40LvWtfM5xOFi+kWoJFSJKGY3pyI/Ofv+QilxkDv/I=;
	h=To:Subject:From:Date:From;
	b=LrxAPSz2H2UFjyscJLslLdd1Gd1cPmyLx2iay2wkELAYS30NwgUNADUJF4o/n0v9q
	 j/QD8tGL9cgPb2BkU+qYVvJYq0xsWjJAGPQ5MLaURNYxLaO7oqQZBYK342omMr0bAe
	 GJnhNDCNE3Tvb5XLsILIyDLYQWT/lMDJaR+lXd0z4PwmT3TvJAWPUiy2EJtyZTwEia
	 6eHHiNSxYc/2KxLH44It7kI2T1EtuTAB2+tXP77QPXOZ+B19xJz5qVNwhnCQPwF7pa
	 cv4Dop2fldvPge9DohukxY1abOPCfZ2BYgGEfkNDcReLAsnu9QWOHr3UZILxVUd+Gq
	 25UuyXvxIjcoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C57CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606319357.24234.14612255770610086918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e6f03973abb1edf5d5d8e817c4af682f319cc41b7c4cc155964fb16980386c
Date: Sun, 24 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756063193
