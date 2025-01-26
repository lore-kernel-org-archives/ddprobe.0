Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2D25A624
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737890154; cv=none; b=f0wtGI3vJJYWhe0ZSo9eBXfOJB0Nbqkj8TZfOmBkcGwxwGOfrtWgAVKlVAIXez4IqiHFw5yG0eJ+vzbmm87ArZY2gdcBDCF8mpyiF/3dt3DyQKz5w7ZRYBVi1g4d1APRahkzS/CPYTwXev1NvkDAXJpKMpA1sM0vkzwYazFMDz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737890154; c=relaxed/simple;
	bh=hIwP/PNEXZ6aGoDSRbZgUGS34yw/C5Szznb6DTPQeZk=;
	h=To:Subject:From:Message-Id:Date; b=lSmQjmW7+dp6QPTvPZQDR22auXNSogojk+xw7WIQKBVPTmgrujm4c9TpYW98s5dSOlDatN+0ZA2oLYl9Ia7Lq43slZkFsecA5m9af+4dWIXdhTk6rqonbUQX/rsR/GqFX8a6kTRMTAjU/dmCqaNoXg4x5wuUiq+9Zc/s84taa4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUFpXl82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUFpXl82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57FEC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737890153;
	bh=hIwP/PNEXZ6aGoDSRbZgUGS34yw/C5Szznb6DTPQeZk=;
	h=To:Subject:From:Date:From;
	b=TUFpXl82lm5lVveITMYOE/QO8JCFozT0hY+fyMksCcSKQjN/Nx1SNxXPMDNqDBrYj
	 lfPd0U3w8Vdfgf68EfWsg66B7+qBqpyNy28IYzuNLgZmgFX9/8ySdh1A78JxiZNi8y
	 KICGWM3VBbXbXjkGx2xwlAPQ/hd55T2f9lVyS048WrhLk6A/eqbvNR6aewR1PNR07P
	 8qTnZ+oMmGOR3lTUAanMFziocrtNpPFJabwf+eZELFoF8VFoi1Fi4g5Ue50aKkInAH
	 1kJ5VM8KvkKaSnNruFkeTtyIFeJoKWFtPs8DfyKZq0b/sKSHZcLzYmsx2f15d+JWa1
	 ZbKIlNgoU6hiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D51C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789015360.10582.4517740127126657208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ec0ff0e883b7a1251780aab48c810d559c97fa6d55738a474fc1a2970e5168
Date: Sun, 26 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737890153
