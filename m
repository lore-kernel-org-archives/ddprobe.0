Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C923C217730
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745617793; cv=none; b=OZ7NwV7mnm2tRmcvQ/xbUXrAcV99QQCQX2DyHJdc5SI0N887HMpzBZ7wTqO3l317/BZvfT8fr/FZB8fKBXiV5nINnKjw2q6c1X02mrH4RXXypsoGT61tECYU6K0SLR7vsxUcTJR+LH39f76zhgTM4/LOKnnmzzuDA4NgKyRVmN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745617793; c=relaxed/simple;
	bh=VeWoJoFUKPZ1UuD7yKbaIq+hos2BcLyo62Ok7ZrR1Aw=;
	h=To:Subject:From:Message-Id:Date; b=XvieQRHv0Ia9lvqCK7UsYppjo4xmWs0yio8x8Ln/YUSLHtBs+zou8tJ5V8gwpdZxikbdg0IlBn7TtlI7YlR2rM3iDgvApJ4n19zhNvCAVT0NNxbm8hAQw5VKKKP2qRKPDsM9HIX3EEUZSNF9fyNT0+DHKfyfrOtbEuBtX7ykl5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGmmzmZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGmmzmZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745617793;
	bh=VeWoJoFUKPZ1UuD7yKbaIq+hos2BcLyo62Ok7ZrR1Aw=;
	h=To:Subject:From:Date:From;
	b=dGmmzmZGpKh5HfRCTPDtC/4nQMID1sKXPBypAB9aI89KPfH0ZrZSlWXcu5QC9j8pu
	 l+pzq7hhURhnGgChxEmDRO/rAUTbPeppJqhvry2oaPPIIafvj6jT9KESBtbp7CFyGB
	 xi0HRGR4Y9quiHSRHm0Z8kTMO+hFw3dUBJnD2riNYoeFYvEozM1kra8eYwJ0kwvY6S
	 izXWS4IHcTzfTJezbKMaEP1rKtIQcY7Fw7gfqueJartUXnKl1WekvEqMxgx2UI+d4H
	 S4do59JDGnBqw6s24Tni5lSS9k28WUkTc3FzYFb6Z6ZTLGG13eVcxVjTHcWQ1EZZbA
	 90WAthZR6vR6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94721C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561779357.12161.12780993738500173594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe80fedd4821efef6bf2212bf1794496b74701330a7c65d8cbf51b1e31947938
Date: Fri, 25 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745617793
