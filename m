Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631A2846A
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787034034; cv=none; b=XP7Yk0xU+RueonexmK74/k3qIdO1PUidrp2cpuskLbsvUywk73In/rsMTR/cDit7pjJUef6BkISxXbzfLqOXYB9LUBG6NhKEX925DMasB2D3XHGVEaGB6LyVcQ8itWPSkVEPVTOFTAHlSMy9Jo7WOHLtSukNVofpY3zi31Md/vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787034034; c=relaxed/simple;
	bh=fo44vemHFgEFkD2Q40sm4nPBCDvPnJ+FlK2FOnKWYXw=;
	h=To:Subject:From:Message-Id:Date; b=mCLXK61fscEVIjyHEAVGenQNc1qBMIHJPnV/3pGjf68f2K9w/Y5/jpsf0YFmy/oxQBeeyJ+H5oAeoeXKoUQ71R0Zg35IOUe2xTPEY6/kR5cF3KKPTIw8JQ7B8/7Ky6SEM8RKch3aj773LkXh4utT729v1EDBXrtNbdlvugwjFnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJwfSEdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJwfSEdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03B3C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787034033;
	bh=fo44vemHFgEFkD2Q40sm4nPBCDvPnJ+FlK2FOnKWYXw=;
	h=To:Subject:From:Date:From;
	b=KJwfSEdGgrnk45BAnYfF763Br52N/xt3HwlkbNKPkJOiobrdIJGgLvnWF4sA6ANHF
	 xQJ4ciZhFOnQbiQiNuqwm1llF7bRrsgjee5BFN7uEe2RDPB5nhk7/15kyD9SAhRngp
	 TIeqNLcYXVXKWygU0s/hharIwLRkgRor9ADsTL0AnLwCwrylLfFCU+2FsSCCaeNMuD
	 zkFlytEjj5NWipexJR1Y4D30C4vrzKnb/Dfh9THgDVwEhDbWB2A6mmf1KR44sTBv++
	 UmFKjxQYNK/JfkDmGwoRtL0/5BljML3spHniL6jg2pNYfa4RQQXsY8WEJBbQRA+okC
	 O6KseK0W2N23w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69AFC5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703403373.20411.12732726815767986561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168e81c5b7fb453c077644ccdee45192afe90a55e8f7683970eba46406cb4f4d
Date: Tue, 18 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787034033
