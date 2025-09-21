Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F921A840A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758473394; cv=none; b=qWDuUanpyK8yfmE3oOaxHKKeIjoP9ZXW+faGERaUz+j4GiXpXusBsWpE8NaDtnuSw5LaZVLYfGdoDvN6WtoetjsVH3yHUSgt+1m33o2bbOIApq3oOK+I+9MT2o6UY+nNcqRV5s+COgDixDuqq0UYHPzsQgRGRnc24q1KYRHACfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758473394; c=relaxed/simple;
	bh=yZaLjMoua+6PtL4lO/GzeuxuRrMv6zAvWtjuLpAEAQk=;
	h=To:Subject:From:Message-Id:Date; b=kMA8oO+V0mHC53FVlGstsMKzr9+HBbb9XDEnsZeKkrwumWQwu+nzxhXKIkMPGW7VfKs81KAwLgX5ryPN3yLM+2DQ3pibgvfzohlZqjSB0V6I1cbvDtSZflwX9BK5XQZRnJjtlf1FEDKM7p6oeJStoZxJI8vFrs1weMu169/6yDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVnAyirr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVnAyirr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7473C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758473393;
	bh=yZaLjMoua+6PtL4lO/GzeuxuRrMv6zAvWtjuLpAEAQk=;
	h=To:Subject:From:Date:From;
	b=mVnAyirrN/CMsbfdocGNsSfholLeOEjjuvdcM10MECNWwUdKLsVTZ26agXAF4tQp4
	 Xz/lKiC5K+aHO62B596twhBGU8PkAX7gialRwWkJZg7MS0G7IBBfrL/l989WOt14Mn
	 byz64suIJTyPHR6YhYD635b0iTv0QjKznH7bu8yOhTuqFmZDVsHnozitOLjgCfkSPB
	 nA4n7ZDbW2Kf+kCZ9m8pf2JiEFs4CPqVkMJ8o6m3Bmp3Ruz9a5cIUP0+CTrAOgFeqS
	 6NiwjIaNBsLeORRr/yWJVUlxyLGSl3p0R4J2mm6QYWtIbZvRqXCAeHGgGnm33Mw1+k
	 dQ4834GPdH3TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8BCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847339357.3179.198550648688159207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9940dd7fb33b4c06a6b78966d27427a11964326638ea4649818d30dc8beee4a
Date: Sun, 21 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758473393
