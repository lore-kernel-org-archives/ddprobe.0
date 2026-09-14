Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2661F3BAC
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789350034; cv=none; b=ALyup9Ve+WiNCOYBTL+hqzfLymb9Tl3R9G2sruWLewTTTw5YPje/Ysg72HoYFk0tzf3rf0cMml0KbcKF6DomdN60zD1/51q8spEHtGhuNLkM1fymULhQDO+tXw/RSsO3ntBeFNGq7sn7aRiETwq6ccrmlw/DLVARw2mkB1DPNcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789350034; c=relaxed/simple;
	bh=gHAduSRqKwtJN3Ux8fz87mGveL5/2wbUMKbtvO5Gz10=;
	h=To:Subject:From:Message-Id:Date; b=R4Ssr//yiJqbVY5UiAx7jiE80TtlmI/kHFTBWC1OULSCBdF/Q7+kkDmCaVW2r+ZrmODY4LzakUoagZ3wyA6ix4QM0Uc1zlo8z87eI86LmqBjFUVHRy4rvJj6H5KWkBXkhDVtp7pncUGoLRV9yrg4I44vw1PIuIw3AjIvN9PT99s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdIgsctO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdIgsctO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35A9C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789350033;
	bh=gHAduSRqKwtJN3Ux8fz87mGveL5/2wbUMKbtvO5Gz10=;
	h=To:Subject:From:Date:From;
	b=EdIgsctO/KREaQjqu70IypQXyS31mgkm5TXmN+ej1uFezwre+aZaO3ALE6De+3VAp
	 eUMlXb69HTm/Lq1oDiE3TWd9tGTha7LrOwprZYKHU2Tmsd9PBq3gkcUBFj2r/WBGdN
	 03k1+1o+pFntdLtDdPns9XZk9Dn4uIk8h15BIseA9pRfWzpdsnhZY1ixu0JLOkBTQd
	 rlLt4bRPGSCYPpRkU0dIm8Wcxeb4Q7Kpigd2CIyrnDeRUSHUkO7s4ksDblXYwb4+Zw
	 L+5SPEkbxQa5WLCuYssKxkzXI9Ns4HyKfI+pvTysPuygP1/D0PxG8bxq4uuTEfCXen
	 +9q/8DSE/LPmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD15C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935003368.28708.9239199705839075859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5cda976fc6057bc96c61938cbd7a3ac943a736c55aafe0c72c29df21e07818
Date: Mon, 14 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789350033
