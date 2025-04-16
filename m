Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330EC18870C
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744822194; cv=none; b=pe18ujBZ/WSahKxiv/gzWPI/RV1R+0eHhXiku+M0mC30WxsvCuUXQv2ytxqqDSxJSbNcUIUkiccj7h+gSKISamBs1GEGaenTSMz+bFXfA0gInAwheNCAyWXjLrtFywAnUXmRsVPoFJQK07dHKcdGGxgO88WouFpBAauYPH970N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744822194; c=relaxed/simple;
	bh=tnH/7mteEXcYPjVuI6XqXewdS5ulk/o91uNLx4uN3Lo=;
	h=To:Subject:From:Message-Id:Date; b=KhlaIP8UwqYk6FDCrC+g+NJK4J54xlTR2pztlHaGkbDscWYExbElRk+OdYL12AEvlJLsHVWCwZvcikh3ZcZZJ1zvgRT1gUDa/V8NnGzRn8xdwyX+efKg81je6RcD5i/uNf46aAVbz0gZsRE5dkIhOrcF5+xawIqV6nhzTIiAWrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlExJ+9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlExJ+9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34E3C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744822193;
	bh=tnH/7mteEXcYPjVuI6XqXewdS5ulk/o91uNLx4uN3Lo=;
	h=To:Subject:From:Date:From;
	b=qlExJ+9XMdUhSkfeZFientaA2BeF9y+5oJSiBeUYhttbmIcI9bYXcRAVLgq+th2x9
	 jm0VybTPeFbezKPVkJ/fcLBK8wQaUpuMB0VtEJbZLYNmZw+GJMKYeGpQ0UF4C19dED
	 85PeMHr/EkTtVkAqx4ej1Q9Xmr1Kv25e76++0pGjiDz48uPFl9oMVBuE5lJxTLn1xW
	 q9xDj6W56+ZsJmfdnAJB78esvPAgx5iGbF1k/5f+EIHOSwy8KObpJqgl+BvZKaS2LY
	 9ZecDpEXaMMcIKP0P1bDTNcTloRxSrB2do7zjsMcZz1oJOYm/GzsaAax+kMpdKZVOP
	 GW3ZCH2Wp1Dqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92474C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482219358.16148.13958920753554693769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1375ad6e38ef59d18feafbfb1df4b8d807586744e2a6cd491eaa5af62181f491
Date: Wed, 16 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744822193
