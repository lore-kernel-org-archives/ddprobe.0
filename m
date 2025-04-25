Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D4E22D792
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745574594; cv=none; b=F1m87/84SuQwJJ/A8bLllj/SOM/vRB1Q0JbXU1QDa/JUS8OXkupRfHT+hZn0lDkIIsTX5Uewr38Q9rA3PB4dN50WUvnuk+nZXWe9TyiKAAOoq0Wg6j7yxFTMU6ea+rQ82HNwkGsMGI+ZrtUXJU7VuMzmjq7f1g2KB7jK17TuxdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745574594; c=relaxed/simple;
	bh=si3WRbpIMAdhakpRs1jw2ifjIlX2IZBzrd88K2jbKLY=;
	h=To:Subject:From:Message-Id:Date; b=tDX/n+XpzP+TQgtklpFXrRWuPuxFSyyZ+/3dZV41kaEgCXWn8xCPJgCTo/FzamKWkCulbprCegmVvgHWr9/q0Apaah/kY2SDP/TK3hJaUQgrZTUNKgeSIv5Q9qWQnb4sbKTuN0YeQghoorMvbtsra5vQFaeM3OVfgO9/Hfo9qQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1VVBHyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1VVBHyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745574593;
	bh=si3WRbpIMAdhakpRs1jw2ifjIlX2IZBzrd88K2jbKLY=;
	h=To:Subject:From:Date:From;
	b=G1VVBHygp2fVHDeJgtLT5w2knqiKoKkfnRYJizNceGxcmN85hgy67pkbCMWuLIGhf
	 a2SSVtxqN4w+5YYgOLmZx7i9LEE4L2I41qeSFqHZC2CJU4moTXC4KDC6NDqQFJushA
	 itRa97mfpIjBjCgUoNkAQBhGtPMqM5/Y2V7P8cAyQJPU6peLu5Q77W9293dsFelX1x
	 lYs31MlQCD680RC9yk62Hu7HUXgOe0nJU4QyMY1Huu1LCjRPdn7G5uU+dmqTshyook
	 vpkWGr37CO7Yjaso8A7EFmxXR/WwqCif4Md4tmHSixqtwNEoLHdI249ZHm2cvyq4ql
	 I1ixz2s4AlcGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1FC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557459357.9843.13353190616823128496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3899a1f225bf57066e6c55b95521d17e419f4307ec2801a55a0ea5ab2167418
Date: Fri, 25 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745574593
