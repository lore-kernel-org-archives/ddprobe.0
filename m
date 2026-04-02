Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871CC38D006
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775121934; cv=none; b=RP9oEMOQfaMnVK6xoycsQanp2N/OIfiYPpCO2SwLFemwWxcqEEra2909Ms6PsrdEaUGCWVvoQboKISA8KEtxv5yOrHvau6MtgZYqzx8jcId4NF5FmaalMq/geNRqlqpiXKmduqzUj3vMvrg6qhpD298kuQtUIzoc1R50Wg/6dFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775121934; c=relaxed/simple;
	bh=9tIrmA4k8wq6GjiBrd01tT56jRtyvfPLLIID7iHRTaE=;
	h=To:Subject:From:Message-Id:Date; b=ePXHHtPk6gfK+lPL7dNtogtuXp8Ob+mFMhc3QJ/tZ0f/ejjzbvP5Rxpr4WU0ZX0mmDBCi3fWBU9VzkLF5lTSfpmNE+6xiAkc/zGVC5LlIjpLi20Nne5i3UVuX6Mgp7o5sxUGppULxUfxAH8rUfodX2JWpRW0h3nRSY8gpJDxvyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SS6d0EoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SS6d0EoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B224AC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775121933;
	bh=9tIrmA4k8wq6GjiBrd01tT56jRtyvfPLLIID7iHRTaE=;
	h=To:Subject:From:Date:From;
	b=SS6d0EoHu1E/F1j8J2/JFbRvfHIy03Jf9RSWphINyRbvaj+u3jBjDEOQrNieE+UyZ
	 JgQCKczTbOgmsqpEEdlVxNw3fJ03zpn2EVTWVJU4vDwnGamSlzvmF57Y6IA/gGmHVc
	 CZME5/w5KLB+JnYIStW2WiA3zVCxxWS4KYKlPH678oRYO9W79UgxT5DpQ4DaozUBMs
	 4Gppk3T5CG6HqgdKAw4Pi3y3nbsyNl4NRBFm3Of97k0xIHv0aHZ/9pCYGKBlP8uMj0
	 H1btKVOsuBddANacRTiq/1VpqprhJdfN7CKoXwo0zjPn7xyltenVG6GFj3DrpDMpl4
	 TpNU7CMUn0rWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7A1D39404
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512193369.14256.13279250099658968533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474bb8b2f53d3cadd9c499f645d00964786e97b0b4c7ba414dfbd5b9c493911f
Date: Thu, 02 Apr 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775121933
