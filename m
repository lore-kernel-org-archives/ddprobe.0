Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB25D530
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715205143; cv=none; b=A4DoavLXoToX9Q6Fxt41CW3wZLDLvSmmIUjMPxPwY6hdSGIROjm4fk2TN0yQz2lwItbITQRa+LdUY8Qx6oAK2yNJh2qLlSeffyiz9QOcACql9l38I8Z1HBpWCJv3sFpwlP/ebCLf2boWVh38uR1xnm/mCZtAtBsyEGSZFmhCWQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715205143; c=relaxed/simple;
	bh=6IwcMdLJVmNMjhxsE9vzvgKVjzsRi9gNJJcu3ii7wls=;
	h=To:Subject:From:Message-Id:Date; b=TowIQwgU7aweoRdL0e0JbjnB+x1dhJJBGDU8srexyJdAjBuiV9GhpPH/qErtpXavcZX4qqkTjX/VMD9D6/07n973Y8+YBf6LZ2LwYz/afpGdiP3tLdrNK9NQl/Kp60axG8SxdYxFB2uJ4V1HgCnAWeq8ZRONDEOKjFTMS4PE3nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRJKobdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRJKobdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0D8C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715205142;
	bh=6IwcMdLJVmNMjhxsE9vzvgKVjzsRi9gNJJcu3ii7wls=;
	h=To:Subject:From:Date:From;
	b=XRJKobdt2xx1lmbXiY001GNPnQP6PfCxBIhJESz8x/E6WBnZ8l6BABmDAnrzZaGDH
	 OTpN4Fu5TDFDY+O6KUvWYrcBIi7roQ2NFVIY4zucAQRXYjMSSjma2cnbUfX4wEQOeZ
	 AxnmpEhc+1b4/An6iY3/j9924KAIbgU0YQLD6zcGPAnlP+dPHSS6AIRyhHPUZmc0s9
	 WcNuu+QpizZzwDkmtDiY9kWD6Da5ho5a8hS4+eRTnpNF/cm+/5wT49OKlUuLNbdwLH
	 OSGSSxnCf8MriMWId6sOA+KLEQLYSc3SmTaOID5XMpMBkxboMy/w7HVsYUHyWJKjqT
	 avGkl+HuiFPug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB887C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520514275.5220.5273278184089886308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b9742273761ff88191f045925e1d8b8a0dcfa5bd31a312acf336f0577afc9e
Date: Wed, 08 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715205142
