Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37386342524
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778626834; cv=none; b=sHXja/JPJG7avRNBjHhIK9WWqow9x4XBsyM6PBy3McvvMnZgtqy7Wnu95ABpDC1aj+mXJzue5FBsarPtUwqQvMGN8STUsMmHNcFixXY7kvLqoVyBXgIfFtdhyFPArXXHQaOeVpXM+7BqIU5aCQyUP4uUrvmVkOIkrA/MuOFaXi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778626834; c=relaxed/simple;
	bh=hI4kFEVDVxh41xdchcI1NU24QLX+P3603dhZCWqcHXI=;
	h=To:Subject:From:Message-Id:Date; b=q+HXBcG+DO0Z08/zvHLgcM/O68OP0kGUY04znWPdZn3nkV5v4x/rmxHzGDZEavUhm1rE24To89nApfXLzJnmyg3A/daVPVYQhhv01lC/cWWqXrz0BxxzGjmZn1t/hUP9HsT7J6PAC1Sz5QgJ7MjYjPNVy7Ych6pn16U7vRB2SHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9wfNNGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9wfNNGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDD4C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778626833;
	bh=hI4kFEVDVxh41xdchcI1NU24QLX+P3603dhZCWqcHXI=;
	h=To:Subject:From:Date:From;
	b=k9wfNNGSaG6mqa1fNcSyWtZqP8/ZRWX2ZoDcgLpsEcqf6LKgbIfXonI3+1HSsspZ1
	 1zQ7+P9sbhdiDbkppm4Kc1oPukmZPPE8RhEZyWh8ES0Pmk3wcpxUpzs4vJ06H4Ivqv
	 YQgq2tlkyGZzheBwh3V4L9sC1HDs76jSu5lsyU2mjwSqfskZaPDmckCypzkKfZIxYk
	 4CJtQJHYXnlP4vKgftL2oKCTq2MjXyk9xA91/wq5cAXAKAPBsTpycIT1JfiBccj4Jt
	 276xbehbJ3T+8DHpXalwzKaECwe57PVqYryyAjZB0OoArB2iwcjkysmLIlOrHwl+QE
	 txr3tyLRoFpXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF987CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862683369.30946.12653482742614807745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58e9f37a8941bea14a2941cb8ea570bbc14e1bbcc5943493de81182bfac4299
Date: Tue, 12 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778626833
