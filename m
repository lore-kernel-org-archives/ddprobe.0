Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0E21BBBFE
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737582354; cv=none; b=Nfx+Hpybopo05jVEJl5CCtQdEyL4GHw1Qm+JzrnCgvMNJb5fi2qkjwu4B08yNiA1aWwv+ftZkL4fFKaDPWqTE+O7jzrojUzxzILdzz0ZdhCUnQ+Q86Uf9Q+baiSlre7vECa66wHRxy0c3MF89WR933qGibeKBrKO/m5vBgm5TV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737582354; c=relaxed/simple;
	bh=o5UjpYak8jO8ecHiDRXi0dnl6OY6XxdDyXYPa2JqTLM=;
	h=To:Subject:From:Message-Id:Date; b=oOYX85v1idMX8maAEt4rHyRWuQJpTdnlN8q5jZg/1FXKE77kNs4S1EOtb2BT9A5clQL5LRxfV/T/Mi+KI9vPnidn488fX05yBE/KrEPu549654qZP0kSdoyViTZvKXahDyMaH7Rk7T7Up3qgNh+uE/Sl+hSmvW3zpyi6zrqg4X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2js4m2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2js4m2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4147C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737582353;
	bh=o5UjpYak8jO8ecHiDRXi0dnl6OY6XxdDyXYPa2JqTLM=;
	h=To:Subject:From:Date:From;
	b=N2js4m2yoiQlew/hU7eV2CWT4jyxQBaAZ/PRorRotXF2FXnYS9NGo0++UySChZx5L
	 ulsnWDKxaEiWx4aTIjgldhXiOxU1A9rqjT4fdWuQr2YbrQMUeiKs24qwv6ABNcFFav
	 srzG6eXTXlZ2cERQTi5dW74YKgZ0UCpdz5Jdaax6Sd3tUR0bN3JZ0tTxYHzvcD9RJL
	 iybhOgmuFRsN9InqyLCpj4jrt9h0Qph/HMt9u8vFTlslWxoPET1x+AwwUlUkTrEwXj
	 Hg/gsZjmAWjS8K9e4CxU3bpsuHZs2ggsYg8J+lzhGNoDiYohe2uBBn1/VZUuSYVnpW
	 ciK4waYb08jdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93507C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173758235359.14009.6164290243655440086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8a8b975a94c6a5ff62d5a0654fdcb1e0cdb7c3ec09347a1670a7b33bebe8e1
Date: Wed, 22 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737582353
