Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2927415A87A
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727393754; cv=none; b=pnXLqSgBuNuHOk5yjMOHDvKKyKNS2Jo4uJbpzBQtoxJiZ9UNXfAa1ZM1BGWTYEYdsPFYFvtdsm/sTIgEmnL/oc8rcI4Q+uMpIwSZl+7Zqqc5lw8tYgLy6K1n4w+rISPFfRrFtwm2qEGnkTG+w2tkfpiHhMD5Jf6Pd4DnW58tAdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727393754; c=relaxed/simple;
	bh=zP2MoJZYApi8e1gkGnujUDHgqHIvRwrZiTxxa+RMcy4=;
	h=To:Subject:From:Message-Id:Date; b=EPCYNU8p+bf2CmpMzY7ZWtf+rRfp4ojtOTOK2Pp1LERSRvxd9/fDz36AKvKyZj0Sd4ka5MUpzHpy+qbib+9IMUsKN+YtI4RqsWpgcyitXBF5i0uZqSJiLhBBIvmfDXJMrIPo/7CGBzhIivDGS5Fzqi7cgJQv7wmAUL3kkGwc7X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFMG8S6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFMG8S6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6517C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727393753;
	bh=zP2MoJZYApi8e1gkGnujUDHgqHIvRwrZiTxxa+RMcy4=;
	h=To:Subject:From:Date:From;
	b=UFMG8S6a1XrJK9DV3CaDVZhuJsILKkctzFYswQ54NVmggEzX9A+kZi4kfm8GByYsR
	 Hn/H2dHl/god2HgWfXTpOJ1APAqoHWikp6O+z5m+STIkmgy0u7HWVsxRe4coZHM+Km
	 5ZwbBT84Z/XhfKrSNk6h5ar1fFWTztw1x9ED9VD5bSxi0L6IgSQCxJPnQG06JERMTM
	 606h1iBYBLgNig5y6YHxpd05V09ixYWLYYiXDQ+8ovbGlKqT+VPkHrMThwGAA5wvVs
	 yGDLbszUk7uOmF6LYzfKbjB98JGZjpTXWq4TVDrCQ7GEqr8q4ngBS+Rq1nRJ3zdvDy
	 Ia1vw8Suk3Q/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DFCEBF61
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739375360.12446.12097679269022734180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576799dff44ec314fb88c46af49d81c1c8b658521d1935effb80fcaa759bf1af
Date: Thu, 26 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727393753
