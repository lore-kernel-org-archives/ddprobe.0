Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E17502BE
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717798643; cv=none; b=EmCWW0L0BMn/yVpLoZQnpj9x9oCmr5j4S/MVqbWqPqnD3sYb1WJ3j1C3sUQ1RUuCg9smYomMYs5olo6rsM3TNNbtO06+gTnDFZm7e3ZlRQxZTFxcY8nrGihsme9DaX/9s7zCtRfmhYch972JPgqy2aOXK/3bP6zrdxxqJrtDKmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717798643; c=relaxed/simple;
	bh=V38AYre8KN8YM5z1U/BvMGm8MOOoM8dvSLp6HXk1F5M=;
	h=To:Subject:From:Message-Id:Date; b=N5zzJ2t0QBcgL7piai83y/bksewjVrBVYWMyd2qbrWJzg4vFTsvYWbGtbzBP6oZZLj4saLWJQMmnwvLW0SBW217gbuo8ayiQ4F2jyACIEbupHvT5c+sarztOdpdAzWJXhLI1Lwno2DLq6sd4CpFF2EIYJHZATBdwkuVh7X29QvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awFQe+iF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awFQe+iF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86D0C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717798642;
	bh=V38AYre8KN8YM5z1U/BvMGm8MOOoM8dvSLp6HXk1F5M=;
	h=To:Subject:From:Date:From;
	b=awFQe+iFg//qAKu5ijY3ZUWQSAQ7bAb7rAoobLeVzG5v/RZTop49goGfNJaw+etv8
	 aNux/EM/QvwHxNKqAPBCmpmJDNVeQ6UJrH+yQeSdx2M06HVn+Znr1G8cMUXopGCoxl
	 N/zVVIPd8AJHZCw8vuDDRWWgY4KUknEtl0op6AXY6mRAObOFKeTWaVJ7gTLKzBu0mw
	 S2O6Bir+7iLaWlssf2u34CmBJD+UefBYpfbcUX+bxbaCm0hV7bl37eH9AFD/ZEZ7TD
	 XvDqahkQN/gyzwsBpoKxgzdufi3AokHDSgqEsbbrHOxfByC9iNFsbqskvwBksXgbEW
	 cHrxW+pwOsfvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA3AC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779864278.25923.15194263223657521146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989265452f17f4893aa3465a43e197403ed9812a241090fc61b52cea55d72a1d
Date: Fri, 07 Jun 2024 22:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717798642
