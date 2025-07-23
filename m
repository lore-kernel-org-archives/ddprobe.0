Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD052AE72
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753242594; cv=none; b=kgppZp7JiG32ZQECPxEcc+1vTZ3xigO9X7Us4dtNulK2PNjElbL/C4eTNDTr73zi0Wca+yjdsUBxcogQbHDveHIjQu3IDuROy0mWfX7zhU5eMwFIsc6dUU+OHwmfEGeroBwfgZGIqnp4++5/hhtkQC1hhlsWKX8Q/uHU2wd5eyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753242594; c=relaxed/simple;
	bh=Qg/7Yw50zy+WUbATTofFDPoP4RI99xc75m2jT6Z6Dk8=;
	h=To:Subject:From:Message-Id:Date; b=FZavicvVbJR+KE3NVtNjomRfYt7hOC7l7Vo3K/RFEaRD5YGmxAhoHRgfhjxgDItHpZekAlHJ10gAo9+adzsQCgIOjR/7aB9bUWBmgtLFE+tCDFcZl+b/TtyyCYQmBtKMYiXYIx/NZ2cubdA/SvRIafwaIdRYNSCiFgQs1PGK/IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BatBvKgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BatBvKgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753242593;
	bh=Qg/7Yw50zy+WUbATTofFDPoP4RI99xc75m2jT6Z6Dk8=;
	h=To:Subject:From:Date:From;
	b=BatBvKgXzVjIIkgA6fUK6VWh8rzCT6dzz4XREQH7lGg1ISipK2YPM17085c+gLNcS
	 oqrMlexSXVD9NwbjGCdlxzRIS4h7vG/9pTMrfi9J987F254oIlH5fouk/lxX8r5vde
	 /OufNI8si2elVC4wBnEuAUtVCWMthMzCaUPcZE7zoJKF5nOT83gBh67z/jesDhNu4l
	 dgyk0Zkzl3kXPBuWV5jiIbH6cwMgS6T9mNutuP1dp7iHCY8edBfUafDVlM+NhKv9xI
	 fnWYlHV9YAl/uMwQf10GjhrxSCEwAgRnFYkT3rxMoYd2rkhbmvHtFAoCNrrhc8g2DX
	 4idCp/IjESWzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91902C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324259357.21931.2225469482829110925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97755c00e3c9e42e459ebc6ecf1c99f900a352b4e59d6fc0cae0b961ca37ea38
Date: Wed, 23 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753242593
