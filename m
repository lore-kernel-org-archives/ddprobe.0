Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA9519E819
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763923314; cv=none; b=I/b+TCEF2jYbFK5ZcPtTwhT6Tv+ndPJ8peZ6qZi/S6pU8yYAN8g2HRSvY9l7zZifuVdQCzN7iZ6Da9oFVVwh8ztDNjCgvnnUMwxla280mZGGUcCftXuYSviR8PWV7JBri0B/nA/le8XdPLsVcNHEAukhrzuWrV3K10YCydqn1so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763923314; c=relaxed/simple;
	bh=LAYrJvxq8W9df/lt22NCPP3BS37840tD9HF/iPPwJAo=;
	h=To:Subject:From:Message-Id:Date; b=vERsxMdzaT+KF3bT77UofXZMVrFMQ/kX8xbMCwVPwMNPtJsJ0MRGb/sYgseLck3hM4/87pRMvUzQ1YoR6/ztXk3Ifvp5lNgcQMQSLnaHfZlE26y55Puc4NVeEekTvNSKRF+/by76YvgN3+x7zH+SiV06HrtlhRpOaXsQd5rnneY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGT9Qzg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGT9Qzg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D3CC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763923313;
	bh=LAYrJvxq8W9df/lt22NCPP3BS37840tD9HF/iPPwJAo=;
	h=To:Subject:From:Date:From;
	b=fGT9Qzg+0VsOLTXSl+2igo0Uj40W8hEAWeULm7J17Lohoz7txDWPPjI8dtqVFG4rG
	 deQVIlGlHyUGwyTcEpcRuD37he/fGGlvo8JmwjVvatvX1ecrJU/sMRV8cREYGUx+6n
	 xy0OWLrtnpFFy8FObyp/vGd0u37D39jAYGKXC5JrMxD3ownDy3BVXfRx/t/AbmK9fI
	 eLWkShZeGAQxea4EkLd8rdXXJBQCALpixLeInxLFSQnLyIMXOWzvsBRgWopEoEMxt9
	 qJJilcK39dx3oenonW3+bjFKoMC0fplUvUnWXCDEUs6r/NHsehr4M1MhrBu14O3hJK
	 ecjXg2aXlTzbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9734BCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392331358.8560.16955085037072080054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95dfe3a539c4c1117b648cbf59fe247e1ebcbb5e5bd9c80b7225ce481b778f11
Date: Sun, 23 Nov 2025 18:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763923313
