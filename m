Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1041579CD
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770707634; cv=none; b=EwlZXmw6xG5ois2quMm4cYvPfObtTuugEs421XigM9TU9VN2Hbl2mj8mByrWef15mlH5ZPOodxq7Ph2UT0ENcTVbxYETdiMejfZoOwjzGkKifc/lPkViu2lFt7uAA/VHB0VJB1bbmupCNGH6rT+dxML1apjQObq/zTxUW+d5LOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770707634; c=relaxed/simple;
	bh=Y4eOEj8XEpYSvZ7cQkqxS4pkjmt615WCqV1uRAFnOQI=;
	h=To:Subject:From:Message-Id:Date; b=rP6WpsKZPxiA/idVQNbvuVm5GUz19KW52lp5uQkznD5F39gswxM3RWYjl/l71ug0p6RfOgOYWg8doktDLluhp93PLAsEVaR/rESAJmPB+rkhkcWqGtunCcTTb49yp7d3+3Q5iu1FA5tf/YS5OJqYz/wK+2kiHIhQsRFN5CXBReE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JC7rgK3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JC7rgK3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A870AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770707633;
	bh=Y4eOEj8XEpYSvZ7cQkqxS4pkjmt615WCqV1uRAFnOQI=;
	h=To:Subject:From:Date:From;
	b=JC7rgK3E4S1zUuN6s8iW6nJWF5AB8NOuCBc5db+h3C1cdq9xIsws8vG7XOJ0rLnWV
	 RCYzkO76aH/2+efNCKGanU9uiciAdaA47PkW2iiqQJziKy4oTlTRlLKEDOw28jx3SE
	 ZIO3wWCLLFVE8mdEYloWG7v2ozLZvwRqA65LttHjAAlH5AsCcPoh1giLr0NXjg97ip
	 wG5MUjWocdLm/vA+SJVnKDcL85pro+w19iXQ3Nd1rW0gBqwngnRWtoXnIErYYuYNM2
	 pZYEJQ866bZat1Re+JthjrIydnHtFocF5fArNuD7oA4fp6uVaEoXAjeoV/Z2h3/7+0
	 9OyjrsGG9QZsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95507EA3F14
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070763360.2362.7066100846463474169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab3682f0aee26729582ae551b8bf6dfc89b094ecca17ca2184edd719e79434c
Date: Tue, 10 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770707633
