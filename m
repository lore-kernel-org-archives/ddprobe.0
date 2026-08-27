Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BE2415F3A
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787851234; cv=none; b=hq7SDivAGlU3DeN7ATcpYMmPSceKiSqffzNyu8G53JaHSfLZxmkfAktkjslVOUZ4RbSAJFepKj2yoPjkQRckeC/0+baenG1A80UFF5WMYZlr8cb6RyeN8ZBhr3nQoUy7sJesA339Y9BXKGGLiVTvrvSbi2dQivP4HiUWXIZ25z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787851234; c=relaxed/simple;
	bh=KWMpi69RG65AlZs8OZ27cVlpjF0XbDZKxR7ZDeCTIFI=;
	h=To:Subject:From:Message-Id:Date; b=d/ot0cj3qlNUieAiglyzAUQ6V/+iA3gL6G95YiVIn1z4E6IpeTOfwGRtttDd/lXrcZcjP0YBmruw4mjy3w1ppEPTkHyE9ifJ9zdJJdNpq7tIuvQVmZai7M30eA8BXU7VaOFEKAaYLsqMlFKmPkkw1hlSuFO+guJRkgy9Wy+i/aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akjM0MCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akjM0MCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4AFC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787851233;
	bh=KWMpi69RG65AlZs8OZ27cVlpjF0XbDZKxR7ZDeCTIFI=;
	h=To:Subject:From:Date:From;
	b=akjM0MCVr2yJH+Sqk+n6nRHchUY43Pl62lyPWOCPhyXeND0qzbSHtjcOasbQ4dfFh
	 KIRJ0jDNpMOzmG1U7w5Lguli4v0UgxC5ltFbc2qhteI+OINVAcLs0rsJjJBGLmHSsO
	 X4TzkH99IOLTqVFqg4nIqNFiXPEwgJIYGIJ4z8wPK5Aew+L1D4Tfg0OExSRC2V1aeR
	 PQhHTEE86B4r51E+o3ImNldLWvhohcUW12bBqrBiCeDO71KSYUURszoSOtiWNRC1MD
	 fWPHzyDgcFuSRQEbuZg7KxFwUN1UKk01ysp4g1dICEgCuFm3DN+3IuBG5GOsnSqoXa
	 7yQHzZxGuIWlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA150C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785123368.1665.14532120771459561574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cce1cd9f54b9fd5ba2f415a41b823a012c577a6b8319981dcdfb4b2e188696
Date: Thu, 27 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787851233
