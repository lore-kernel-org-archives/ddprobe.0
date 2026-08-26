Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CFF41D129
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787747434; cv=none; b=g6if97Y4+7CoNWRkZ5OB7eB1HZQgM0/OTz74/cepd1kqS+JynLANKyAxRiUnJZ+LuQY2+/K87kR0JLTYlSXUwj15OLAtpacSB0cSnVqBoz9kLN7mc93z3k6JLvJzyCpJGBH4hoKQizh7aZDJKMtm4EetFisP2+KJfZTx/Oa+DLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787747434; c=relaxed/simple;
	bh=CFtHbmFvnJADsL993d8sUihxEafStfR7sdBtierkJuQ=;
	h=To:Subject:From:Message-Id:Date; b=EkY7EBhSTv37oSx54ph07iusFTN6PVW0F/2T+s9dG2E1wRtZccjOQM5J7JQKVWkndscxvS8IXwFBV9T9xTI4sxmn8DmXWDgcgCUUQVEKMsYK8BgPw+WPKuuHT0N035QdXo3jYCvRfznDggsI03PTDz4bZcveCtZKH0SO+SsUxZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1+rh9t6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1+rh9t6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0280C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787747433;
	bh=CFtHbmFvnJADsL993d8sUihxEafStfR7sdBtierkJuQ=;
	h=To:Subject:From:Date:From;
	b=s1+rh9t6znJtgz4+kQyxmT70ouHmgU/0ADEXkwkkBEdPJjhSJrxBohwhEkehvlZOX
	 DCMxwPhbmb/fEGXz2jrXzHCwqlva5jFuZ3mGKfuj3jnUyqiX0sib34coPBpe9by2bR
	 XJuZqHZEplbSNcVhofqZYN1oy+uzrIYYGS5TBmACgeJVndBV45ZlKHXuUlARdjzhL/
	 ZaRKrPegcsR37EIQDg176xAp8mj9wr/KYekIzN85jY5nbRuYoGwYCqchH7qLGIp+AY
	 QA0RxBjKP7vVmCwTp0ag5Gbk+nx+ZZRZC8sNu3Hkvzu+rG2q79A/dGCE1sFqQPNBjX
	 AQ978E57g+mJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981BC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774743368.18862.3492493049169685440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17312deb20d6e2d328f913f9dd53c6653c2bf1f6f60c24b746829ab2f85b3763
Date: Wed, 26 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787747433
