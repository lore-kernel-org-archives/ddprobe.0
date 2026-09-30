Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4BBC3EC83D
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790761834; cv=none; b=FxlhP+8AixhCvoIQy1RuC9jBkuUqSnpNOcZGdKEnO/ZDknANBkY15tIRphWbyTxpIBJ1XUXtRII2eCxD97pb+Au1PL5tiVTo+sNBspRF4BxwEqRDcAx0/Q8h8w2BVdyqvThfaZokDxBFfFmY5qm+px5XQT2m+J3zIumgmoh+XfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790761834; c=relaxed/simple;
	bh=70bWnU4NMMwFZRRK5phzn0vZQQzC//eYliHHF1Oljtc=;
	h=To:Subject:From:Message-Id:Date; b=HU4QwQfmod37f+ZMP8/oSvLVQAlamE++lWouUlHaur4OXbErR+w8Tq7vZpNuRbafzGeM1sFHHTBYODBPtQPyjp85Zbm+airp8TRQ9JVp2GeMr9sh7U82J/YcY3cZfqkMnVzC8t6l19IkuN2qnmrXTZW66UFv1dAP1wRRr89kdYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvVNd1nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvVNd1nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCFDC4AF14
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790761833;
	bh=70bWnU4NMMwFZRRK5phzn0vZQQzC//eYliHHF1Oljtc=;
	h=To:Subject:From:Date:From;
	b=AvVNd1nxAr7ajizmMFt4abl2WhZNwpG3NxK2yd+e8zbQ0HT7BrJddzIBsraWxLkwb
	 aq2uadpHWBgDmxeTfvXGwHVQbRKolyh8O6ZA3fFMG4ouc/E1epGe9cckeYRSzaTIfs
	 tZr+c5XttL2Hl8LjESGBTZ2VaD5rjgYoe+ZiymD+rVudyzOHydGg1vxVa4z7dnHMVb
	 bcxwR1bmWPkQq21U6UNOUtesWVe2IafuuBah6aH3MonD9z5IKGGrPFUvsMuW4Df0tS
	 qwk7pRXHwh4/KQLIbRYiXXAlRtw4/oCKa2dkyTc8Fru5zUfTolNhiWzgV/ChaBVt4p
	 gNWiMfb17SIgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE1CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076183368.17373.16808368580129790004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7060421ccf3c2f898235c54369b1ce0d0d8fb2debe979f8c920492a8983c0a76
Date: Wed, 30 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790761833
