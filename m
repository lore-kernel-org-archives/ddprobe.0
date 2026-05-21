Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D901A9B58
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779402154; cv=none; b=rULN5fJ8Kx6b2GmXgYK/jUIWTiGOw67DdxcsRJc6ElHXBQDcUq4qwKF2hHoVAjNWzvBgcxS0SrHkeYXVmjMMpJS6TaHFf5H195K/9RT/pljlNJHXYEqrhcDNsKz5K3deDKv2ShIEG2OZQM+608n7CpbH6sSQulnNstu1CQmOpFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779402154; c=relaxed/simple;
	bh=wCwEuroooDBhYo7wCFCqM50V1PSh39SLTReL0T7IcBQ=;
	h=To:Subject:From:Message-Id:Date; b=szQ7qys0Njr2Uh+urSbSs9KB+wd/wq0/+2EQJaZw0q7jWQqTPe3Dcd20YWnb2QfKyxv9mr72zR2daz8bic2qdo0qSXnBfESavybDte7yT1tnYTifiR38hZPVb28TdvhgFdQ4xcXQdm3lNVM3WUX/zQ7f88Do2wi0l7jjNBOVrDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7dhW1SA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7dhW1SA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8ED0C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779402153;
	bh=wCwEuroooDBhYo7wCFCqM50V1PSh39SLTReL0T7IcBQ=;
	h=To:Subject:From:Date:From;
	b=g7dhW1SAb8/jET7/HNrVCkpt+lBbpoUzsZ0llqWOaAU8QtX6t2ehvum+Ro3sLsPpo
	 XBpQXMl9ArjftJRJBSCicsWwui9GfRoPzIA3t3YHI0eg9b5nF9Kz71dyRYjY3mrqlv
	 4/CubF6Frcf/wB0x4uHqXOAO6qlRT3oAmNVkmQtw7yfo9+dePwWPci2MxdlTGZuKoQ
	 NNZagl68M+snLJlXgZgwDzEjIjZlupZsBSG9J18BsiMqFrymPE0Ehwk9RLJ/1DSHX8
	 dMNXuFg9DBD3Ph/3v6YCrMQbAEJ04NB/hULYL4Voa4IYGrJgSwwsZSb+Vw8RKSbtZE
	 gH1QS91mpPHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE965CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940215368.20284.14987865308125826236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54ec4a30ac3983e162dfc38a4b3ba473fd2a8917ff2f309ee53dc6d12b7b5af
Date: Thu, 21 May 2026 22:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779402153
