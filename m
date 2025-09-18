Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2D923B616
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758209994; cv=none; b=JPG/oUsS+S6H054gYkDT9tKi9uYRuCtdvp4p+Pk5feI+kzNu08hWOG1b3gl1fvQxr7U0JYX0CB57ZTinBj4MY1l+1uO0udg7FCiwO8QsrIzUdze34XwaDa2HRMZd41Nd8vFF2t/6ra7spPB4JFwnwP/3ZoU+aOapATYzQ0ztjdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758209994; c=relaxed/simple;
	bh=tPUvW2aCX0bYczPzHMtLuJMncbFdLjXuVE7vU5twXdg=;
	h=To:Subject:From:Message-Id:Date; b=ArMVVb1AyFT6pxCjDbmxP8gKSmdbPc4F7WiPad/on9DI50Fc6YiN2ghrp6NUkHGNWGY+VwqRZwkf6rYcwgy8hU5mZrxu0Ea1Ww9ROVWH/LGuYkEEMVZTQuAqn13KnoKpR7i/JmDu+zB6kmvmKGmp3UdhvHdghQQUjnvBsj8vlyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qW4CAHYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qW4CAHYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C77C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758209993;
	bh=tPUvW2aCX0bYczPzHMtLuJMncbFdLjXuVE7vU5twXdg=;
	h=To:Subject:From:Date:From;
	b=qW4CAHYt/Rx0crMfwsfSXyKp+eOzyLLqplOOT/zT85EIFJPOjtqdTwu2xIsSdKSXl
	 t123FS+K75LDxa6NMRTrteYMDdiJ5VXPaWmdn/4D9KorDfrBKaOd+OsdSvQRTHLIZG
	 k+8ooimhdsL7fANcyxb3vl5uSbeJ/yebDNoEeL6m9DLfWdr1hPl56IS/HHOPKGKXCT
	 quUcOt1G5r7bjJKwPPpNYxGcOERIbiDieBavH2XwiCM+bCZXjD3EMV9Fpq8/OKTXFX
	 yELshIc+jYA6zhnDWNm/gZg47Cy8hpdHbURE9Pi7qsYkXeGELeaCCt+8LCusZUJS61
	 nFSJYfJyVB3Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B90CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820999358.10229.5182787059397192555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85c0be988a7fde0fdf84a6b154ac3dfff5f77e392b6ea49b05b375aaea383a5
Date: Thu, 18 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758209993
