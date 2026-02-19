Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D943D35977
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771462493; cv=none; b=l3Mx7xfr0XY/agzqtmH7pi2r8gXYcwSIvZ4RCylBMxeXLhDoAM22pNjE8HeRBcGu9JRmkwhglwhEp3BB4c6eS31g8DXWRxwbmfN/edR2ZxHe7IvZberGAgQpEAvhmHbze441t4w1ldAkkdxR/uhzVrxbyRrT8jO8hL6v78ZquX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771462493; c=relaxed/simple;
	bh=NgRYIh1RCjNL1W3o7+isz7zVqHtJELoanxGC4swTTvo=;
	h=To:Subject:From:Message-Id:Date; b=G13C38o3QIciJLQ0oiTYj2fICBab1Y/B8bp2e45qMKum7nRa2VHkICFQBu3V7M5HOvCIlZvjTmV8kyYtoqS/cjJ9e7GHDMJq3o/SNoMDxbeeu0vZPhlq0DOeV9Ql05nrghldgEV1JnGTTs302VVwn3AdZcJcYwMHY0EU7iRLyr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBIjJteG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBIjJteG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B917EC19422
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771462493;
	bh=NgRYIh1RCjNL1W3o7+isz7zVqHtJELoanxGC4swTTvo=;
	h=To:Subject:From:Date:From;
	b=TBIjJteG0vInOtGn9m85ZOWf2tAaiv9Zy/apIiPklcH2Yp1A2JmZ1g1FJE5eDSCYk
	 jKOm8dOAvQFXViDLz9r5zuQ2dM7T/P4XdZbPYwFHJy2CZoKkyPPJ77Bp5JczXFg2bm
	 i/TBEowd9LB7RN6/ZmfoDOrCp2pzEJK75KmPyygUMFndCCthXODckv9yXTn9eX2vYO
	 1JPWXXqg1+pko7A4pGO8vQ/j67BSKl1VBrC00LrF8seNGniX+vQdRv8H3BJaaiWr4J
	 QFIljFezXORqy0Bp9giGcvChlTZ42N/1+vk3ds4t9G0GrWWswa6sIzhB3Vwi89hc5s
	 POwzm94EURRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3247E9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146249362.16161.9192758683964096341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3814ea342947cd8cbb2b686aa7d41cdf4b3b892b3e5766e26f13309ad797fd
Date: Thu, 19 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771462493
