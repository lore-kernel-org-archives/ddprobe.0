Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619D41F4631
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785645034; cv=none; b=t3fzAprND/0tL7CWkERL/UNXy61XRuQ09n8t+LuCsU+I9yEYs/KzNQAMSackqKwtQFE/QO02Vfoe2P9nkYBhRZ8USIQdng8NVHE5t0BnNFfcSQBMDUUb1jAZbHxRKViqqygeqG4ZDvoy0H0Ixn+0AV4chlgIC9PKtXd73nOWoIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785645034; c=relaxed/simple;
	bh=gzpJCBbTcX8V344oy3c6HiOc38r4oVFE23aOm11oX9Q=;
	h=To:Subject:From:Message-Id:Date; b=u0l8wLoZ/ZDbBX2nbL2PcYGAiDo4XFw864QFB96r1ymtqBx6EkmXi1MUlka6V3BVO3OdFwSCuFv2iZ/e38ji8uYq3u5L8hrbVi6HhBpz7nEyUWQhyPJL0WMK3Dk2PXsqUBcPRYVzya377NbMnGZH+QIyi4AbyuSsbJ3L/MAO14Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/r5Y7+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/r5Y7+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5E6C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785645033;
	bh=gzpJCBbTcX8V344oy3c6HiOc38r4oVFE23aOm11oX9Q=;
	h=To:Subject:From:Date:From;
	b=h/r5Y7+jHdCi731czpwX2k8byMzSwywCXqoPkwXU+JZNI5PgitWnp4tF5ey6mVUrL
	 4/oRveOPbg5woEK5/k/1qp6plHnxh6Wi44XBSlCiYHr94Sq8L+bAjDqXQzAh9VBYBc
	 PbNrYz8RXLww/uR+b7BV+qV4cQCruQZyWAnqXkX0F2aWP7zbikV1wtqNRQbCO3+VsF
	 I91s1xQJAMQin33mx3L2pRQ/DA9WX3vq+SUw55bns13rQbCtrO5CFDIrAZjxtWArGv
	 wrdQYGZMIQ/NKonhIpgVq6GD7MjGLvgIwJXcvrE47gpOu+bUQR3mbpx+uh+BBqYbzq
	 h5i1uBbAp6DDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37EAC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564503369.8879.9943402642293076156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29d9423d7ab003f5c2ae0361743fa084009d94d83f1477e7a08a4b243c00233
Date: Sun, 02 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785645033
