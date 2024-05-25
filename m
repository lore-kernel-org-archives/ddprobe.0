Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B7F3032A
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716673463; cv=none; b=pJwZw2mmRHVN3ZD7oslTUoYHZH5in7xBqXOX5a5TenAbfIUvpWD/1b94RJNECBw0R/yxY6z1u6buzojRVHuUyz0GhgtoC5IU9pMRTbUq5lSCusruBxGYkAefu3Hdx41jsFcrI9AFlpKWhevjoHIgFqShh/XCQaRmqEBj/zubcrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716673463; c=relaxed/simple;
	bh=uQUIV9adPhaZ10sqtGQeDqaJuNnn94R/CjHExd5ff+U=;
	h=To:Subject:From:Message-Id:Date; b=l59qagooXC5dqOMawsiLffDkEQ/u0PrQfg1JZ7+WrU/DJYZ0SrMDtgN8j909PZDD/9FEXtojczgdfAmh1m3fbY0EnwH6/QWrtd7p9Q5vo33PEASJeBE2oV205kLnLKlXHlPzl0+3HHktKmeWwn+yndi5Vod7/M6y+CB0zVhkW8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3nJSSy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3nJSSy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A3AC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716673462;
	bh=uQUIV9adPhaZ10sqtGQeDqaJuNnn94R/CjHExd5ff+U=;
	h=To:Subject:From:Date:From;
	b=B3nJSSy7YYDcW1bCe0qD1TD6NaBfVEo9lJ69OeobD3jCoKHoF6X2QNP6ZdN77b77G
	 ueQ60yFD8lX/SKkF0KMfodevXve/FvgyV8wxygrGin4UIJsqwhjLnOqxwxGNP+WHAV
	 zWtBzwNUW2ztFNzOwhJbD/iyFJdnL3q1vj0WUko7WNSfV0nyzcDmkpd0P//m0kftkD
	 ZRVMa138qj/iKOOWB+oZbbFQMY9U3KGmcUXa+tDU7AhwJQf8fqi7PKUOp+h/5xUA89
	 uIg9X5oEo8WXCt95uWLtic07UHNoz08lJDKEVY+Gj75VbHaiH7vyXRYWcKyc80sdjq
	 GFzODDXijhptw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AC7C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667346276.14929.14096680923179264863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e107252973d2cf0b0b7b486a883118eb259a1153684b7768a80502348f81b768
Date: Sat, 25 May 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716673462
