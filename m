Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFCB22756A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750332594; cv=none; b=PtTpagINSq6TJFvjeJC1+DMN//+jrOhRNeOkyBRcWTjlxLGmKDCXSyY85Vc+saqv5fXGvBNGCcWwlZjL1uvNGqyutPYhSr6XA1ByvtF+6nk77zAiQnHk6fRHcDNygGIHfKpkdQ/Mkoks7AVm0zMFRkkdigOInRpqxfP4Tc1yNUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750332594; c=relaxed/simple;
	bh=aOvNFfawkFE90ALPYsnIrDpfH9nc5/p+O4Y8XeXCqTc=;
	h=To:Subject:From:Message-Id:Date; b=HOTi7gOzrdleDmuzI2Mr/Mdl1z7McWNx3SYNOZsci/bJ4aWtgQeeIn5MaTWGYTq8y+iQX7g5YOfYd7y1C4v86wHpxvk2FW2gkibDeVtYkHKVoaubkg+KXdQFOUBtVGTME1BzUeKURKMlTm8cOjJzgkP+REUZMphogbNXBoU0m5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5pGco5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5pGco5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27F9C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750332593;
	bh=aOvNFfawkFE90ALPYsnIrDpfH9nc5/p+O4Y8XeXCqTc=;
	h=To:Subject:From:Date:From;
	b=l5pGco5AcBSrpQzZub+BBFjNh2mf8NZ4wnWqfVHK6nP14XQckHlG7omA8aIhHZQAK
	 jwoM1RTeqbAwIE5lEJClxnvzu1Ahi426HG8OnT3LpCZX8fohIZGNkYqMbCP3D73RA6
	 2bzSPTuv++g7xAjJguey7kVYlM3qtZyYB510NS/12DpVHslBncCn0tuwMjij41egsh
	 c837TKt4wFwuWiYoeiFyqs8mufuVR3vOFO5VvCzPhvGiI6xGQwcLYLz4VYgU6nbTJT
	 dNnUk0n9VMEkiUyKJWnqh1yDRkozptVc/w+OVt9QLhx2ZbzZv1tfbb5/0MMEjpQUHr
	 mHvpCu1WehVgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3AC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033259358.15049.10647675977286355547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c68548a79158fcc024b947da7690ee31d403c2724387c6b27546b514c20459
Date: Thu, 19 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750332593
