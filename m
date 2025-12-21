Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB5C2F9DBB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766343234; cv=none; b=lhEXt+SAVK1YXs8Hfr4+nhmZJiDJSrwHuOa7ZcXOIxsVI5TGCwnqantDRF7XSvSRP2k5D7xnowz1MtVymoZEs/96P+dGFlXkdJwucd+HLHhpj5gVu8wUy9239nIb5heWiCiBVjNARcpRc2Q8k3+S1aSGsZSrhIwdB+HFsrRVRRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766343234; c=relaxed/simple;
	bh=RwLjZQvhVzV95F9r7HiauiSDcesvTrN+9NeuM6phgOc=;
	h=To:Subject:From:Message-Id:Date; b=onsD4PPAfrqPPKI6316PPzANfE4kdjfvL5MYjf7hmlCEQ4kUohTECj4x20pCF+NNYODZ9cJeyoHIzsLStbE0QCKmurh9h8QlZUzSD39aR6sebiyX0kvh+i/kgZSN6Wkl1NRZK101AXyyLmum8H+ZXz4gSCxMbTQoFxlAThxQYUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMxZZeRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMxZZeRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAD5C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766343233;
	bh=RwLjZQvhVzV95F9r7HiauiSDcesvTrN+9NeuM6phgOc=;
	h=To:Subject:From:Date:From;
	b=WMxZZeRIVVF5prL0mUZKS5jJVPQqIWzAewMOPVTOPijU278Gz/rNHimnvbZg/b6By
	 3vCoXpuolp5/aGn3Zv8hUF0Ph1dP/RFWqt17bJyBWeBZuHzsIe1OoEgArkq+3S4R4u
	 G/lZEN7vScEdvFm89o+9B6skbGMXrHSRP3zLZDKytqA1yH/IujagpyS5RHVC3ao45D
	 zZP0W1oXNKfjOVUr+cAR+UUSqTxVVze0EY/Tg63TKSj+Jk7IqL0ftn/N7Y9cq14Fdd
	 cRmcZfxK9DqdvLxMKzxXLJXsqjTl0Ehtg8gH2tng8zzXse8CsNRLDsUOlpjDRG/Yao
	 Q4h5JcgZmyOLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F171E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634323357.22911.6366687794704654618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055b4b45182478d05918aa8ccdc7c5dcec61002dc2381622796c634d2eab5dcb
Date: Sun, 21 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766343233
