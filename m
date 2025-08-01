Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377B9220680
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754084394; cv=none; b=AffkCU/xBeYyvl56rpOEbACzSYpzc6DSCOsQHR9+IrLo53XZY0JHOgtuGIrdaWlPZFI/aqCHm1mzkonT4Xj9gq1OXRl+aEBq01gQ40fKW1TnaHCKajt/NyjeKhHZAQxwNAPUAXNekmjfs/MgYr5/IoAsH0YpbyxRpYTku7KNpGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754084394; c=relaxed/simple;
	bh=o5Cw2whnd8vxL9Xuyb/7UCl+uMgjLzRwOI9WOCTex+c=;
	h=To:Subject:From:Message-Id:Date; b=P1Z3opCH/o1RQlRHH+jr9oQhFRavxQA8Xgg8uD84dC8XrAhhmA/rh6sO/9hkEDuTX53a23Z7W51Y1aT0nOeLD6hLiFTc+zwC6EJ4puhVs2Tb9vOuTJQlbZXwW2RpHXIOjmTw5VZKOZysqbzK3MPo9Ouf+tZh/C/a+6SDbEyLvmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZA9Bl7jE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZA9Bl7jE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4B2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754084393;
	bh=o5Cw2whnd8vxL9Xuyb/7UCl+uMgjLzRwOI9WOCTex+c=;
	h=To:Subject:From:Date:From;
	b=ZA9Bl7jEqIL0UarreFLLG6xoFcMgFVRwUkF/Snq3BUunpw2dMdQS34vya+icNXNdO
	 u+NlShWjkf+fnlFYitkzywk+ZyhC5jkzdz7FiqWq+kkZmc6DT0RLy0x5EJSLdXr6U6
	 ePxt8B16OrCMeGUP3/BC0vs8A93ZZHIidNi19deioMxtJrSZp1IvSPq1lyh11zxC5H
	 acP6MUpiCD/R3t3HQmdsJaA0VApA3wCFSmn2Iw03iDNhpAjRev/iyO5mhESUn4kCt+
	 ch88caqg6jQIG5Jfjn4vWWcPLI11Wzxrd0IQ5x2UfUqTrA+045SimDBlZkW9s6CaWQ
	 oV1fqcIsZg3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F64C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408439358.19330.7686774226888012729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be5bca73243e485ce8ece485c01469284cfa13bd36820f5f4b0c28c717b1efb
Date: Fri, 01 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754084393
