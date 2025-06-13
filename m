Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C52220E018
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749785994; cv=none; b=b31d0RkBbm3RpfZiCYRckF6BGxEstevWISO7ltX3k34VTABkeijfSl94zUnLbwRx5sxf4m+uZq4cQcnuzrJQNKTyfQg4KJ1pbxd1eAYpOzqpZXWNYO7H4IntccGixsB+NgqMRtAxdXjqW1MKjr2f8GxP7knDckKStL3Eq+7a9qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749785994; c=relaxed/simple;
	bh=hTJ18udtPLwH4mN6foOiQiv9w/iSRbYRsIpMxyie5Os=;
	h=To:Subject:From:Message-Id:Date; b=G5dqqJKUui2DVR6Jtzd92G43CN9N9SAZrTPfhmhTYvH8dzcp/POEgzbB4n0m+R0EfZBPATcjRXNUn8uKtKNq+wrCUmwx6Iq4gcJzFJHr3EBi+BWdsAyxnGCBLE4MzLnnanQO4I/DKZQpdVG44ibkkucYnzkWuZyu0d1dfE+myN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrLAUv3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrLAUv3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DD7C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749785993;
	bh=hTJ18udtPLwH4mN6foOiQiv9w/iSRbYRsIpMxyie5Os=;
	h=To:Subject:From:Date:From;
	b=KrLAUv3i3rH7JaElHjcojIEqcAzBibsO33gPQ6zVgIRstROESn3dNbGqKmJsTPvVP
	 rfymOzo0sEvOR9E0V0pj67JizubZlR8d/sELI92ss9ruTVJKLQW4qZUF44MP+Tnk1j
	 wOphgGuckFCzcYc4W11LOHJiGph74rLmd5c380O0ZvIuliNZOARzUpQfYBtCadotA5
	 sJC9KEcis5qhVVIPitAVopgTDw72qopSkdK0E2RDTNxLpC4P4gpgtBGyJqisqv7dEA
	 ryCZiO2UsJtEbVMYVIzMLcgjeCnOnPvbhqCHBxiJxjlsqjxUF/2aDg3ylXiH6tXVRP
	 /1PDxSwLl/o4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4AC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978599358.12700.7125811270120048371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2f9ef41d7391474f078fc0ce0b586fa2f73bc92ae44f38d6e5e31865e3676a
Date: Fri, 13 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749785993
