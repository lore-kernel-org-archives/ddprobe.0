Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A152D9792
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786162834; cv=none; b=oSD53qWFgjUm7O5PoFtkgZSUZFWkslqrU8xinUqAjqbXc4jEfQ10Djis3laNIYBB51d70hzgUsjXaFWh3KQmeyGdoz2T1nGYt3CP4o7HTopAcThIPSDebIhiL4ftgbHiig51lIQBVxcJAr62w9VAFjnZ51WLlY556SdCWvDk3/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786162834; c=relaxed/simple;
	bh=BKcqL1SWRyVicXVXXUPA4lTHeRHSqTZm/tAjrYKNcAU=;
	h=To:Subject:From:Message-Id:Date; b=fWk7DPq8mHGFIpZCLRewn8WYxCjJn5R93coqEHPRJfKiFd4BSYIKfu3NhlArs4fTDu8krefnQwY2rf/Me3WN0nUDK2JB/2blVC9oYgwbUF07YYeJdozgM2JCTd/7QQvw/bDe0z0M00ieH5SU5zBhRYDt5FJof4e1sn9VJfy2XdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSTA7x7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSTA7x7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA127C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786162833;
	bh=BKcqL1SWRyVicXVXXUPA4lTHeRHSqTZm/tAjrYKNcAU=;
	h=To:Subject:From:Date:From;
	b=GSTA7x7iCNoHaredE015VE+QgzxIpy8ehEypOy9hJv94u7XbIKnWeoXdxdYX9+5pV
	 X53HzX/W+hTlzI3L8rx8nG3vUZRjCA/M3uFM3Bo+2d2PBEsLnjEfQrIWkg0txTLVfC
	 YVXluVz7TwHJEzVUbbxycOpZ063ckabGeYr8POgBlCcqeSIjq6eeOIiuU+NYzmPxnv
	 CTyRkkCX8Xpia6GZLe8VPFiwHrTbCW8V9Yw/jq/EZ3w7ciU8N7NLUrNxdVlqkqp0rS
	 K9i5okgbApT7Uqkj9wD7eLdXQo5BsXPrbBMLglr3GrgDIb62lfAaqv5XGw81tU3kXg
	 yf63tlRcH/hbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89FDC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616283372.7109.11062646645330324420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf25fe280faf192ae2e4104fb52ae616466a68ed544b50d0ef1eaeb32170cdd
Date: Sat, 08 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786162833
