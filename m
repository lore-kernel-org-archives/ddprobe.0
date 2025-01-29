Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F8B1A8F97
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738192554; cv=none; b=D/pMxgZY+DK2r0kqhFQU1OGP/vx/3z95zS2dvKewPHII5cSHxtcKuRBaLTN/zi+ecs+A1AIANUfHUUjxR4jGiY7uLWAsMDPWSaS9BDkME7SrIqJVJlGmGR+nkaq6O1ZO8Duwy16nJUBC94CzsO2rlu4coEI2VA74V4Ho/pBwKT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738192554; c=relaxed/simple;
	bh=Q7RJcb6Nc3Kkwwh73qKToIZVqGOHrMkYlTij7JF/mdY=;
	h=To:Subject:From:Message-Id:Date; b=tmip7d9QUtOb8mxy0itgi4/uMnJGl6QTNChFiRbdhrXZGtLvn7VjrYQ7NjKLShZjB42X0ZtSVYXkhuiiczf4QW7TK5YdmsjDDgvgGdOFCQvLZ/IaLA4N0aEgx3QZ2ygsBvTtLEeG8EBM5dQzh3ncgm1U55kyWy67lN3lejq67rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAQL9aOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAQL9aOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A0BC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738192553;
	bh=Q7RJcb6Nc3Kkwwh73qKToIZVqGOHrMkYlTij7JF/mdY=;
	h=To:Subject:From:Date:From;
	b=IAQL9aOpb2OzGez2SKHEVAfjhEK+0YiNUuJn+Lgt68TRUYxYJcZXV/ICXKW+6D3XC
	 CfHB2Od3At8AF0ANX+q/MdMoFfNjzifb2a+n3MKWPaFinXJeVclNJV9FzTLBnCOjCB
	 6Vyox2IJTp7isDBhVRCY65H7E4F8tKY3mSoaGvMUR9IBwqwrS32L4rQMoNHsRjdMlD
	 rYnuvYNYtZBMTZF0o1RYh725BlOc9sTpmwOOwrk5So/eFK8OM6dgseUxkBNxzSSpsN
	 AuGDQ8bR2WS8B9KtPaMbUpWGDwSHXxSf/LHVoscRlkOifmDf7sr72AQ9K/kV9O9Rj3
	 f3KE10CBBUGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F3FC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173819255364.14279.16101996254019830127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c077a8c68eedcfec5a37f1c0b7c0830e70429615b9534c6b84e4ddc07f5928
Date: Wed, 29 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738192553
