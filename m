Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46554163
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734780355; cv=none; b=jdJahsdyOvKWxM876bUW9FG1lChdOkp8eAvAXlhEu/ZY6zvMvZeGFUC/YgvLZQZgoVi5GybuYqwwhaGZx5TvyKIqVxDtdIPgIPyLJZfBPi1915kyn1ZrLre72oyuOnaWKpEei7vpou3QNtprUlSaoQ9YZ1Bd60cTKBVODEiub6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734780355; c=relaxed/simple;
	bh=t5omhn5CmUV91X/Bw+lqLCsITA5op8aB+ZyoA2j3gD0=;
	h=To:Subject:From:Message-Id:Date; b=EitgOVsroxM8p7abq62EnLKHPUPUDmn+fh9EDXAR1ci393RJHDwXD6LzXMmWJ+h6X6RvqaHAhNtL9BaU8mWoyLPgLpcMiFiAfFmFe3Y1EnOU0Ti286mc1FiX71IFN1mLA7vwqPEScKkUAjvy+rDsDYgkGMWBpo1OA2UqSXoKnc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxB1XTMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxB1XTMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88F0C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734780354;
	bh=t5omhn5CmUV91X/Bw+lqLCsITA5op8aB+ZyoA2j3gD0=;
	h=To:Subject:From:Date:From;
	b=jxB1XTMMVM7Z68LpCQCYB5YZ9ymq2D86w6j085xDutSk94ne/K7TEgbhj2efK37jB
	 NPO688cPnng7VwUwYU4lVkbOutzrPahkpse6GXznm6KhG4R2Z7NTRWFYnTggXqomZU
	 iH+AIOjBS/LSW1aubNC7xnqEXkXym9eOVEYSduGsSvl0LBmkOi8eoX6l9UNEZpZanx
	 eGcGsrW1KRaK7yOBbCs6auA13UZWTz+ZBriw9beJoAGnVzz8rKOMPj58YxPrmHIflE
	 punTiA+vUURurrfmXdXARclMMnk2HQ9lsTjykRIQQejRV0XRJRkAZyF+eWPKmHuE9K
	 pAsVS7w2QRpZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBDBE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478035361.9985.14113836130564097958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76630ef3b920f710fa3bb28aa585cd2c2c01dfee20c8aeb6ed279c9a88b0f4dc
Date: Sat, 21 Dec 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734780353
