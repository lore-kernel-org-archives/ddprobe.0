Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A14E242936
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741179534; cv=none; b=S59y64BtLmcCQ+IZ0LALPyFnTLmtQbA9ufSo1JAyP8DgKsi/VR8mphgHuNoK2FDlIpgKkvwj+SyQIECD/41wHxiVhlTU663jEy4GQEGVoixfXUHpqpW3tJe/3dD7PhqWcPlztiXyM4Fo9EjnVfRtmH816+kRCzrf13E2ClVg+IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741179534; c=relaxed/simple;
	bh=kcT7Jfsv6eZQYFapiWA7F/wmZlwqzDJ/j3OLsb5XEt4=;
	h=To:Subject:From:Message-Id:Date; b=aze+U8nbCKsqzkeLP8AR9Z7WbHh3XxhMiT/LS1yVDlHitPC4Ln5S1o4xLH/C1XeCk5ufg9H7qUjXy4abIgQ5ftnY72HPV41eECQRkuL88OkOigSpk9mOEjIeFQyz4V25Lxue+gyihe+29grX9rBlXPhtRgh+PF9gzfWnjewJ/Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjzlELo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjzlELo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741179533;
	bh=kcT7Jfsv6eZQYFapiWA7F/wmZlwqzDJ/j3OLsb5XEt4=;
	h=To:Subject:From:Date:From;
	b=TjzlELo/7XcV0FOl8Q5cOQ/Ybu6SGi192KJ/p8NLRLA8D+K9KoVa/VCgvLb2gNigs
	 Y4ATlQvOPJHHoyzBOHgdnlPx6cFpGCAkJeOWKtFW5gEielNeFAfc2vFxnJBE927MNa
	 c+F9dL6aqka8Vs7cXHN+i2jqzUO+JDsFZvogGMdu1U4v9YyhchS4LqGQVTvklI3z8C
	 eLOJ2EjydYTPNRdWoclImyxiahIhxPNDbPMQjLpM29niA+GiLBhW5OiQ7cP7IXQj2d
	 9f3ErpLI0hyzQQyKyzT0Xk0BtA3HjOJv4lpLDsuWEwANpjo/YHuOBjdbWYAX+5x1Ht
	 dWZggI81jrQBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90241C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117953358.28573.1345390217222344529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3d0046394f59d2f46dade825342321b7e2bfe970ff9bc99a209e285c4282bc
Date: Wed, 05 Mar 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741179533
