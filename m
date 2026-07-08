Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CC532E12E
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783476514; cv=none; b=I5JpZVuKSL5ZcHpqQs/dXBa/ATkvww9aKWzNQEK2etmd1FTF6LQLhCqIkBQ1i73zYtIYYBF3Y/m7b4mQ/kzmAz3K9rOPF2whmBu84PHgUKWaMmrCyxdQ+5DHgPeoYdeamfCB/fJ5YEw9OuvXWQI8cvkg7Hlp4QdgTcFYCIP5uXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783476514; c=relaxed/simple;
	bh=zZH4OmO6KhcZ2mICNFZkmVzoHHN/RAbneY9dUqbWTJU=;
	h=To:Subject:From:Message-Id:Date; b=kHiQDcw0JSE2I3dMK9fU6xU9E/2xy/oqdkdRHTdFRv5oJNNGUi5ZBBo2jm4R0veP+4w2b1ClpjQr2hKCZkltnkGSQAO+SJDnA0JyfG3HXsrOqGEsy41v6ecUtglPiK+agmLIydRtBKMQ9DES8L4SdC78rCFB4gmv0wU5OTUrt7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jduFjmae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jduFjmae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F0BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783476513;
	bh=zZH4OmO6KhcZ2mICNFZkmVzoHHN/RAbneY9dUqbWTJU=;
	h=To:Subject:From:Date:From;
	b=jduFjmaeW1KLWXOS3yqyNcNoCLCibtgfzF4vhNp0e8wRgpnCeHCs62Dhez8n1Caay
	 h4BFFGQj9SFcyTTXYmRyAs5ViBXpZjlI5vH1aGD/oqBKEH9YbMwlp3D6Fae29YUcBm
	 KaO9UfEIw1A67R/fuJ4nPm4anhrbMlBe6WtgaoE/IDY4nnW62fnyoVgWPDzJxCjdIM
	 umf6MLOklDia7mXNMnODbQFuXkSkyvc/VTwMNe7fQ5u+PyUCmMLhzrMUPNlyfvPalK
	 3x45evQAq2jV5Lu/Hl1H7zSB5kAE+qyqdrmu/NRxobG+sMlwV8x1xGs0xrUzYsN06N
	 Nfhx3P4xhjI0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF035C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347651370.29245.3846399400045972456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58322729a92022d9017834145e6b0a71c8abbc6542544b46731bd0f12614a821
Date: Wed, 08 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783476513
