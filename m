Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EE8334C1F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783057114; cv=none; b=ktqBXZB8MddaEfHjyleVVPZzjWtsq6BuAITHUUQ+ZTbxYNX1r8QxFnJ746+NrM77EZyhj22DO9FzpjfuMjhZuq6Im5Jv2V+yGxk/M636Ns/vRlKdpSsGtvX5twmllHq7jt7J8bYe+UTLPY0+I6OX5YRKBhXrlOMxCpwec1tw1VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783057114; c=relaxed/simple;
	bh=BR8wUiDf/fcA2EABoQ9vb1Di7o/159kLkZ0zO7da30A=;
	h=To:Subject:From:Message-Id:Date; b=ZrpMkYiaKqlsd40WQzNfl9b+ZIbdtqwvb+hbkoY/7HgrsSI6RrUOsYz9eX4dvZg8gQHfrXerGD86FEX8knBQixXdWdpJfV5WF5JBSVtm+DONdCvpNsBmDf4z7/Mqvt22S9dsjG/BoyWGHAlmdDakZppwu+OxKxdQZM23BSj4acE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwIuzQr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwIuzQr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC383C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783057113;
	bh=BR8wUiDf/fcA2EABoQ9vb1Di7o/159kLkZ0zO7da30A=;
	h=To:Subject:From:Date:From;
	b=uwIuzQr9wvEc2Nfz5O2F0tkHMGIwdr14NDNG7HkeaGP7RpBJZNLrQ3Lkaouvkaoin
	 zwpWnDkq7lFp/yOZQDXsblzKL6EAQGoJyLlJ6bdfJgpEsU//aNM4/TBFyVS+hfwn/1
	 90IwDycMbqlajhV5EY9QdVFCa4Z1ma2mpgeaKYT/6Z23rQM2UDTtKHY3rbJOYs1SVB
	 uD9M35S8KRQL9gfkuSBoig5WLAzAWS6PzBcoSgt/6bVCiihnHJRj86gnU2/50Si44x
	 kwNHvU3bop8GC3VtUuSHZXD8mLZCyopf0lkdvk3+AF90MOUNIE682M94xhGr4/k/Cs
	 rSC2T8qp0zVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64CC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305711368.23561.11736920810031443594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e88304e8676080f9e61efb71cff28347aa47db88ea5083e63a9d8824a1eb449
Date: Fri, 03 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783057113
