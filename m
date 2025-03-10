Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7FA19D8A9
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741624134; cv=none; b=BU78MUnNzGPpdlItvJeyoh/sYGI4OPUNriYulpfDoOdmqTumZnDo/IgmCylBSaO1GsLVG8SWDImzVdaYwi40Y2mUnTgn20qKoY4Fmod9rW65kTVhHwZLWWWwtwYmim91cF/5ZLwNbu08wNBpxgoqh1H2+K96qwgZiVNGsNb3ZD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741624134; c=relaxed/simple;
	bh=hBYoXr0TGAT4CxKdz2Z3YSpZDVAWKsq74fZWgepryEo=;
	h=To:Subject:From:Message-Id:Date; b=BrQSfMeeeGuZUmlsBy0Uz5Qxs42cNC0XWuMANyxonavQiJeAaoszdaP3OHPsVNCjiKfyYBKWTTOWwkpKbrffLxW/M/zPnG/RWPIduwWZ/aUcC7rpoUa7/ZFkNENN40oyl7cQ2w1DLH9h+ZUXg6la2MxXGdlfW12ythdFfhdTapA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMGlqvVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMGlqvVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F94EC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741624133;
	bh=hBYoXr0TGAT4CxKdz2Z3YSpZDVAWKsq74fZWgepryEo=;
	h=To:Subject:From:Date:From;
	b=qMGlqvVu+9UF1+T9ABS1uKSs1jcX6Sz2q1KoaLADz40jW2wNQfz8TnM0bbnNF/kgH
	 KgD2SHvmux6m/QUJLjTDxOxLsiUffICnLzMRPSFn1tE2FoFjM4dK1e/Iem/ddDc41Q
	 VCOH0NciXQ5SuJFp0jd1s+hOmP2mQmOdV33Wk4K6bT7pcvKO3EvxlzHbge1EhoXoDr
	 wnN+4fTf0u97HiZgA+j3Edu9HBPPS39Uv9V3BEsZsVUQ2gxr3jfRG6MI0+MZ1P/Leb
	 mgZ/1mTFm5icVwpSHxctZ2JW+pdAizmNJkDM+rjO4nqGla8htYz2l5V9GbXyzrlQhq
	 aW+dXGfdMbdfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE02C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174162413358.28100.9168095632955636134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51886a790b27ab3fff295293038664ac50c392359b134a6ee4a718626d5c600
Date: Mon, 10 Mar 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741624133
