Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17882149E12
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707714497; cv=none; b=lAogMA9ByF+YgMieWg39aEw80cuy4DohoDqIUK/dkKSVzPjVMAGfmNH4Ren9azBwozB0z5neX840E7FdO22ZteRyOagRzY1Li12fJLHDwVDKU6hkClu7o9BzqFhWL4y56mswLCcrUMDY9pdGL92ujzzaGkl0Yb+2PN6X71cfuDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707714497; c=relaxed/simple;
	bh=vmn1ExnIqc3nsd0iFOr/TRA08Uz5uLYuGpYCjC6u02I=;
	h=To:Subject:From:Message-Id:Date; b=Avvg1RTJEug14qYw+3V7S2ON6timPvdYrBgJGfQ+xeWtvRn23AZL0zwfJ2THNFCoWntzJPct6GC3TXPomz6XB1f+9sNGs8KRoa8cDz8G7h2Cei/V8o94MCbV5APm5oLvBzSdM/Ty+e+ceOnKkJ3UZiFgSk3kcQUrPKGRFSu8sM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyliqMru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyliqMru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F1DC433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707714496;
	bh=vmn1ExnIqc3nsd0iFOr/TRA08Uz5uLYuGpYCjC6u02I=;
	h=To:Subject:From:Date:From;
	b=pyliqMruuXvc11wXbu+matcocDhI2Vumu5FKAGy7jVLJl7iYWomF1EFGH5kp2+8z9
	 un51YY+/Qeyysatxxk03jYFQUQmIUT5d29TrCi0MoRq5eB/esC7suqBfGWyctaQvM4
	 qe6mbfw/dhLtLao6prj1brKeRzEchRgc3Ap72sY10E2kQB9tMnGrw1NRc8lRiP+HqH
	 wb9JwPd49Ivh0oiDqM/9QuJEh/2NkwQAyZRoOUM6pqXpN8390rVSPM914/Ziz8LzAS
	 NiADjvqn/Mvv2+8qk8oMFbCvThZv0QO96ygTtl9pNM7VAbibhvZ10Soey//keN42bf
	 BvPAxtI6FTLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64033C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170771449638.20668.14200571948528665528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d253c1bf14ae1b1e7ac25dfd8d8e6e1b659c4f7e410eb62812da1e6fe07cada
Date: Mon, 12 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707714496
