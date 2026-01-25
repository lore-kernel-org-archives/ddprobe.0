Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD5A191F84
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769336634; cv=none; b=QWr+fmwhIgRa6M069eIgjdK0xrZFNwXMsnS7E7FrHQdBDD50D9DrsUUH1/VetRXDn8rYIq4w/xlHciYtYmXd3cyA6CO9vu80qjClEwpCjgIaythEi+hEYZzS4DQK4XvBV6MpkOR8YRhYDk6crDkNjOUIQF7zjIhuLbsRUZtNtYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769336634; c=relaxed/simple;
	bh=1Dv6Z3oIr+Il8lXe+e1CiELsVg6SSx2xdX7q/R4daus=;
	h=To:Subject:From:Message-Id:Date; b=It0Qya/a6yb/QU9n7NT/oujt+hxgMRjWuGogbWRaEAJWcbS8VwJggnA54IlzCysYezzcWSnDdaymjiOvTlUlcGh5eeDexgBob8wDNFNZ03CEa8tN/uewXOdN/WCDLnPUUBuU0JCvvtfcYdVtTCoOyQIABldXVqrTA1UIMkaksuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1aLub/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1aLub/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0371C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769336633;
	bh=1Dv6Z3oIr+Il8lXe+e1CiELsVg6SSx2xdX7q/R4daus=;
	h=To:Subject:From:Date:From;
	b=g1aLub/We7h0LeqSHeLspZ2PnwtT0XAMo6F1ApDe98+7Q7dkvcjeHpAXu5Lf1KRxC
	 1KPooEkyHk0cZaSWOwFvw6mrjEwAnvmo9n+JpZwkil9/Vgei000kYqPc7C7NBgeOoC
	 NoOj1t8MDLM72WT1QEGHK52macSrn3NhRIewL2wvMoM1hEWR7pRHd1d4GvaIMVykLi
	 ZH2B+AXv+8+hq2t5Erw/AbfCcPIqgz3gmyplT/YwFm1zrXcX5rsKJS3wrz4c4BLlYD
	 4/JFbSuxX5nBgQudDL0BDb0a6pgS19+f5zO7JlnQP9zmqcLDkd4V5SG/o9yYTSW3hd
	 6llBRg5CbhujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B6E63C9B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933663358.31229.16458614879949418971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65a3966f1f28af77aa35f0989396f575a3cee57ee6a052f265cb647d3aee30a
Date: Sun, 25 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769336633
