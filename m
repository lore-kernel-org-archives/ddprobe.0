Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E49119049B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754759394; cv=none; b=SL41xRbTg7vQ0K29NzuIe2ENHwcbHpiCcbdq5D48J5NieNQeP0tvZ9njO4nbPXc+yp5vG9gF75rCb0UKE08VtaOlcsJ8/y/xhJpTbp9/adXhwDRAsM0h6JCqVL8CVhNegNNGc3RfS/4bYZojBZJMVoWcnsm31X8ZtTy/Eu09g3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754759394; c=relaxed/simple;
	bh=MRHzablULZETBWwbTi3sjF1b/v7HZYBaAQ2pql/iIps=;
	h=To:Subject:From:Message-Id:Date; b=DDWIqr0IjCvlsBceS9U6pG0AoQceBsjGUiYSbhn9wO5jV4F68LqvDQ1+EPegDUWFuUec566/qpCNSAEHzF+UzHmu4ONytluQbASDmYbml5ZvTUyyJu/uyO1zBVRyih/OWqTzGnnngLuI9xVm9hPS5QLIdoV4ObDG/9Zb4M0qc34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kODPu5bw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kODPu5bw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D9CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754759393;
	bh=MRHzablULZETBWwbTi3sjF1b/v7HZYBaAQ2pql/iIps=;
	h=To:Subject:From:Date:From;
	b=kODPu5bw5SMFzYnE9K8ucrAu0lEzyKCziuT8SGdO5ebb8XuLOynaHhsXmV2dhuY6I
	 weL6fYLz17uteWExko6FXoN2dC7hr3TvYXQq6OKpSyUK8aS2rUZ/xeGtgZTB0DtURp
	 wF9Fiwj7O3cGgyKVLSoVoBLf3rSU4kVQPjNWtcW6ud0ZovGGMp1rqELQd7fhW1DOZt
	 ZJvCrTiRtnUu1oM+4Wq2CKCNF3XPzfSX5/v6m3gSHVJEsqbWiBja7nvlFyvNCDSoJO
	 A4cOyoSdF2yjOwGYzWtz6v1lZjYzInevGVunhe+z+JSywWMW2uuxq8OTNSb5K6XcTs
	 VBMVeuijcYEtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E798C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475939357.1179.14111387034398069254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7709afcf3e4c0a91259e46f6b78e5aa870b66365af253fbcd8015c57422f25
Date: Sat, 09 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754759393
