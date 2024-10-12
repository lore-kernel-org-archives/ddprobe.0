Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAC5DDC1
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728699954; cv=none; b=ELxbqxdHtfNA+2ILWqoi2oUitOYKiGrgJYD675+CDeWeoQftpoEZo1CAkGQ1sL6M+BXKB5IWNfaf1PbpoCL1PtwHy3Uw5z3u+YEBgkzwEHlmVVg9OUqMtF74Ru4yKuNADnAY9RszfVV2saAkJmf1igYE989dp6ga/H5Vmrd+fgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728699954; c=relaxed/simple;
	bh=vNgBtiR3TbNio3iDeS3hnIiQoifLdOtqmLcbTLjBv80=;
	h=To:Subject:From:Message-Id:Date; b=dBkfLqD9/pUpPJUCzaDnHwCZDI+IY3PYrrVUsB9kwSKgROVSvZb6jmLl3RPsgE7kiTHmrmpQJiooeyz+dQGSzys+qw1Q/HEvLylz8esGGHWVGoIoa54GBt2VEBTJfd5mKZXFYsSlk0dXjSVIdYmfiwX0tXy56MIkpwHRYLkv2J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ku5QMJ6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ku5QMJ6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F66C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728699953;
	bh=vNgBtiR3TbNio3iDeS3hnIiQoifLdOtqmLcbTLjBv80=;
	h=To:Subject:From:Date:From;
	b=Ku5QMJ6aHzOd52KfvKMZHHbtliJb4YPpKKfdKYa9wwJ9mLwB9KXwQRQ80hKWmkht8
	 tfpsQg0Q44M58RWiOGc5L0nS81G3WKGCqRRdOtiQUCJwedubXzVugO8zgSQgFM+OvN
	 c3nDXzL8679rUIodYzgnwR9AkWBs8oSGkWAZySnwesNzNwZi+EScrtnadFGBa3CTCB
	 nGv0tt3C3Y9J/KTXjq6dqd1qgXlx79Qx6IEbwEPs1iz48k1Y6duYrYM0sxS6Jxy0L9
	 8cmuJY1feMY4lpMGLqFXO3X6gOtQ7RkdNeGwj/H7EntI7zWLRIoHp7M7G+YeVFy+Ol
	 erVWWQoylPDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9570BD1A42C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869995357.6486.4849857089714877001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebe2859e986925f683d3658b8b32820c63ee143f5f3448d3c855535eeff6ab3
Date: Sat, 12 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728699953
