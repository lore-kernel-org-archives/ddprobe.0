Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9B913635E
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733802354; cv=none; b=IrGXG1uC/LjVFfRjfRC96uYKd+lEM6fLbI1ox4ykU98skosQ+rndJ+Cs7f9zST9KbFPMXGrmV8+WsD1QlBq0J4HlOVttR9RF5ProN5PprUrbLRW4GITgmqC9r7fVGgIEtI7FibE+bwtDRQgI5Rg0m0cqPCU99MWLsvFNAG+cfn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733802354; c=relaxed/simple;
	bh=r2i2+nqObz62PV/0XI3dS9MA7URknbHL/2VmiLifpu4=;
	h=To:Subject:From:Message-Id:Date; b=NxslNhbBYOXedCeEKewbQVwX92D1fjh/p9mzP4RzAOc/c2empcwDIrn1yP05EgPL/FvrAR+EvzkizLMW/DRcdLJ00ZM1tlcCno2DtvdpxtF8AMZCTrVKwxAq1EUfbvj6Tbb/fjbm2RHM78ft0gbaEgo08TCJJeYPTut5mJLDZT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pktOPDva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pktOPDva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60D0C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733802353;
	bh=r2i2+nqObz62PV/0XI3dS9MA7URknbHL/2VmiLifpu4=;
	h=To:Subject:From:Date:From;
	b=pktOPDvaX8SNngiHV3xe2fOuO3wcr5hkOt/DrQQBAPHskn9C+ywC16+ZPLYoFFy9U
	 IEEsxjqfvEhy1R9nhn4//Oei0hZ71tNW6HHh4+S0UAXz6CFjFl38XBvxNGcvVa1XDH
	 9EDFhmX3vJBi8u8W0ufe75DvGsgFXC1t8myBIz5475v8tewGVda5Eis7xQwi9sg08o
	 4yIDoT1KPTPGCX/ZepZWZ7BuJXcbu/Z/i5QapDCPTO3BJzIyGzNpA9L2bg0OYNJWJ2
	 /cdMoaoBpSYtEGf/AoK9d33f30ftDoxBvEv3OSqTaY+l0p0FyEMerJRouec4FjZ5a8
	 GtFxNgl6S7d2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B4E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173380235359.6959.15130176478715936751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b898f69fc33bc06dc7ac1cf111e747bc0b8a94297dfa5b711b38f3586dba579d
Date: Tue, 10 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733802353
