Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B53F346E43
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774013094; cv=none; b=hNSdIWsXoDKm7zmrWj6NpbHMdj/MYAAPuYNynU8EIxS19ZsdHvbhcmGqQBkr1mmXJ67ap19ME2PStwjmq0R7aMGpyLh2BjnfhHeXdAwXmVnnEYjFNglzSuRYY9q3qedEPM+xcunvSZeBjzvmXJr3KiYwQX65v58QP0yIAx7GrJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774013094; c=relaxed/simple;
	bh=eVGqFrnRxWjroNxlc7VjvM04qDO6dAQ6qfN6KwojOAM=;
	h=To:Subject:From:Message-Id:Date; b=WiV+v07NI1CewcFV9KmbJUj3magMJ2wkc9tB+NB+iyLxqVC+lIyfYBnVGnJcGDcQhkovuyBYzX/dABmrFJ2QsT6TYG4qCNN+kFqdBkXgP2sD3tXCBgAjUSUfYpW6jCADn8vzm5kGCOBoRglFm1Hdw/cEVuaAZoCcalyiMYeYUcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnlheRR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnlheRR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E087C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774013093;
	bh=eVGqFrnRxWjroNxlc7VjvM04qDO6dAQ6qfN6KwojOAM=;
	h=To:Subject:From:Date:From;
	b=mnlheRR1+rjDLOS16rjylSDtNmpGxg2kYUDhSrZub9fKROltiJowKQ6p1Y7fAvWWx
	 cImDj2RSFqWZFl5ytaJtgNrMGmq+Df55CVPIHBR011njKFEmRyAux45eaz5fhNES9t
	 Joll8WQiqPzmcnE1+90Gjg3JEuzZQb4zJ9DnTisVCM8jZK6+S/KhI1HiIp9ZmfT0/m
	 9Kg3otW3gGi1MSprXKM+4gUtQxNdLMdqbH130P4rJrPqAGSio+Zp6wXVkscEkt3mdH
	 Vj553Jy1TfJk3uwt3nfjuNxyFH0rPZ8JrmlXe5vUlfid7em2ITJQJvdbk3vvq7XXy6
	 8nHr73G7zeFnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8AA1098781
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401309357.28494.11830398006365580389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8d5bd6c829a07a17ae1a351169e1388087a4068234c63018fa5691635459f9
Date: Fri, 20 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774013093
