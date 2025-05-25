Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1A5BA2E
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748146194; cv=none; b=MH79Q59z8R1TuAiHKT81sQyqFIdIBV+UCgLs6zUEfLwCs5ROrHneQFXB5ySwCr25No7i9cFugU27JksUh/LebcHCmAhZyXUG91INXnQe4ZB6N7TGHt+dUC/NRU9hzIgkDqeRZ9VUh9l33J/g8NjW3skJEU2Y4cbKXToBwSKa89Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748146194; c=relaxed/simple;
	bh=ZR+c9dEQzn08sX41v5VBZF59u26tAOIcJUFk/QWfdN8=;
	h=To:Subject:From:Message-Id:Date; b=TM43C+MXfvIpzA4Jn8SR0UOiQHeawubgDciiP230AADGo3XVQELUG6FnzD7wJ2f9QcJ/sbHcBXpvXHF2ktqHptouTVCXMOrjOrODK96gJ7DiZ0O+zHSz/MjDvt6+609ETde4qBeHZUKYex4Ou4JBu9ETiIvHRO2qojaBYEnhK2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leCzI+L2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leCzI+L2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA491C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748146193;
	bh=ZR+c9dEQzn08sX41v5VBZF59u26tAOIcJUFk/QWfdN8=;
	h=To:Subject:From:Date:From;
	b=leCzI+L2C8Pnbnb2GgBxPHpkimxerqMOtC+GfNwdZ0TsqgN0nscXRw5NVYj/GA3kb
	 VJRUERuvzbQoqtuyBqLGGWd8Ire8qyWducTVQCbkI2SJEpyz4JCcKQ7y9vwsXk37YL
	 Yy9tfSM+115kiI8um+gE6DcjcmuoBVbex0vNMXnlTl+TgJO+FujIteL6vlsVjfAEWV
	 pSoCrlotQKyX1qA95jjk57ewL1ugagWwebX1X+Xhm3TGas0/u7r2LOKUstsIzg6CSK
	 9cPOEoHREhM2v0dwLoX3d7OFF/WgMcgyxS7m+WVVZETiAeoLeFMf0f1ZhSxbQYKsVv
	 Awam891PDehcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FDC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814619358.16887.13342765838794288507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ea7e51662c8d18b9514090bc5e6d5a575b26d9a2b91214b58acf36168a2140
Date: Sun, 25 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748146193
