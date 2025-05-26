Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7523D984
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748282394; cv=none; b=dtbaNVs2/dWzu7QCNhYW848SfjB9s8ymBaZqHTO9XrwjZolFc4wmlIsK3xojbgPMpS7QiHRimtPa/gQCniJ4pI0+DAkG20Rf4Rnk2FAm0ra/tfKG7zUlM4SOUbDjzp0jzWDYHWwwo00GEh1p9U/CPJYaiAzrjnQ5lnKeNFl+ywI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748282394; c=relaxed/simple;
	bh=0BFJQ1n+aq8R4uoXBiha8aGzQH2wBlw/TybCSIjAbLs=;
	h=To:Subject:From:Message-Id:Date; b=OpB6byxNCerYHoMPmRjZweqopoqFDsNnwhCQhOIAOdqJdGRjapMdDC1CtQC3/FsDdwe3MECgUU5pnHuKxTEfXABLbN5nDvggPIsctMywvylv7HYV2+SMTJftJEkxeWaPIJfrEe2t62VSSDfdhLD6SVZZ7hnDlv0sKThMWt1wvQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPzWUi/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPzWUi/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A051FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748282393;
	bh=0BFJQ1n+aq8R4uoXBiha8aGzQH2wBlw/TybCSIjAbLs=;
	h=To:Subject:From:Date:From;
	b=gPzWUi/twEW0udUpBdJbeWdD8o4WYAiHhIMlv/PtFn95hx6mVnUKeq0+g9bRw8YcC
	 KgCNkRX73SgLFSVlvyUInFmps/d5fjrBYDlBU+FeKQzjexglr9xx+86pB2m6bWz3ci
	 8gkOh4hH48WqXkD4xq8mqlwKc6H8r7p6IEA3GUdeMgmsh1T0c+/1SaiPXlhn429BBX
	 l2AE8J4B1dhFFAQak+UvP8U1p9h8wQAksZys+uitnTRkiiN3LeAae8Gjd8LHKsBX+X
	 TCMHtWky+1jB2hbVfavVUN6CwXpuov9uKlJTjaJI0HfhcnXohRNOWsJUY+yidPvpYS
	 BOkAMZSb0/17Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E219C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828239357.6880.12594131346456661920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8dd19c27547b45dc2a6474ceebf0650f23f910af9c2457107c11cb3356e6e53
Date: Mon, 26 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748282393
