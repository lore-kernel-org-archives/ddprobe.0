Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385B1154BE2
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759973994; cv=none; b=mW0jrJgfB7Sf5Mw8rRX+2TNQel/f7omHaBJBTsCjUcOe9Itg9cq3ZQ7I5oIITIvbavEHPaQn4Cyr/5IuLvf1HI4h9GSrA04EY8NobC1LFEHT/AmeLxe9EsGCySlTnMWzmP5VyzG+Roq1T1O7D7xw5OgtkiAj9WKN9Sp1zIc9Qik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759973994; c=relaxed/simple;
	bh=tiCi4ScodqPyj6a2lPCo9kkkTSaJP91fJFyIgKB2aoc=;
	h=To:Subject:From:Message-Id:Date; b=WrFou9PEPFZQqwBQJadzESXjHi/45iPFBUaNReQKPAmL3eAbvsObEV1OWWeMAqVhODj8qUVj/sF3zEI1mpx/ADRgob1SL1ngNyjbd8IZY6x8qJnh678dtQhY4vDZrGPinWD2+ZCg09hRceJEi6St2xoClnUC7Q9D1hBbw/t5/6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFu5mxBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFu5mxBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E89C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759973993;
	bh=tiCi4ScodqPyj6a2lPCo9kkkTSaJP91fJFyIgKB2aoc=;
	h=To:Subject:From:Date:From;
	b=lFu5mxBPnaStwYcf+RLamtY3YKnK8m8bRI+KYmBqvS0GkP9I9YyLtE/M2SO32d6Wb
	 FfaF2EhbnXU4vn9xY5oAwpbSySfm+2Meocq5ID6Q43jk3ZVNw4vxHBniGxM/+tHCwa
	 +Qviwd7teS51ddzivH+4T+1scCkLhuKcrppBhKHkXEVk7/YJ89Zyct2px1B2dS2pFN
	 pX0MfB1zgDZi2KtSAepXcG17mKPLlwQHthFLoe0/IDnnL5vGgUjZoBlbLjXIHgMS1r
	 LVxAc5Y4Az/Ef6I52GAvZ55rqEwOpCFy8QuHCI3zf3f+Kwb4Uf6bLjJ6H/fcxNkrWd
	 6GafzxR3UCMeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94187CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997399358.13716.15387163264811964871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b0063ec97210f3d1aa4e717a4c94a4eec3eb45e30c4f891c1079c84232b335
Date: Thu, 09 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759973993
