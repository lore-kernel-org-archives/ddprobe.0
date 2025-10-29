Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015D924C076
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761755994; cv=none; b=YPZjZDwn4ZzqPP31O1JP05clWDWt/W3/Zyw/ADacIV4naX5IFtcrvvu6ETa5OOGHgXrRjJwPYr2qONtbmF6LdyD9U/pgo7NzD6aWT4NAW148aTgGiLRA+SytgbydFbZLADS8/6WZXjXpUTcrIru0/vTkg22/jLLXDM8b3rrpTY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761755994; c=relaxed/simple;
	bh=fRC6XKJ+KZT+UNQNLfHwYTfoaAZGog7VddLD2i2zftM=;
	h=To:Subject:From:Message-Id:Date; b=rtmgPfJmY7qB29JHpl0XqFbul1/wtrozNm3/6pHcU18WkxSGexavzaM12QaGg8SzAq4GOT9wR1lB/JnU9cOVWaF5NhMnP6yogjVui2u2TRy/GEyXeEJwKW+rM2+kjWa0ssb3bjQjfTYhQvQ421Bi1wrmx5MbJTIykfD3WpqD25A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1nzwOad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1nzwOad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDE4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761755993;
	bh=fRC6XKJ+KZT+UNQNLfHwYTfoaAZGog7VddLD2i2zftM=;
	h=To:Subject:From:Date:From;
	b=l1nzwOadpqJAaA1MwdzN8vPDAr5ex9ZqXgYHGx7h7+eDtddO/CaP+wHYwgV1LN8ek
	 kTykmSG8TvqogHxWAbj3V4zizf6CT8oaXjC2N5ZnPiGyVaT5cvzpvF/IccCrH8/FPk
	 yYmQSIek3nsBv1SsvRwXIAKlWNfNjDEz/CUuJlv5RX3xOPvfiTyyJCML9sAgjiFkx5
	 4jiyl3gc+qHPbUmANRmZ4aN5s/wVVrIY4YUb7supDnv4JVOZxq1aFDyojoEskMSb/9
	 Yi3iJPCnT5t/mX4+hhqdzXSjMafN1fxPTCPNeAKejGvddLRgp7Vw0YSmUMxsiUsQua
	 PM23kjWqTuCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD47CCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175599358.7618.17856976004287608496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2991c4bb5556e3b3ceb1a6da859a99419d60120830ca108f7faca5c33b5d93a9
Date: Wed, 29 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761755993
