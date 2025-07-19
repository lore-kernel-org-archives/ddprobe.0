Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3B8223DD1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752941994; cv=none; b=LdF393i6T4kzTKhyXBqCK1DnWspxHMr5ODQcWg5pKsih57iEsBA8TF5PN/pkbTtNGS9T5+Gk3NP52vlEdOFE/TrGpXItd3torROyXEDGEtDDl89fzo/WmYE4Z6nGkZeornJvdotmSZ7AxZZbY5wPCA1z2s1+Yv944rhl8PSGlB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752941994; c=relaxed/simple;
	bh=ZoHJAuZtpHDfugPA1QIDMcLrypM4Y/zrc/HmcUfsoDo=;
	h=To:Subject:From:Message-Id:Date; b=nTh9NLEE4I2OSAeDhvsHkyyYW9XOV1AEMG7zbE3aPPx1W9v8J+8PoRYgFHSPFOPUp+OL1CgPZPSeP17fWYABM7WAwjngXlyLn9gakh6D+4juXGUO331Ze1fWQ4lIziHbI8RL7pIpeQ+GJfL7f2q2kc1pDL/D88Nk8Aq8U3H6BCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFjnOcjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFjnOcjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D35BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752941993;
	bh=ZoHJAuZtpHDfugPA1QIDMcLrypM4Y/zrc/HmcUfsoDo=;
	h=To:Subject:From:Date:From;
	b=CFjnOcjV2TjdLYGj5qJIjesXr7Npsoo9V0Is6OyxWyXLnp2S6c1phCiXs2uXE37CO
	 WXhiJ6t/Sr+5eCFV7LwTL3VFTYMmMrW0/pGwlNg+y49wUcpPs309lYtLFX5ObX7EnK
	 mCese+ITZZSWrIU90pMZkI18Y10lK9QJp76Csa5RKG+Oyt1DRSFDje4d3Thoq4UX41
	 THSCET4TIywktga1c/KLGt06cvyDKmwbxGxjgSTdFvm2GuuG34sQgvpYUNBBy0dGJO
	 mj80Yb7BD2lkQ+iQLQh2S+pv3+XSpBdaA79NpUDcamyAqLwtRZ5V5R6hp0L3g1kIf5
	 fNIZb6BYzYS0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E977C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294199357.24014.11785780679057289439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8152a3005ac776f68f5b2131e2d99c6280229c5a19726e8444bbf47f7ea8681
Date: Sat, 19 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752941993
