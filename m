Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D64175A68
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791594034; cv=none; b=leizD3bIk050T3tlRMxzRHkyRDxl8pOWMGVEpvIqqWn9nwkmtc1gepE8vzzvDKT7NwMLrwzJS+fvNtIfCBM643/ZD6SEVD7iBRV6gJEQ4990GVfRFf+jQhIeOMH3aPG801mq+MBOsR2OoQniuIlxcPvHFmQGkjDFKa/Ph87NnFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791594034; c=relaxed/simple;
	bh=yny3onfiz+Csdad0lExH24Hq1BlC2L5NwPzi4Za5giI=;
	h=To:Subject:From:Message-Id:Date; b=JoWeOVwsT7kCc2NzFgVnQGfusAQPqqQ1aBtWxtjnAiTms+Iv2YciBfFbpQvYQZr0VLEumJAemjGvix2lci3cEkQEC6P95+BfCAsuHuBvGNRy8BY3BKj3YxavYBTOm9JEBFlwzLU3OyFYZakEkk7BTZe2nxBVJATM3sZZZw1IdlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipALNeMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipALNeMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80A6C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791594033;
	bh=yny3onfiz+Csdad0lExH24Hq1BlC2L5NwPzi4Za5giI=;
	h=To:Subject:From:Date:From;
	b=ipALNeMTZ4dwXX5aE4YH8BbSR0m0scKLHwwSnnRrtrHUlIY3Raw5JbuI3sCWdnLiH
	 X0N6OzL5aPSGXAootVjI545rzRxkFGRW+KCXmYTPc5ct0nFEU3b5IqibrQkXACgyX9
	 gK9LWXIjP5DpI9Rn9abFz/YZ5t++X81qtkKas1dQnOMlM2pzX7urc1C+peS8Yk7gV9
	 oQfs5nYKVmtQODZdwgxpj+t+emVzcC5m8MrzqxVYNDl5skvck6mW2Tsqlrd5E49jCb
	 tVqreFP1bvpiXsFShj18V7a/O9SVj2vU6PxW3T8SZClxcMF0Zi3rp3Ol9svPwke/yc
	 YayykwNYQF1tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5EFCA601E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159403370.339.6635635719757686487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57372f24e75cdab215addabf18198ddd33c04b9311c6e9709ebda9acf8fb0f06
Date: Sat, 10 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791594033
