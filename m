Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5152AEE2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744099794; cv=none; b=ITzB8vZWm9Ad1nvz+mewNPrJ5MdkdOiCVt7VFRnqRGUwNfjsnKbGB/WalK2ka0lH729Dv4a7RmY9Lqe1M8ie1yodDGFsb0HasR+n6q8FjHEzO5HvhBI00b4kHT4JqNAMbr1+EM87/HEtQygty8m8AV0R5MsXe6dAVMdYUIWDIxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744099794; c=relaxed/simple;
	bh=n34fj4cN2/6mBGGs+tFZQ1k9FQI5amiM3ZQBVJtV73M=;
	h=To:Subject:From:Message-Id:Date; b=groJTx0Da9t6HoVpIIO8fMCWJ3AHRbFiTTFWOPhe0Q2eQE5h4xFSpQ98sv1qQcPXNyUNbgFHG+xeJZszw3lr2XWB+vDbYZAo6+QGlsecrdkUh1UQFT23m3Ztduo90KXSb3OIk6H4Cl0l7O0aNh3imKry2bAq56+2cDFb+xxQy2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLakgOyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLakgOyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2788C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744099793;
	bh=n34fj4cN2/6mBGGs+tFZQ1k9FQI5amiM3ZQBVJtV73M=;
	h=To:Subject:From:Date:From;
	b=vLakgOyHrJ16Haewk1MNDea2+mb+1PUyZ/eDEX9+Z7VWnTx2rszfKUZSQ7aabhrSI
	 BkxB2u6W5QD7tlu73OmEUlCmpRVtNIZpSjzXQ3OENqa7yPjHlC/BevaCll3pWNT6MH
	 HceDkRcHMfg5LtsJCE7p9/fYVjDLUJbk1BHp5KKXWmYAjuykZo05CVInfJEtX3lBrs
	 lfkHUNGtkw8smsesmD24xfXKvgBZJS2AxD4Wy+VzsIZ0kup8dDldOb8GAh2QtZpdng
	 1ntM3qOa8qGBmXZ+ihafD3jhemaLo82ONEGCJIIKfmAzReabRhrgWMZdJbPf+uEGMc
	 FBbviFcYW2r8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B0C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409979359.27563.12632273932279493056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2325bab2b1d6db6fe0b3a94bda13764ae89c1148d86ec0c0f7aabdfdeeef861b
Date: Tue, 08 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744099793
