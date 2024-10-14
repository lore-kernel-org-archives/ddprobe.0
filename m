Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD8736B
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728888954; cv=none; b=BkQFPreYqKWWd++v7eJwZRTuJ/mXVeW9MdMSXsLnKTB0yu3erWvNGK9V66wDjao4bqWg9LmCpHH2DDN1f/avrGIsK7J6CDROss/VMgAEXqJrUeo7xvjFkTCwQOgcxYRUlBI4PsS4ouv7SKKmlgluJBKuudGSJSLEQkVwPQI/wuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728888954; c=relaxed/simple;
	bh=CKR1c4dp7J5gbwO08UHunxo9P2KYhtc3Hlq9hTFNFkg=;
	h=To:Subject:From:Message-Id:Date; b=epezNZAhV7YNBUlYHoA1lRHZUzKw0poZQhpiqa7tuKy9FaISGcW2awlcbFT6MGf2wnxg8iR7xRYhLAmpzcqq73RMNO9bbLQsqqR2XlHfa0doMey5IgXZe1cifrWaVUXmtkYKVA7Wvs4FM/l6BYgW5EwaCuNonST02B4xvzDiYno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG3+MeqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG3+MeqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C4BC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728888953;
	bh=CKR1c4dp7J5gbwO08UHunxo9P2KYhtc3Hlq9hTFNFkg=;
	h=To:Subject:From:Date:From;
	b=sG3+MeqJ3XgsAzrgPWkONYXrlapfxfJIi7XvT/T6Pqln3sohIwGiPnHO89jgM0lD/
	 eXgospVdnhaDB2P74UJUwtivlzbWV1qFayXC18epvLapMJAQ7qoJ+qIaNUVk47J9q3
	 UHFWM7WcxCeP+X/kw2C2bGR2jDduoZVzDBagroc9xmH1zhzZ17sD7x1AakwgDeO5/l
	 vfnP4FMHA3VmHWz8KzgTiBLw0yFea1SPcj4raCrLKiisI3JiQQQbKCImmXlKYh+GNS
	 hqHNUofW+rIwyGvgH4yv0/iSaUAEPV99U32B1LsJwIL9zQJopIA1bdCjB4fIPsh9sb
	 O243xJshw/xQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F58CF2590
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172888895366.18919.4372230961640805635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe84cf238e151e9d38d628d639263d8710361e551b23e7d1a3750928a88a0ba
Date: Mon, 14 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728888953
