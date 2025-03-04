Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451D142052
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741084136; cv=none; b=LpLD1bQ1ZyTZOKcB5AzRPiXOG5kesFzTtccUp/ximmJjZa0OG+yIV2ZRt3ZBVOpdEwi89GItQfe0IrGExg24wiZ379crIMziP4VH8XVUTdFKh4i63pBNkyumBcZJMjcl5fC/eMlz1DJ3VScb8etIpaB7PEZP4UaGi90C87F0ZBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741084136; c=relaxed/simple;
	bh=IKarV1hgSMHCer6WoIUhDZ/V/qQ9CUPYlrUcX0NlRTs=;
	h=To:Subject:From:Message-Id:Date; b=EWdDWJA/prO/a8iDkhHwMNvNrH961eM0KBCYgOMtbwvSSHa85AmxTMm/0wgLv+NFmYqnz13qtVV4cSJyq0T1qzCDBaDHNVD21pXsuW5hdPXg3AWb7onDEB16ovEo24lJ4GaJS0M/FhzbBxN+rfJ2rUdy2BBD3w7Y+9Gt7Kly078=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rP2YjWqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rP2YjWqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5933C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741084133;
	bh=IKarV1hgSMHCer6WoIUhDZ/V/qQ9CUPYlrUcX0NlRTs=;
	h=To:Subject:From:Date:From;
	b=rP2YjWqW3SEK5aHjVCvVqm/RR444JqpRb+fxBLVkBIBO4g/5JLiJjpxR2xmdcCc7X
	 f/XQsSV0J9zazdqQTZTDHTbEJHluIqBMQ8EguoMoEZclBUGDN1mgfsiDvy6ZxubPEH
	 NapnBoy4atDnieNL2oOotJZpHT3PLijo17jyOg0iE6jirqr7TV4GJL7UMnnZ1jde/W
	 EjZ4EvqVbMuHH/jgZabmkp7AZC/pZpghI+czVjiiM0lQTRS1PYI5jC4BKGh4iFbQ4a
	 40rCB1Pvzv5bdFd7rymmvr7l6ApHuBN8PjoEyRs8snZkjh5sAKMz+UllPevg3oJFn6
	 LMQu93sQPjH/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0954C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174108413365.9289.9323170391330140849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f8494d2755a1ceb75bddb96bd03d5d8e8d03d6edd9e6364a5c0048a3eccc00
Date: Tue, 04 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741084133
