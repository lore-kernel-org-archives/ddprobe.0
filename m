Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C3E1DC9B0
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746052794; cv=none; b=j2CcU3hYYXzR9w2OUDGSXI92pLSSg4VKulZ96vRr+gS6igX1HO/UL0wZ67aPSKprFLkP61MymU8UWSUq93+Gm7fsIKrRf8mIRfgnbyUfFbwFvV32EhmmEFNS2c43LvOgVUaLHe2kfOaVMLYgV5tWsSCBQkkFliTCokGBoibDhDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746052794; c=relaxed/simple;
	bh=qvQQn5ikCOAeeqGwRlGGGt2YqB0tS9OznNlVgcSCtDk=;
	h=To:Subject:From:Message-Id:Date; b=VL7CgBjqJ2XxLyhkIX9Aqpmt5/9Jx7mU9PU3gn1AXRDKwHquWymQnmf11O9BLmeHse3AjMZgD/54ZqhkDqX6E8dCR6PuMPuQKwezU1dZ06CLRiI1E3fOeLgayZnlVkK9X/JtiyoR8TAvKC0yKvOKI1choRlzbiE8cHZ7ihyPMM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPS8iP3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPS8iP3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0434C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746052793;
	bh=qvQQn5ikCOAeeqGwRlGGGt2YqB0tS9OznNlVgcSCtDk=;
	h=To:Subject:From:Date:From;
	b=VPS8iP3VGY2KP+zfNUlvaj/jZwMZHL71Hztf+yslcAYJJkuq438m+Kgf3HgoGry+b
	 vgU0P1sBQFwIUWopbP4Bjzbw1jk9XVj6i48y92e4xBCQ5IdE8r7s1jh9WJ7N0si9/2
	 tsNRyUvC81FHHk5h8coFaQE8mh4ITvgbaV5ri2EutD1DzGpv8aY0nzCtM2ikYLy4W6
	 EQMmOF2dfuLUve4YK+X+SPkkl9jPmDy8a+HXMjNqFnaFLB4EBfZubpWKWnjgk//TqU
	 UVyb71lZw5t/9tWFojhz1QMzjMVW57tZkhZh/OS4G+9hJeXfGmqN2U6is4X0oeUw/R
	 LXxmQ1n7NA7Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4CC369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605279357.3866.7022448379192311874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 913afa52aa80bf0ccec22695011711da107dc9aea3686e146437441880668a65
Date: Wed, 30 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746052793
