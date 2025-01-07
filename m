Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF0D1E379F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736251554; cv=none; b=nQ8ztlPh3mcRdgYU5QGRVKYN4sp6uBo3/CQqDNIm9u/tpoN0wxGvB17IGr+Hx0H+AyaWAyF4BFHddtXQkGutJeUM61UUjO4dMGb8+Fb2nntQdDTyda17TFdIpba4pSNQcCS7wtSBjLSbcYcp4kaSCkqtBgxVatuAXxMNWTviejI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736251554; c=relaxed/simple;
	bh=yEXD3Vxr5nUgR8c/BCs0uvVVC9FV+gZL/+O0QnaNBhw=;
	h=To:Subject:From:Message-Id:Date; b=CQtls647UtXffsaux4Jg5LVFGFmdAHRA9vlkfaxHbC+IQpg2IADAJbUdUBT0+XGa0d0PedNQn4sK1sgEoPVi8TFuNEhWrv3OK9ny/qQ9UHZZBSG+o842/1P8nlE63HZKL7TzcRywdkCAV8BKNLEBwn1V2Sz8X6PYEs0ETTRaSKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LP8wVhHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LP8wVhHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE9C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736251553;
	bh=yEXD3Vxr5nUgR8c/BCs0uvVVC9FV+gZL/+O0QnaNBhw=;
	h=To:Subject:From:Date:From;
	b=LP8wVhHUcjRJ4hXJl4LDZ/kqRfd74enGsl4iMV0DHakhYHuCzSbo+LhJGY7/7nM7K
	 7ro8ZT2w306Rzo2YGrodahglrRahUI01CYl97fcKHhScgW1mQrCI8p860bjYtv4S1o
	 WZ7RYRD2QupPc3qCGlxMz7eGkUh1UM0ID2VJTVhy2JDgvmMKy3tBXIvT9xOMN05O/H
	 5F/aWn/alqV4UMsMd6mk9gTaH42NIbM9p/X0EUGXOdWVmBwaCOk0kw1097QjOReeMK
	 GHbSUrcg9mn72IQifLA9ZyWmaPtfxR4cGwG3vuF9s7kTjEH/AFEp4WlYGLXMgk7dNN
	 w1RdYvZuiaLNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930DFE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625155359.26052.6378088367764302542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a654f6de778261db5d44b56468d167c63bd21ab7d61e932028914989737c10
Date: Tue, 07 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736251553
