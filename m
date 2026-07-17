Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4F8233946
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784252914; cv=none; b=TFVzgXHS8MyjmyRRv3xxJycn9zEBjyaJO6uxkiitaApGJzq0JxDtd4cdee04VESx+FunCLoPcJTgDDveLcyzTwYn8LV/v0pzZkELRh7bL0qEEIYLk6cqRoEq8DRqVC+MpXOWmog84fb9/XFfUVjQNJqhBfkc1npc2k84OunpZ88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784252914; c=relaxed/simple;
	bh=QnFi76xz+toxmljBo1mxCu7d5L+eW39CdOvTX8KCwBY=;
	h=To:Subject:From:Message-Id:Date; b=BEFPLMZGYxB+iNM/k/NEUs1nxiVqTYmkoed5vHUz3u5uvTs+BCoSOLQgoCAcT2aD7Uso1ktUghpEQh8YUns0Cc8ODqOyhUMoLrGP37dhEPMc2awSse3/Zs+Wh/tw9JmDdRDvAh+yGkW8KNWZqeiO2Z4tVdxBCrkgaAkL1B158io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7iuaDiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7iuaDiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26A0C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784252913;
	bh=QnFi76xz+toxmljBo1mxCu7d5L+eW39CdOvTX8KCwBY=;
	h=To:Subject:From:Date:From;
	b=I7iuaDiZxvegBO6YoZl/RggwkJ24Ra47zCM4Lwz+FhqjZBS7uVyH3I/vN17mXuEpp
	 +oEURvGS9nllEJeWo32N/LSHTMsGKjR2/z7VrXRYuEXtxtZfOIhrnqPgNisyewQVIr
	 aZs+82uFxvNm36QjMt2AEpQYex++Uir7GZtQbeMzzo+1kkM7ptRtjrlFf42u+vHnYx
	 VuFp3FsErm8t7rGUPzRLuNgIpPggSVqwSWsW8rfOHmsYL3Umj/5gwbXFjFhbn6odou
	 ROuTm2s11FFjoeEnsoRl6vlFyaDqyfxNGkKXXFMgnaR137hQTmsocmNCXzJ3hD65KM
	 y9R5Y7xWr6Guw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC6AC4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425291368.5710.4228752321767634979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907e7bad76a1616c3dabda75d7ff606cac37d6ea2305f00b73ace7017b5cfe8d
Date: Fri, 17 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784252913
