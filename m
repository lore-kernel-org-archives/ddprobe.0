Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9ED224AF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771183494; cv=none; b=Bquya3Za0OHkCTNY66gdbKvIreZ1m4AU5BKNi4qhwkntavQNrBTiQlVQS3RJ+EUYxAGH9EdO5QJuas9uESeOF0eYA7Sm87Tt30t3iaVqz5ij16aSUs0q6AHt24FuvK+0xsEop7Hf3VGHSQJzfwBRCli9cCS09sTVuYHvOvBrewI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771183494; c=relaxed/simple;
	bh=y0mrULg1OegcTGPgxoh53i01HtOlBuQ6BP4AvfJL530=;
	h=To:Subject:From:Message-Id:Date; b=TH58VYFcjlvAAr4xTW4yDvwpmtAzqf8IsaYQm5aLv7JrPVBLiUKAIh3eH0UAddq+FVAGg0nCU6nZTCNZrAqm68NJE4HQkiSB3bHrX74NwG3BirjLIWZUxeTuT6yJMfSctQkNHKHnbuUVC1ForovuDAEit/iSgBZk8njxN2D1h0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSbxjlqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSbxjlqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDA0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771183493;
	bh=y0mrULg1OegcTGPgxoh53i01HtOlBuQ6BP4AvfJL530=;
	h=To:Subject:From:Date:From;
	b=gSbxjlqM4gVNA26BGaRgyB0+efVIJuYONm7LeD7sLFtNwX0nbxW17rb/o2/20baJW
	 OzcAvWDU2UlbHeTQ/T+oCXjnk5LX3xY2NR1m2b6vp54YvT9mc3O2NBRHjqBknbG95d
	 VQcjOxwWXdSiIqGsWh2jfgZ1aaHcEhXYfeBK/nvds3v0Lc8e/dj+3nhDN9F+eYsip9
	 zch20uS/SB3Ga/d+wOQAKp39hYtyPCRM2MiRdTNcfn4LMYLPSLS2xcixsd88K0scMy
	 5B3GEiVGrC2a8143p5dn6Z1xZOE+8K9n0QNLlFqMQKaO+G9brr5Q4BOQPhnmrsLFst
	 NJ8CLCGj1mh3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7D1E63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118349359.8079.10748754967036273621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b96b694865d3aaa5f083916de2d24c50088d77b82d2e46cdf415f041711c63
Date: Sun, 15 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771183493
