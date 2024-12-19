Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D51DA31
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734573954; cv=none; b=Y40Lm2QXFxSbpz7rs0EVXlK5VwFn37vM1cBxSUfZO9QeiS0a2CgaDLVyIRlRnceEPvVK+0RL4zQ8brXOKMWl9FI0l5FIHiNPuMEAb2o5amI5g72RYzk0e6yu4Gt/HUx4ydU2j3/9cBeOdrIMDpMjmNTCuH6jRS3XjzMhuiKMsxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734573954; c=relaxed/simple;
	bh=mRAv++B6GXxXglKS2+TLfMSgaYycLVjkHtytf++9Si8=;
	h=To:Subject:From:Message-Id:Date; b=J5EsUesBf5tphqN+YomQszHcYC6EnbHmnbQOOTc2tvFmvMiYsy0W1QedffBFO/zBZUWUBGndIvNV5DNkJe6dNbs8XU6PGphfOyr6PN/BpprtaFrFT2Z7bhmBcq7Em1e1PAunLnSVfKuy8qaAMzFbd7dzMCCkiHFskPLMCEvjYzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0fnwI8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0fnwI8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5FCC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734573953;
	bh=mRAv++B6GXxXglKS2+TLfMSgaYycLVjkHtytf++9Si8=;
	h=To:Subject:From:Date:From;
	b=C0fnwI8W1WKaJvbDIQ9X5EHL1QU1fILvYi5DzPiDXrY/q1WGO1pa2/fuxfdZeNsur
	 6/MYRn+1gFVwS6XDNi3jFR0XkhpNvQNk4+c+fG0/K0sHQxG6Jxu3WjgdUe26S1lN5t
	 IWJXEkaSZTaIN2MkcoFivhXJL3KrxfOyDX7g57GfSp+KRLKXSD4DiM2UdpXlZ31+Ck
	 DL+6v44580gOdkofGQHoJXORSdk7Vi1bN4Ok4zFCRitms33M7ZaegmCAyOW9fVK73b
	 WyPVxztPfPy0e3f6u8CmhsrP3aj8gwhkDYq4JgzFr3EAvYgwDGHXp1jhx1A+9EdWMF
	 GeQ8AKt95n+vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94027E77188
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173457395359.2680.15379213534167013042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca8010c0a4c3e7204536973d86ad6a9ec6dfd3e311f3edd9b58a609a7727055
Date: Thu, 19 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734573953
