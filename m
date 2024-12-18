Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F9B154BF5
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734554154; cv=none; b=fu3jIi/7lkUVBujKR/3SHsmQApby4D/r2oT+erbUPSUajxr21eYAR8kfOPDLFYwOwVEtC7aISa50C1oj5/Pq1ygn20DR/zE6qO/vh5WoCYJCci7GroWgyRAzcoxtCVlL1lG7nRNNZ4MxGsN5Hg0ZPuzp4gVTYPhT4TV3i6fShBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734554154; c=relaxed/simple;
	bh=1KB71ff+r2s8/gquLh2Zm1paBbp1To87AV8SoqMk0gE=;
	h=To:Subject:From:Message-Id:Date; b=LCH0dW+yNteK9etQWVe43I1X14sh+DgsRxPoYZ5XIUTs2NN/frphJejjaxaE+zN0ZHx7giT1OFBZUwrTgEoLGsFDMxFUFFN7IJ7JQ2YWrfqb8CRPMEiOlAtH6qzTbn6Mnw59scPmndZESVKEPEy9ilj3nRzEc0OPkRzOxijTOU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQI1GsHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQI1GsHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F43C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734554153;
	bh=1KB71ff+r2s8/gquLh2Zm1paBbp1To87AV8SoqMk0gE=;
	h=To:Subject:From:Date:From;
	b=QQI1GsHRKMycJzI4ovae8HJgL+oXA4WsS0IM6HGP14hE6msF9uBPveF4icrZXbV/d
	 3bAJUCDzvYfSeQqdHr9TQMso/596viY/FSKZNfUiq1kxD3B9LdIZLaEkllpUDKmQsd
	 m80Ut1zzKuk88274z++r6ILsW3cl7C0DN7E/TdFwwqMWAV4Pz+4fNXxoRfZe/2voAE
	 YUEMwCUNBlenyBl4x1UhnOqEVaRrt027TxXbXJqTG02bKQfTjzjq0ZREte1owKkw8J
	 VcLRDKEMLRkgIn09whMdhzNTfeG8FzkyJI70vQIENbOVpz6mhBa4nM3wbtcIFuH1Dj
	 GxOy23AS6qvNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93962E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173455415359.8857.12745479750298663362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05fab3355b6c0a28c32b498dc79eb08610fd1e844a75b18a46a175a2d70b644c
Date: Wed, 18 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734554153
