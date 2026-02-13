Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5205E35FF6E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770989694; cv=none; b=Xe7FmqMvfMPKfcM3Kkq8W9jYpePdzDT1Z/DlzfmqPspzfNcJOYTqgHetVtesQnpjduF1ecArHUMifyXJXJwL7GCLHaeUGR148psRBtaBgyd5KZswwi8r7neGsxCTi10fUFENrRk7anMQIdTBStBqDEao4X9QPCu6YJW+T1GmZB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770989694; c=relaxed/simple;
	bh=tbaVIYe7Kr9vuaMTafsnMTo3qRQry7eBfGno3Amgtxg=;
	h=To:Subject:From:Message-Id:Date; b=SjzjvcrqEzPyFqj+IpMxWmUsQupx5CygtDstrWy/SN44GxFIedYPPH4ULNE4onsSx0M7ZzjcHXgTpk6MJoZrd7V84R9Tpz2d5ZYjkQAeBHwF0Wh7ih4PNoKtSQKc1t0ndPypKhHbX+gP3FgvVfk5p9ASjPZsCf12XhDj9jxZ+oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQyDx/ky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQyDx/ky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FC6C19423
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770989693;
	bh=tbaVIYe7Kr9vuaMTafsnMTo3qRQry7eBfGno3Amgtxg=;
	h=To:Subject:From:Date:From;
	b=gQyDx/kyLvsBWHYef2a84GKa48YLYRlFQ0tFNoJjUyXuVxNN1HYuB1T0WW0I6wMfJ
	 wBYwiKQdk1b/SDhe+bz9nPMEM5KRSKtcj85pysrCqqc4UtQh9FvAQ9IAz5ZQvufQNt
	 bKbxBnRqieEjqrHNwcDb2rdH41KvPBoM05VihKh8IIgP+v5Ko/con+Fe+o0g952Zkk
	 VgV5BLIImE/SQHHyMDK83aBGlOU34V1azrl2JuUdLgQFzOOF3xx3rAnEiu4Iq/0eBJ
	 n6XizwM1/Qx8NQ0wJmMrwwitsdlEHVjBauC/w7VHIAZAxTE9vInCwRvzmm0yWOgAxf
	 pkHqOuQvFarcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDE0EDF15B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098969361.1605.7557142139600847938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297523a57ef5a39da4ccdcd174bfbd6bbd7d95675e49b6fd6ce01969a6b5fc95
Date: Fri, 13 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770989693
