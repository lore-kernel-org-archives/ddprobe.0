Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A7CF4F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 02:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717556183; cv=none; b=a/CEu2NjRDf2/COS77M0wxTILvx3V2D5WDHzigvR6tH7ol0/U9pul7Ozas92olh38TYqm2hJikj3jvENglo4Y6YnNJh+wrA47m1ouFEAIAy8d8ip9V+13qwgWR3YIz/rbH+mOULS1Ko0Q/O/rr4s256M6odLwR5GkgWQrtNVUqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717556183; c=relaxed/simple;
	bh=WUGf6W/pPh61Hp/8+UNZPnEDW45SMnOhAdDXgkZWcDU=;
	h=To:Subject:From:Message-Id:Date; b=BzYLhIzBjCQZRFN8gt4faSCf6XUDto1U3Z+pagfOOIyp5OLJMfmcknxZMG71/878iI26hTgbR5RKcyoJI2RlACON3tPmG57nc/57pLbaxqYP9TxGkADaWY1oJAjVxF/prdCCCuJW6JSThpdpTDMN/y4bUyTINKurv0KG6RWYMvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR4csiRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR4csiRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C860EC32782
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 02:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717556182;
	bh=WUGf6W/pPh61Hp/8+UNZPnEDW45SMnOhAdDXgkZWcDU=;
	h=To:Subject:From:Date:From;
	b=bR4csiRDMd6Z3o2tr7YJQf7Dnk74m2y1xb6t5apxw9hgAKIlbr/48P+jezAgt17xN
	 9tbHIcHeLY/qkyTQMJIoho4uCn7WqFGCtC2Ip1rqLuWAkcyDdK3Iwn4MEIYxpLGvxC
	 c79r5T2iDQ6QiMNfuvpenUatX5wiQQ2+GC/IbSq07ZnUSy82HpbKrQ1S/yFw2YEJVP
	 hpoCSOl1o/rrih6NSqFDtnsX/KjUvFUt3e3ivEk6yqgoV8IbkVObnTEFcHBZ2EVbYr
	 d2vjTLbmXAG5VHCTBImWQMFgEeWWBaHcxw62kLcFwpm+JvYL9DmtvgnccXkE1DGIMO
	 T8QJOfOZK53Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB255C27C54
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 02:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755618275.32559.3946999563926935928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c564e2f5999405b418762a246d8739eb916c05ce20cc5a0d8aba449fb4084b
Date: Wed, 05 Jun 2024 02:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717556182
