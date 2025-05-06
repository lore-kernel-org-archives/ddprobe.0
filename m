Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AE34B1E6E
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746548394; cv=none; b=QXMJL96l0lYODK5Al3ZzbwH7Euuv/kzbpsX7C1MP7C5crIt0l47A4KwYG7RAtgwesmcRs23foE/cVlb9EfPTAPWF1lvNERQBYuSnkZhxXYjSInRYSs3adfAPtwVpDMIrEzoOcXtiUwPYWhv2geEeU4VgXscI0LBphSI4pmyhSw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746548394; c=relaxed/simple;
	bh=Wti6oF2Wqc7hs0CZAZr4BlXivXHLn0drblwqd+2OB5M=;
	h=To:Subject:From:Message-Id:Date; b=LI9z3jOBIqx6nKSTgIW52LyRg6VLRwo55yRgObBO6TBt/n4T+PJ5PoENSZgE1I5JMEXZNrdnS2VntTl1KKrbS/c720oRxIdLHB8DN6YW2A45hovQ+QubnABArWiROdQhExfr3R6Uq4x4WNAGabMKl/oj0oLPuw8t2Wb3UgNuMyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxWvAFST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxWvAFST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C70EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746548393;
	bh=Wti6oF2Wqc7hs0CZAZr4BlXivXHLn0drblwqd+2OB5M=;
	h=To:Subject:From:Date:From;
	b=RxWvAFST1FBAkb3lGc7d7JE3Sr/VdwA8up50EN42VJky3UGy1f+D+CXTqsFxHZ2Uv
	 TvWsoURYpJy1K1hi1R5sllD07t2J1wUXgNPTZDxzhiltnv2TWzX/Yo3FpCoJniOOM/
	 1H+Tvqp62l9LGR1kmWaf8RJv48Ik44lC5BgO5LXaqLk1ClGF+AXqdoszAomX34KMxC
	 3o15mlkIfmsKjMGeCxt2OHr4QDAnd9PVscXVXBf0sSpH/I+qdSJzJnKCcxgOHlRyZg
	 xHc7B6aONOuX7PK77fnTTIYHmvQMWwfC4pXoH4eKcrnAmC5yItIR2SxLkqfH3eteBs
	 94dP8nniUe8Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC0DC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654839357.19230.6318758180855398748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eeaee6f7cab43194eabbbce52dda2321ef038db7726a33deacb00457c7a3a91
Date: Tue, 06 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746548393
