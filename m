Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C1B42F6E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785172837; cv=none; b=Ql0hVEWSJ1d080MzAqY40eAdJ7HCvDe0xN129DBkBhKnZx6TfsZPnAC/mFjLTjXhRzsFKEfnEfzexSRrqcNQweLjUBuI2y4BgfYpscrwDRSDLVcEOH/yRX7zq9fAfOF40wm3wiYhKpIc6aavBXMPzI78BVYtCRekNCDb9fK0ek4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785172837; c=relaxed/simple;
	bh=d6nBiUnWEUJUU+9/wcx0V2i/NLBEGDYQi9EMq4GMiL0=;
	h=To:Subject:From:Message-Id:Date; b=ZdN+t8ByIBHR2QsGjcENkemc7W1CF6RStJNfB2FtcoHE0Rl8V7rPhpPfmH0hX2h6h+bW8w+L85xVPpAkmVgmMVodXuaj5P8pincTLXrJ3tjx9B0ANQjrFpallK1Ag7yqgkkoqzwzq1IyspzkhEPYvAkuBhGucYgr4B8bL684N5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzultIgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzultIgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB1BC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785172833;
	bh=d6nBiUnWEUJUU+9/wcx0V2i/NLBEGDYQi9EMq4GMiL0=;
	h=To:Subject:From:Date:From;
	b=dzultIgCupQBdT6O/XSKpChRFa1eSZiVuyQ3I7mFes46HJo48oCZA7FoAG5DuHKay
	 JuBcdcaLFHezv07JlFsn986mByA2h0y3RrNURcHD0Zj32B4KZGjAXsdG/eesrYn0jw
	 uGYWxQNQxTbEq+T1w6BBwLsfmUD2SJywzB5YQ8iYoigfVvHluxY71C94MYMaKaHvy9
	 w/F9I6VxjbgDVD6O1Bog/lT9KuKLeGnxVHMG77zwRg22CRJblENOitD4/37uE8R113
	 nDH3aXn0K+j/Ae3xEEtnhCyVOPujUDUAm6nHlBjZv7u/nr+1+J0ZCDp5hcyFtNteq/
	 NxVNoqTnSLjew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC35C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517283369.22965.5688655244122801165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c521f32691d8cb5db503deb8bd0567178552749c87a54975e8151b91bf64f4
Date: Mon, 27 Jul 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785172833
