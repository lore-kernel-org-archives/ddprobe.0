Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AD736CDF2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785255034; cv=none; b=V9fRjqQT8JoYQLn6jG22bXYzMyFyUdvDUkwH9qTl4XpDt1q2KBsiybyAx372f6RqW7GlgviSBojuXwvRG7e85Mw4TGEHN7LHvmdZbQeRdOEsaGzhpb0ncgF40XRW/fRgWzea+oGIeG5CCVKyAN9US8ww44oKaj6qpPV/iR00+iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785255034; c=relaxed/simple;
	bh=GFJ8x12Mxc/N/YbCyLBgegYpmpLoiXI0tGN2tT/71Oo=;
	h=To:Subject:From:Message-Id:Date; b=E4F6JADZeazfpWzqGgEUpQe94B+ki12owPJvPU34POmQTP/Js+C/FPhpcy2TXBAyvHfKpCe9MAPgwv3DMxwD5PpXJQrboL/T2ySty/oTtevZ41nsfc+EI/Zt0SA/hc9c6rSbY7E+hhrNBUDfYxac2IGSq0x79bl7z3DEoI1a3H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWnEyn1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWnEyn1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB470C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785255033;
	bh=GFJ8x12Mxc/N/YbCyLBgegYpmpLoiXI0tGN2tT/71Oo=;
	h=To:Subject:From:Date:From;
	b=JWnEyn1BvwcY6TVMuuMm/PRa5q/DY3+9DQr6/28Ifx4d0kkoVFq2K4tUX0WrScW7R
	 Y1zTmcbiB91PSjqeF6NOYffI8ZJAQHwvoeOpCHd4zHvjq8kmLGKVwcLJiDsJM+ZA4A
	 MMhEyxpVqebHc7HIWcretpnPicDJR/qFH4s2itoYj1XDgGVBDgHIjLzC4n9R57HB6q
	 PnYL9eaHBd+BD71lyhFrLT0WaaQ7izRVhOiI90YUglqm3hW4XMnYjzxuHuu/Wg9g/l
	 bdWm6Onz+aKO37o7RZ3gP4pLbJjYfBbRUzqHp1twKIAmsa1u7aRAplh4MBdSFm8yR1
	 ZLfzyWC5kHNVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9539C54F4D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525503368.17227.10240165064660719428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac141706a93e02cd85041e5656c37ddeb7e13b4ca84e6df6ba72d202bcc0c8c2
Date: Tue, 28 Jul 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785255033
