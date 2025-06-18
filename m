Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5673BBF2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750231194; cv=none; b=o9MjDd6l+Ns5eWj/RHSGgMi4Fg+XtOnp0ZAP94b0JsxenAcdv8hL5H6SNLZxS/mqLxP1xpeFmjN1M2EtIDKKDIM81FKueIhCE2zbE/zlSCy6U60OrNCo263Nw/hbvi7Cx/awdd13TBEPGIRWbjKaSFHz8qmA5k6L1m5VDWWuhFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750231194; c=relaxed/simple;
	bh=i0R8H69Klz6Ta4blqz1RIMoUwxvggjfbYYgiJm8G86Q=;
	h=To:Subject:From:Message-Id:Date; b=ELF/OCMakkLl6+h8ZlrcL430h7w76bmi5Bq84F/QYqW9XV1bcToj+CIif4p52p4djIAULZOk1XS/h+40JnHIi2T0FnFkMJpcdmFjtceaNdFfd+cmwDIFpk5vbqSPhVUFoFC57PhCgDfjtx0Ptkb+ziZvGQbjqYZOZO5QkNJJvqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwyIpiX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwyIpiX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE061C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750231193;
	bh=i0R8H69Klz6Ta4blqz1RIMoUwxvggjfbYYgiJm8G86Q=;
	h=To:Subject:From:Date:From;
	b=fwyIpiX20rzpjzbvzj3mLweYPgOTzVVhXNhxV25RcDss3NZv65hsE0N/jXJs/YrjM
	 j9Coa1REayyKMvbKzTVZD8gQxnvuX/ff2JKo8tooeee1VlS24PC6glDPRGn9dvtxJU
	 T0xkYw9tKUojS/JgT2wnHV44YwTbpu3DGd3m6dQyRLGPJ2Lvvvv+QWmOB6N+Hv/Etj
	 DOwBiODZlGleHo79Qvjm7lZNWp0/C9qAI/Cs8eHwCVflWsLNj4VZ0tq3zPFl0z6G9n
	 hkAOYL9unFrMEG9KCr1ueIOp6sQvZ/MtQzYVqGjSjMs4Zv7eV9/XAz/5pusvSCg1Po
	 k4ZIT6kOxURmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9BEC7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023119359.2758.5301952926878600070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545de6365ffb44159ffdba43c2dc226f21b1d8f3f60cf243700094ed3b4cb0fa
Date: Wed, 18 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750231193
