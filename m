Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3504C165EF5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726564554; cv=none; b=USUNhS+aUQxZzO3vKBQRQTMgv+zDAql4jtgXW3PkfxQX/09Db59fw2Gts7kS5Hx6rkwfT3nur1DrxLOvklCzschsFA9KJps7NIQKQfNCQIcZsKCv+B76GKASbnEezcHPEhZWWDZ5F5IG1bcI8mBTahPiZsv+gl17eYGI9AQhoaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726564554; c=relaxed/simple;
	bh=4BS2YyGK0kscQoLK/gLMBL0Cl0lmAGw2W/t4vQRVqZ0=;
	h=To:Subject:From:Message-Id:Date; b=bHi/xcVjWbcbJa0ni6MlC2Kmrc9cDjaxmXhKKrtQdeo6p42iQQX+3jzMCr/2pqgv6aHIw9aoOKn9pvbVGrmgumDxPnCE5Xvduehf9RGv28+xeV5xbja5V+AQLtu+regNwUh/t/up+xGkcaR2Qzzox+wh9ZPPKhlQdj9Gu91io8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUoSv7Hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUoSv7Hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA740C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726564553;
	bh=4BS2YyGK0kscQoLK/gLMBL0Cl0lmAGw2W/t4vQRVqZ0=;
	h=To:Subject:From:Date:From;
	b=dUoSv7HwjZq9ispkd/6RQeAxVRDBimWmbpHv/MVhjnFr6UV4XnyA8HJ1Lx9YmQlQb
	 wjYleskQAuCCJFRHeJuKUn6Ns8hDgT9UmNF7ZqCfEWtqHyRpHYZ31GKTP9so3iZx5z
	 aPgwpQS7tGu7/dKja6LgLVKUy7QGmtvC5ptcgIy2rTaroVV0r4rhE/b5JTCldU8FAC
	 QLtaccUzXWw35DpDUixdDJGQd2yej+rJdFHzBIrp0c+tk7iHZtmZVaTZuzTzIhQS5q
	 Xkq2EnwvMff4fL6mdYLWS6qcBcYlkUA3Ca4e4fKfNkO7mkS0GBn8f/mCCmgU6Vqy9D
	 9SCaTx56WAvFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F472C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172656455364.25145.10447947572422126678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108d69f13a3e2e5733eb14a7d0b8768298d034955c71432065ebd266fb91ab5e
Date: Tue, 17 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726564553
