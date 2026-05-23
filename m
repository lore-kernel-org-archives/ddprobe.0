Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3798A76025
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779504754; cv=none; b=HMt927lVLbrs8Q+QPKoRziSkaD6gS8WI4yHw+lTviM5bxpRrdnZ7PCeyYGYeEg/JYGQKe/B+X/j4zV1FR/X4EyWtAvDIpJC0odavd+dQrq6Hdu+z6Ivl5md1ELr6kFDYkPq8EATzeKGJujmqhdH1lZA4kYYN2TkmUl+iUU1rHew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779504754; c=relaxed/simple;
	bh=i4y31wg3SO/oOdKRn2VvYcjIvgHeZU4VDTWXpqEADyc=;
	h=To:Subject:From:Message-Id:Date; b=GSEfx1eHeiJ3yQmo/BXjAvzPaVPBQIJ91KFKMPDA0bPot34mjcF7/stJ1bmsE9mqSUQ7KwgUiybnnZWqAnfUTyHvKa9KPIrfDqXDMTvbiaDRF542ybX5eCz/r72aV6pDBXib0MrQV7ql7ROK5VkgJmOCqasvg+ja7IwYeyKpgOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goBkJ5C+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goBkJ5C+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B94C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779504753;
	bh=i4y31wg3SO/oOdKRn2VvYcjIvgHeZU4VDTWXpqEADyc=;
	h=To:Subject:From:Date:From;
	b=goBkJ5C+2dynkVMR18f411gJ1T6ZhBKsXt/IKV5S60EAwYjooTHkmiitZXbycdUCG
	 /vxujp0Ejzm5tkNwjMB8cL7sc0zqXpS+tIIwV1KhdrKiKOq1VuTvHvqvFDBw69iZod
	 0rbZuN4rG9gBEYy8eHs7Xb6MWtbU6V8qu3cgotnsT2pMrnX6a3Zlh4FtbuuVTs9JmD
	 dYpNJCYz9dm6W648uQ2okq7TSGxZMvreO84GyZw02ubaCYPCZjn+pGBul6XBrMBx9c
	 yD4GS9K2hfxfN6T9KsAg9kTp4lY4cB5dpZoprLf+Ct8/Oqv9uQ/qSfQlOCqSdCP8AR
	 gdahKHr9360eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9218CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950475368.22847.5645024765164450637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a664b443b4a7850f424237fc88970bd3307ff9cad889db768338ff5e49a3adf0
Date: Sat, 23 May 2026 02:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779504753
