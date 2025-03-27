Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7912E3392
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743062395; cv=none; b=tGMCfGQk+6xp8PLgzmGQToaQpcg2i0rSaeU3LFApj6/xjFppxm4sILPBo0ZWBEeSfj2cp9Ud53qsiAQRU52qgRD+8XEmnQKhBrQKae5bdbvtTWerKMjVfj13XUUCjiGBn596RePqJtAEj7nKBn2qj1r54dTHObJ7DjtFsLPjmDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743062395; c=relaxed/simple;
	bh=xJbUJKUkjsk6ocT3K6jPNl5GBGBvW/GXMjMZlccuVcw=;
	h=To:Subject:From:Message-Id:Date; b=pLHi+8C0DpnRAOJiLtaU/IbbnbF7o/S72f8nqTpcfdqpCTtXGAaquGNBDTZWW+Im2GIEHSjYl32S+PLvTM9ZpDjz/r3qtV+nYENcLj9VfhAUp5M9VrfvIsfgI0Um1AL+XIJaj59EJLD1TkufDwWfbEX75CDuSJ0yc4xCfvGivWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTra64vG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTra64vG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C612C4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743062393;
	bh=xJbUJKUkjsk6ocT3K6jPNl5GBGBvW/GXMjMZlccuVcw=;
	h=To:Subject:From:Date:From;
	b=bTra64vGtC28XyMY3AiZllgF+2kYpMzkK0ZjAJczEIr8GooEWXkSmcjGXDFJ7Ewcg
	 mymZQP1rcWz0IsIGArn0FIsdUmq6JEOFL5tDVmrRRzsWhySAKHWSv3c0A5yObGjWwp
	 rNlsSDsuium1gQrOIyYNrt+TAYmZS9lTQa5lj66dxtmUhnZOiZtmzoz6CG5pJi0nPo
	 FVCGOCwaxch9zCNJhrgHE+UqB8iWaW4/Ehwv0odISvzya4/R+YU/xCKUoTkgeNpH7j
	 sdrrjf+b5uJ5qNjdjW4d5g7HeJOyaa6CFeFZf48+/zBEqVhqW6l9mnoTsfdWsatxbE
	 cSWp59cU5dhXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91361C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306239358.15072.2482527612577223961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42863ed42da82cbfa10dac8a1eb59d38c2ebe62a0973154bd7fe8f3b2fc98a17
Date: Thu, 27 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743062393
