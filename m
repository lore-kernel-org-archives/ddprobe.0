Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455283C0A00
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787049634; cv=none; b=AhG6aTdRvPnhTMw5NjHC+cmVZf+KffCweans/T5KOWPDn4q64A1BXvGfEnqg26Q8pBdTduaFhrmAw4sVCyNN0wadEmxkHTr3t3nMcFIBiuRT3e2P1CwmOqWDhi4GAdDWBpMSwQQyighHTn1JfftMYOGbsCtJoK2qT3Yumxmg+e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787049634; c=relaxed/simple;
	bh=mdRubE/VkVywttSgTvBRdzT89BCZ331OjOR3kk8jMDY=;
	h=To:Subject:From:Message-Id:Date; b=LV4bRxzNoiHl8WA2u1Ix+lm1/h8mNXF06EUhkoI3tFjg2eTiRwvOt1CWRxmn/JuknhckXTPvCqMASLlv3yrcgV9b9UBvxdkQ6ktMDNzqPXLtPo2Kg4pJ5QY2LFvHvu71OXBFHQ0txNUV6NOTdLlWZkE01l9lq8EhjLGoCs7T5kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5afalgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5afalgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C7EC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787049633;
	bh=mdRubE/VkVywttSgTvBRdzT89BCZ331OjOR3kk8jMDY=;
	h=To:Subject:From:Date:From;
	b=o5afalgusMXE4adyiHpY8d+EQO6P3ZWaFiToeTyr4IqiBv2jLEsdTTjuIORUGGqJ9
	 Kz4+7LEmVGH83lWRhz3ZG+mrdwlCO4bAiDxrXNGspQfyd5ijk4EQgsiicTRd7ejwFA
	 3igGBQpXYBVYv8L2LZmkAALv0naOxaNmjIpGLydGEJZjPRtHkZ8rlThe+zzvwA3J/Z
	 YK5WPXEQ2d9UZ63JAjio5Z4lEFfHkdu0tH1D6Sn9rJoWmBI3Yxn35HDotXtjwUpqn9
	 yPKv+3sSQj/86ohKdgm+9aNfOudTGwqh/BUUbrpqbiuwktiu65d1wbEmY9mczZfrCZ
	 RMhSSFnMfe2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD373C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704963376.21257.12785952588210618482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d97a8c6946c1d481d3166e531fdd26435049a95e65186ac17049ca471cbba5
Date: Tue, 18 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787049633
