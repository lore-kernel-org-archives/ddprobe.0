Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275B7219F9
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711975697; cv=none; b=RHRcZoKBOyfpvAHq6h6fbeaUZQAKGXiPbTQWEo917ZjuHzruVii50WDdhwJKYGbGqGIREu0JXItQrTVlEuQmHWXtrzPSB105Y3r14q+64vcivmBVkwxAGPhqyWZJFiJszadNLTRmbtd5pETPTvDIKtTaoaejc9kSi2HDauWDZXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711975697; c=relaxed/simple;
	bh=aPn+4zsfitP4gcLuMIuB0dXtfDijp9HwCA/4OZAwrVg=;
	h=To:Subject:From:Message-Id:Date; b=UnEO1U0cJzWE6XP3oj7v7ndyGQN898PqLNRBuOhOOrN7kZ/ONlQMtHAx6TeWzVdrgwZo7WU9pgLX8/zi9UnUyRpiNcTrR89Ul1A9pM3oBfYuqqIgyjTpn1nREOembeBslANyi7BzdS5uf1GCQW/badWB3qRT8cntHdwq90qp+VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBk/eOzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBk/eOzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AA9C43394
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711975696;
	bh=aPn+4zsfitP4gcLuMIuB0dXtfDijp9HwCA/4OZAwrVg=;
	h=To:Subject:From:Date:From;
	b=kBk/eOzE6Y+j4kNJ/pUGmfKX4rpTNfV4YbYo9nY84GdtETgrIbVXRYDBgEPJn0F1H
	 ohu/DWTsct8aa/qj+jOfms/65PZVkF0HuIMoKKgA/jCEr8iOfqf6Uw6f5g6eV9E9nb
	 4S8TF8ve9OyMDXxfm22/c/u7H+k3ID3z8ea7htlF++F73+ir4Goak1+TsKRdD0Xqv3
	 Sn6WSzZD0izPoaUSAtdVinnWTSM+PJE5FQ/SndEYNda+sih4rZiUtTPfcarpChQPkm
	 arHg6wip12hL4sAME+k74Of0pEmbiiPCSaynO4X41rh3aEtKeefWE7cNy+WhuSPOei
	 xgxvM4j9PWOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662A4CD1292
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171197569641.11884.15262195517162836893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72b8a471243e28e70518c9427317e7a78816604199b2f785eb8fa82238c3204
Date: Mon, 01 Apr 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711975696
