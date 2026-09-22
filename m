Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66ED655820A
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790088634; cv=none; b=LvPYgpCPHhyZ8tEwOYQb6ob6kq9iF679GSucAcJj+lsG0z8ppmY54YcChSzNQvKJ3s3qO8/u41cnWVjNyTHh4H6sSs8/o8BoAYeNno9MOr9q/gwcY1V8EQaW8NQl8oqFdEd54izkCkQn/21YKFlSqfQ9L1axPsYvWT1/aBV+FxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790088634; c=relaxed/simple;
	bh=tNLcqq38WPkJ6zwk0nJk70jOJbAdydkg5jFS4ZCPKvA=;
	h=To:Subject:From:Message-Id:Date; b=O2TzJJJUO7DRr+8xbfRL7sCmrVXWsedsGDhAjYAz9jCm3mRzMTMs+9or9NVRMgDTMQJ8y8cLnCMW26Jz9ok9zD/1xmRi7j3kBt94Gr3l6nwmm68lwjv94wEsZoX3Y3oLxfR/7AF48KPQueoEb3o33yR2ezBIQRGHZPXN4BxD3f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Icw2r7mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Icw2r7mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DAAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790088633;
	bh=tNLcqq38WPkJ6zwk0nJk70jOJbAdydkg5jFS4ZCPKvA=;
	h=To:Subject:From:Date:From;
	b=Icw2r7mcPSEo0/AmVA15DFWb0kduX09rah+i7yTuxmrfXU0epBNdw26gQZA1m0gzh
	 6JaHWGOTk2sZ9a3zmsB1iaIcSkQG20OOit7fP2YEj08T1c46i2dZkfEv5mTiMBGPvJ
	 DwaQIFrqGqDqMqqNSN40A7KvTk2CN5ahJu4U4ePjstDdLUCHoIhFE0YbDHaIHqmqD3
	 KT0QGbYM/DtaCFJuygJy+1kU5T/y8ORD2shA9gi6JZnKmpgAxIq34QAy7zGOP6w3qg
	 3M4zJkjxQ8eFdBe7BgDn3xvv/2q83GHRw1ltZ7r2bMmNqOofZKzOm6lf8yy/z0fa9q
	 ieaLPduLMvJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED77C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008863376.9455.14400417730738724298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3aaf0ff9827ab86fdd94ca8069132cf4371ffc977443a02d85da81b3c5e44b0
Date: Tue, 22 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790088633
