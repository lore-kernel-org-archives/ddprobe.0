Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0278E396B9D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767877434; cv=none; b=EafOI1GjHlbhnYX9byHuYNn3LKF/6or6MHobysReHZW1P/ByIrcRK18OZ0OPtJS+QG4QuyfDAsG73dafIiGztFn+dc+rEPYIJ3xOB06fdCh2zX/ZKeF8ZQZi1gN4K9xQvvfTqFX7LLIN5pnGsgJvqbDkG4HWzkROOZ1UYuUbsbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767877434; c=relaxed/simple;
	bh=OIOUBhcm9OM5ryyHaGYX/JnydzZx0DUPiA7evfLC/ys=;
	h=To:Subject:From:Message-Id:Date; b=RYHCER74p9EmcG5YZbpwUqxI/XclMX3azNjzMKzq68l7DjbaMe93BmkkotvLr0ejSvp6GYq9nsrU8Q16P9gG35T7eNqYGPvMbJED+umJFlDZ6fSf7AGyfs3mm+ndnYQR3z2252Lx0emJkkud+YMS8QArIy3ETORRg+LNxg9DbdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsgScQ4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsgScQ4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C815C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767877433;
	bh=OIOUBhcm9OM5ryyHaGYX/JnydzZx0DUPiA7evfLC/ys=;
	h=To:Subject:From:Date:From;
	b=DsgScQ4Kp4aep2qWMYF7A/C9A5yxkg4KDrmZBA99/J8khGIUCANhm78tfhh3mwpyE
	 UEnQ6UBw2Urr6h9+x+rV6WUBc/pGWpOffgnhas6Jh14QnZTI6nxzhRA1QNOqObA9tS
	 kKScGBupvLV3U+Ab03glrPrByLuOBPjZY95lZgqrLobezPpvOgEiNBW0vA09Sg08l/
	 RgDmq1U3E1WpcHy4dzy76AnYzDIQm2rsedBF++JDtzt5Re3Kiwx8mtjM+jVzK3GplT
	 e/FyXgao0lqdAIFegDda1502R3IiZhQ59Ao62t7i3703DHTo/yUPMwMcAHp7iD2GON
	 OeZZ/KFL2r+kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDED185F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787743357.26010.5657162719287311638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7b19382ef7377e60af7bc9eefc40afd06ee38a6c687cab39473dfcd4f176d5
Date: Thu, 08 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767877433
