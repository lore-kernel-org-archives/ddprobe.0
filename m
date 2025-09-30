Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00E5303CA8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759243193; cv=none; b=miF0z7wrNfy3FLF26+fV3/ZkB241l7GXjO6UHdiEFbLRqnBpVK0XlSJdXU76WcODpuc/Pk5+5xdz4epdtHLM5fMmTf7s++pxnlc95PFAEBDZb2yLwCBP/aqbLuinSSekQbtIGQtV3NvEvUjpNFbNDw+AlbZIyzQwPVzqawtAWfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759243193; c=relaxed/simple;
	bh=TX3pHVwdejY4h5S8cgj8qq1HWEI49YcEmASKQuOqImY=;
	h=To:Subject:From:Message-Id:Date; b=Zl9IXzrUL5kHsDGfTokRql5CPL6Rrt+N8c+ZiVAn+7jt3Nc7jPazswyMuP2+sJUdRqoBcZ2V9IGtaJFRfzRVqIz9Ndlt24cKQz5f0527rDsIMTZTJm7yv1KK+tzAy/EouZP8nqt5rlDcAeBJK/WSNGzv1e/y+qMqh86Ep7KoMbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIUUOJyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIUUOJyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC5C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759243193;
	bh=TX3pHVwdejY4h5S8cgj8qq1HWEI49YcEmASKQuOqImY=;
	h=To:Subject:From:Date:From;
	b=iIUUOJyMVN9gQkxK+07HPOU5WVzqVwMj1QBulCy+CFLHuOA53E2b0qLP0bOpUxEyb
	 DcAAXdibglVd2TLme592iQjT/ADEzEtyIbuHNRDsjPuVAo2fqeF2g8a3lNgSL/VA07
	 XUAeXjut68CFSylZtxeYudMFeKzfsM6iAS9qLDEuX099WxmdxjOMg4DOuzvLvGYFjU
	 O9kUDgE8u/GpMQ5KNHdVAtL5JsL703frHOZ3HQko/zvvO4IQzPrK3BQAbTAIbBTmr4
	 cGi/z8vVeQnhBkK1ctabzgC1Vf7Pzy91b/DFT9ZJ3HtAM74dqni1GDN5O52gtMNh6s
	 sG1dphOtZQSag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90931CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924319358.15953.10769021834908690969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6ee5f6ea6ad08158ffd2141dbe812dfdc206f8eefeac8cba827dd811c574de
Date: Tue, 30 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759243193
