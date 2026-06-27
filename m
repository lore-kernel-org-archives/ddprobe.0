Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A21426738B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782559714; cv=none; b=WQuyMksKwl5IoAp+exuYlbK9yKdkzKyyPbKWqhcX/w8BpXHhiioUYXDEtLt1+t9+tY0gho89o1haDdlTQYpHtmxLgCOv2Eq8cvMvTsbfQVjjV4dEJigKbD3rpN0lbJDO8S+nNu+Q9BfijITVxjZS5HI44B/nOgfVylzuXaCJ6oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782559714; c=relaxed/simple;
	bh=LjIEDiZT+suy2okzZCstHvgtR8XLWABaaRR2xE10g1E=;
	h=To:Subject:From:Message-Id:Date; b=nduha1ezTG6+QAp+Ll9iN+o2Zblyoe+I/LeTkBOkjbYRAN9HwUfbL+rKKrqmaoZPVML4HvuS6e6MbfIqFkC8pqDxVwK1jTLen+135j5xOENFMe1wKfYlgWFV4QZJ4UukPPt9asjK59ev0tR2fpPFv+31pyp/ucW5d2K5ytH+h+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMJKKTvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMJKKTvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC64BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782559713;
	bh=LjIEDiZT+suy2okzZCstHvgtR8XLWABaaRR2xE10g1E=;
	h=To:Subject:From:Date:From;
	b=KMJKKTvja+q6B/zZ+SleeWEQgmSKcvej+nlTpOa2rzJQXgg66nGPbc0CECB+AtIlw
	 TRPf/GqiLobtGWtFF5wgKSRPAr0s/iABSEpFGmCGiBG7OYRJKCuIsnK7THZWgGM2no
	 RpiBTtPbNsjnh2pf8cEH04mxOQDXWSpxT+I4GJQxU9CcuD0rqdURLuME/VsWUPpDfi
	 QoA5Dx6mhERshZO1g9X4qEES/TyHs1H4AvaiLZ8ifPxeHDQkw70ZjJs2hLgRgLspvy
	 TX6aQafoY/iED8nvQI7/2EVNYgwkmn0G4gXd3h3NoInFJfh8ZcIMVa8g0xTwJUIZ7u
	 beebUF4V5dPgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C0AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255971371.15312.9306466758128727429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ac5e4ebace26a0d9ea48ec8704eaabbb25628f241b0d5948b4a9a171c173ff
Date: Sat, 27 Jun 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782559713
