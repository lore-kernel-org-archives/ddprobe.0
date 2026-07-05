Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C372F8EA2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783272514; cv=none; b=MNuariavPeuh7L++X0OqDkB9/U2rfzdqobOVXD/+Tfr4NNWCoA1p5DHsYkUrbkmG6QHiy3KA6PKHPCDWbwko/9+/4lPYzyEbwq4chk0K3q1FE2611paZzb/Q1b8boPOr1iViF94EIQtxg/nE591jaMmFTVFqcRppaepL7eDKK0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783272514; c=relaxed/simple;
	bh=SEuM22uWrSm35GejKbzuolAsGNB18lBpeyZiNZ2HwCI=;
	h=To:Subject:From:Message-Id:Date; b=MGnZbitZFodCrffxhkOkQGDufAtQ3L0/2JQRrAIQRatCoeUyU6FqeRdUzhIfOko169KcUVC+nFD7a31qHWaWtiCQ/Pmeobe/Rv2GZXPyqOXslCyhrvbeWaR8we9odJpFxaahKgm6Yri8nrAGOby3CQ1tGhoTgzGGsBedIFqZWn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCZ2lu+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCZ2lu+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA20BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783272513;
	bh=SEuM22uWrSm35GejKbzuolAsGNB18lBpeyZiNZ2HwCI=;
	h=To:Subject:From:Date:From;
	b=QCZ2lu+EPmOlFMlIerL/nNRbscXV6nXN4goIZfQS6hy1YCq/wUZuXx8sFXn3Gp8Pf
	 G13l33KE6k+jpftTGYsuThTLtrZT3eBaH7VbtudcpVxtCEkJCKcvoH8aFoyBvi5p9u
	 SdtTm5H8VuJjd2mm1VZYAKVvyMW0Ue34HHCHH96JSM/8ym2l2O+GNKJc2sDu1NtwOB
	 FvpIObL4cH3rxptLrDImmsaI74q0Ili3xzsedMV5fgBUzApdHPRuWIjxdvcSGdxxdP
	 UhYhnzfDlZK+qE6dgpnIiFV5Df+U36TIlQsKzu0XRcutHMyToAhINfskIQp782CbDQ
	 ua8a9Hxcj2r/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8821C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327251368.6726.17909872295519364586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a35b76624de8f9336a16768e4003a6a8d2b4ac71c4c93918727f6ee8c36b1b
Date: Sun, 05 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783272513
