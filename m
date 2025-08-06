Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1356C1A5B8B
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754471394; cv=none; b=Bf6T9HmDRSYAmdKO2YONQTqDqO9yz5GwUikMh3Y0bIc7Owp8Gqx48dfiZ8/o4gI+E2AH4uTwIbSXyMAZ7OBGf7/aElm9wn/rNQeQzSFb35lFxVAFbYzPrRrxcMOcu9Q4xqMkJirS2v0Q48bpdUDg3vl+N8KUwVFqY1SsN1SgbJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754471394; c=relaxed/simple;
	bh=kprJJaPsLR69Q91RcZ1tCdJEfZA2if3YiB5Xfcf0YVA=;
	h=To:Subject:From:Message-Id:Date; b=oegOfhammBet2eTZfIpua8WS/+wzrCFieZbEE9hLk+7+aTimQHS640CACBM7aP1EM/zVuymyiQNcRYvh/nSmzSYmlC6weNY8GN8Sm1bfb0udbLclFObGGtbqc1jEUSJXAvvNOUf3OSAqV54Qlt4aqVp4DVqetYcIgvHs8wsOXxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbsFLI3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbsFLI3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2A3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754471393;
	bh=kprJJaPsLR69Q91RcZ1tCdJEfZA2if3YiB5Xfcf0YVA=;
	h=To:Subject:From:Date:From;
	b=EbsFLI3X/q8UaLTlfvR3Y32SbatuQfVsPez/noTcUDcQAngA98XE+I39LSa6ubSB4
	 80UfiEeVzll7JhXvGwbAK9wbAp9mCqqgFwplnL2vrgqxVtI27P7voGp0BK+70dwmzL
	 CPbzLRh3EoLTZ29H0AACZwnMQuPC/bgPr/W44NA6FK2Kfw40z3KzG9U3DVpijiMK9y
	 XSouckW6xJlM8TyDYZBiKMUj3OrKlAMa9PbGR7BYdjPcxr7tNKMjGRp7xHE46MjRzf
	 4tqFzqBMQ7o+t5z97r6R/rhZFsMTbDGhgRWxbmEoSpnVYg7NjMqySzNLD59n70SKyp
	 GZxzSUMBM39Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B2C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447139357.22510.5350865816206954191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73441d56d41db2b2b2e7a36b9077a553b3a57f807153daa565053dc48c19f095
Date: Wed, 06 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754471393
