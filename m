Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37992E2DE0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754998194; cv=none; b=GQYgdBklApB5VJdWx9F/ioGWaWEtTuaj1vKPxB+xLCTR9ruwGEn4+rhFJYUCJAZu6lIGcm1Sky3whufVfoHX17k53YTXiMWeoyOvCz/b5MZJAz1uWhu8fUyxYSN9p0DKlr0D5jp1DLncD2L676v/I0mz46vk53TfCRGDgMOmj9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754998194; c=relaxed/simple;
	bh=Z1aqw6WSaGERshASIV6YJ838EncGA/2jFjtOHP4otfI=;
	h=To:Subject:From:Message-Id:Date; b=tJURUsMhYD3oWgn0kccvxl1zQ7EY+ETyDFoBjHi/xqESmkI/XMQh0cbFMIQu0BvKeY/7TLhY7/+xQY7R430fvDxMuWceV9HgZZM0uYFVq89x3F6rxDryfZ+jBmOCZBp0+Pi7Ab7x2rV1hG4LuPGATCY8XRmz62dRFdYzuJe3cqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Es5VkpCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Es5VkpCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23F3BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754998194;
	bh=Z1aqw6WSaGERshASIV6YJ838EncGA/2jFjtOHP4otfI=;
	h=To:Subject:From:Date:From;
	b=Es5VkpCOLWt214ZhJvFNDp/PDNVAEaOHNR6mONGFk2eZKaUkisjM4TUePC30rKyNr
	 DttLlpGIOX1Lg6+LNUBDihzAGSeGSkoc2HFVrmwI2kSOyOuLKOv486tXLin7JJpCFj
	 7oqUn8dAR++hJTd7V4aGiyZLT8GH5k/Q+aZx8WxrUQfRD2vqzMJLIXIzbnxd36HGSa
	 fZCqcbTUEzgfAE/LL48vtLsEGfjsNEZgeM0VAjlUSTgBKj5B1y2ch5VOzfw/dMn7K2
	 0+QnyyDQNdaTYdtFF+uKyTQeZj1VOK3Y87pI9bviNTFLwWmum6X9vjQer82ZKDgQRN
	 Jq2Awqt8nU1fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2BCFC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499819389.3033.2568944622050690105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8431d531548f43fdc66ee4b1b0f5eee74e9fb9c64505cda487a2a8e6e4d1caf
Date: Tue, 12 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754998193
