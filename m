Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21E1317143
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773345293; cv=none; b=tYEAg9md67VdYrZcZzsKQcBt5lFfGwjm/cqbswScf++buSQt3T9ELSa2uM980NmS1gqF+/F5lBBy9vX8mFKEpKpxCJgwuzNzwGGPD7/TnngS8Zwnv8lmOYqFfctg4NGNMnoBEpcZvD12o/mPg2GUFcd9yzHiqCBVDRlMvdyaVbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773345293; c=relaxed/simple;
	bh=1A3/SShgicaruxcYrti2tPZiTDmjNCSWyz2n0uNZ2po=;
	h=To:Subject:From:Message-Id:Date; b=Pp3i9KCap2ywf1mvH3K9CHTxFXdSzk97S023fUGEtWQE0BFFOJRqNmVPkBxopxsEgje6AelHAIYKRFSqz5s8+yQxQ0PmQuoRPrHO5QtVjhwnqivrcBLspeWokVk4NiWOtq/26qnrDP30meVK8ytozxI7LXLch27LVqV7xYde0fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOg2GJLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOg2GJLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B43C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773345293;
	bh=1A3/SShgicaruxcYrti2tPZiTDmjNCSWyz2n0uNZ2po=;
	h=To:Subject:From:Date:From;
	b=YOg2GJLFxCaOh/BqN8iOqaSoN62ecXvirfSEIdc5nsiqbvKPaITGRHTOkvKGPBOrM
	 y/kPV1zMu7lur6kbTuk5pbUjb4RRfKZbiDBGx49Ggq5hZ3r1mxSqx+x/jGWh5yOvUg
	 Op98INaZU5Et5DWZr2B8puema+macSXkUWVp0m294CuhADE7iNOaqKSjUrA0n2hbIc
	 xh223nHH2+mYaQBCFPaoSuPoQlhigTP749OFjCmW+rIm1ODxjB2gE3jSzPv9Sbeys6
	 AMcnG3d8XCxC/0m42ED7YcocKaG4j7KhOPiR3R2p5l5MtKuqX1MH3DRE87LeUY5P/Q
	 RT7RKCMTseEQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C00106ACE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334529360.12685.12198178400536116200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce88c816998da8cd4e5350f16eefbde1ad691a924dabcc4aa3f00997551cb682
Date: Thu, 12 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773345293
