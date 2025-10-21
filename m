Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A39C279918
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761031794; cv=none; b=NZrNOIWh+D03b9fgaHHqFkIrtAt/p6/BtSSld0Sxh9KlckIoiRFU882bxzPcCTEFmC4w0mlx8PjpzS19bVWG6XJNtdc8ZKN6wULyd6y0B/gRPsGq2Njfdi1z+WP9CSIPC0L+MyNxDV9/pfb+H0aATTVASdxy23PNc2dMT4c117Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761031794; c=relaxed/simple;
	bh=92xaP3jt5oSflDn8TSYv/ZZnjLkMSxGFCA8RJyCdOoE=;
	h=To:Subject:From:Message-Id:Date; b=o7Fa7d4i8GjfYIuE2l6YR207ld+EWOOxOFU/5UF26xG7lbBACODxA+Zj/pxbaL2MZqVDuXmcHURYuMWbgK/USgMwSz88aVETfuot29bjofevNmwOwQ4xCYj1k5pT1eUcz6iYUkQtiHxMuObyNq3QFJM5Kgz1N43BJbxjyxkXxjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjwX9/Sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjwX9/Sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34A7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761031793;
	bh=92xaP3jt5oSflDn8TSYv/ZZnjLkMSxGFCA8RJyCdOoE=;
	h=To:Subject:From:Date:From;
	b=WjwX9/ScSNNLx0/joWqHfxCHinzoMGh1kUyEiPzb0XbpVVmOu8FpAIOLO0h9scRU/
	 6Ia04l0GvsmBFLLWToUIqxZjBz/7XT2OW8EczGOP7ZMou4ZtxUIpLtJQ/gJvnKEDjW
	 q5JnDb9MrS+yxjA/WGxW1Lm5LVYCqsiYBbmuwZF690xBFJN6JsnUO39flb1NjxqbYd
	 N6TIJvyuVMFmvt3jGKS7cs8IF94Bjs1y/dtdBr4SBvrLjgUazluVuXgrTOSn3NXcwJ
	 M5ollqw5a4LRGe0lWoFVE9HwdCkrAFDCUHnlgVTluYq4F8qsZw3qmhXtiQGT+zJs+i
	 YRfgykH6VsRxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B9CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103179358.28149.11737205282471765398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1e9ac5af5b8efb04bb570df96f318267df78fbb25385fc58c37c87bcbac518
Date: Tue, 21 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761031793
