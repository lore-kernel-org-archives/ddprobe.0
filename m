Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1FB2E229E
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758025793; cv=none; b=Dnc1E0FT1JOlAkPF98aysRJ4TIHUMfJUoFZJw8NCBfm4CoarqCPiiXcZnoJ2dVe0JZyXmd8JucJeSdgnhGBh33oeYclQL/4wZ0206kFeT9Ga8dZtQjjKMFFrKZMYwLTukD7rUhbutosAzFh3PHdN/qwFd0cQA89QI/XdETtY0ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758025793; c=relaxed/simple;
	bh=UTbqtxv6LRNPPQDU0tFZtZHk7khXovyBhE5Xjc4vUyg=;
	h=To:Subject:From:Message-Id:Date; b=f8cR3GrRYTDs9QwqAKiCupjupQqDUptI+sCVfvxDwIW6uNZFXSQqQa8iu8pnhx4kLW9QaAXixl3k66Qwm5J/FSJq6W6YvPlpDO9PhQG37fNGamDoMz0Gc3rYlm2BUMgA41mhDAA2E+nXdGx93y2QXmg3hVBJyuaI0W8eaLGAeJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjyLSaP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjyLSaP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBAAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758025793;
	bh=UTbqtxv6LRNPPQDU0tFZtZHk7khXovyBhE5Xjc4vUyg=;
	h=To:Subject:From:Date:From;
	b=YjyLSaP2TL10zL1EVOXqiESKjTelxMMTa/2PbBIfyXOP3Q2a+JvJbEbQvJVOEvxCZ
	 mdvrUklHNc5D8iuJToAbF5oIe37O896vHmodJLUmsUJ97sSlpqNX/PFhY3nqxGCelI
	 9I9BrDMQe5huQvdc/Bx9AYzNgTbc0Zttkt7u6s4eEg676XKrLNhQyC6kjoIQVpyWMu
	 CCsdQ/D6iglkE+yZoS5HoUay+raCRZXKzIwOzo0ArgpHXC86zBKudlKcoQdtFoWWGh
	 0I9AGOgJaVz0os3tC/eyk1qNQrmFEJbmX4AWhYWRHnqTuZBm3/lOGN1gNE3vmS3Pu2
	 uq2u/SzILp7mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAECAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802579357.23201.17087436527459751948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccecf689582c80c3c9ce2e798ac4ae14e36247224a3310789f08ef32d9f9835
Date: Tue, 16 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758025793
