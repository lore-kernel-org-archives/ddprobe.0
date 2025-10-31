Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0522C0283
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761924595; cv=none; b=kuDeG+jLOX8H+F3DlMmH2wjIBvwXKbh+378oB/ANH+BxTFB8G/GdBnExnYc+xtgMmTqJfCmNI2I2wA1Lc/LRb2qLtz6vGE0Iglj+Nv0yLcG1x4Z1Pkt4KFvPOHO75hM3775i833AtiL5bzIY6Zft9JSej0ct8bnczUDzBCwKJug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761924595; c=relaxed/simple;
	bh=C1qSmsYMopX5fCvhpY76MbFJb722JPCQpfLD+xuzKVM=;
	h=To:Subject:From:Message-Id:Date; b=nqXdkayUE8aKtGdags0Bbwak2A5dprdZk1F8EG5v15nJ+OVM9/gCgUjzsmmrKiJHJE/baDDhiCRK7i1vDeijxtwTfl4nXOZDt0ze5iXTfSKr10VeMSFcw/uHTG9TrPPWnNAyLUlqoEUGqwYg3uzD30mWARPQQsmmAPN3uRmD4LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfSV8mzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfSV8mzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0239C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761924594;
	bh=C1qSmsYMopX5fCvhpY76MbFJb722JPCQpfLD+xuzKVM=;
	h=To:Subject:From:Date:From;
	b=UfSV8mzmaQ52w0c2MtQpPmRzBf3ZYwHGchRwkhEEpJZ6Wt/oknkyqnY/jrRZ6K61z
	 LNcvrOuN5QX5Cj9Uvbp07hDK1piL8n/d4K2/zq5nhh6O9ehJ5/8o2SFT8rIUsSsodw
	 isz9I81+MqrTBkWeu1cCSJbg+2zA0yEAPa8gyX16vQb5x5GArTO8635c26we4Wtimf
	 6DF0CpXnRwgniDKm542GfOHvNZdRPO1dB9BQ8P9REjPC4dtPXd5vDCqIDsP89U/YgK
	 GIsjK8Ps1nBWxdL3QlGnXubbXFnrszayekD+lN9GR55b8Ytd+mrd/MqAlHd/2eDOHG
	 PJolfCU2wEGtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8DDCCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192459358.9370.10229225715883769854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679a7ce256cf29ccedbd13f0b5fdc5097e6f9da40da7e5f99bcc8c3135f75bd8
Date: Fri, 31 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761924593
