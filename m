Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E77134A3BF
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787229034; cv=none; b=ZEUK7OI1Deldl5l7zRCXjnzMxQCrvLDOl9nqgs9Liml0tokPvcwx0BLtdqS9RfHD33xWSGB7Xe1nmISuqomlNawPYTyWNB8p3XiqQCtiPQPcZfWW3OI4NWV3ZicoRc2+uGSGGnSuXmaR9AaDzyiiYulffcIM2AWjo4MQRBsuqwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787229034; c=relaxed/simple;
	bh=U3qQaq4GytzrFXkNv6PpMb1RD6mBLHptEJtq277Ggds=;
	h=To:Subject:From:Message-Id:Date; b=LiMfeAcpK+53VHqZsDmIDF5BXuU4mfqgkwslHt9IuxTtUo0FXmK4pjMi1GpE1CpFvbTCxx16YY+CIR1/9ZRACh6wxy1h/43Q8HU6mjcEAR678M9JqHte+281JGLtvXzoYQrf5/1/pCG35byrLfaMC7M2Lp+cG+W1mnm/7CoAylw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkkAv9y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkkAv9y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D406BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787229033;
	bh=U3qQaq4GytzrFXkNv6PpMb1RD6mBLHptEJtq277Ggds=;
	h=To:Subject:From:Date:From;
	b=pkkAv9y5693JtSov+87ZiwkKmyMEWnmott3J17bp0tw+0/pUYtcfK0KkoLlqR70Fb
	 FWGnoYYbgmfvbONjGdiOxnALqQTP9wA+hLTrzf6NmjsTHusSzbuULp18YQe5dZz9bc
	 eZJJf//8+tNG/8YwUPjBBB/2tblGmo/BORRW5f1kSc7TNgLHo3T/VwgKP2kJzBF42J
	 iqSxIuoyKjHNezM4tYWuLE8lkIFv4v06ZCIvL/QjvTFdGQgcn7hw9+DBIQDI2GVL3e
	 S81Ir6u/ydf09sw3P1PGiEZ2Tvy/868NdBBhNXJdktOJiAystBmmi8I9+SOJN1pGkD
	 sI1PnIiREXKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8FC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722903369.20663.15709010689777168305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f1c95f6181c7d62b1795d0d7c87d5a0680ff29db4801e333a76fc6487cc0b9
Date: Thu, 20 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787229033
