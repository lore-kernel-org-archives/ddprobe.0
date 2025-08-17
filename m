Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB531D6188
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755433794; cv=none; b=A52hYPW/aulxtg1x27WvapwTJ1M6yado85Nw3rNh2mbVeIc8V9o2OcmxprhkY6eAR/ew+WxWw4QoiLxWuQJB03CN686I5pUvcPfCqZzOtfiIouUEP9PAXSCpPPwOhUOQVGf3oRVWdujH2bZvoRsLpm8AmswTgpUhbMf78TdHtAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755433794; c=relaxed/simple;
	bh=Sq6zWHSf6ZXsG3aoz7mOdUHJtAKmT1DuKYBq4ih2zZU=;
	h=To:Subject:From:Message-Id:Date; b=uieDj1tJeVZ9FbRr7qtswjtaTxGII7iF9Gq6vJceqUBRlytkrND5j2CjqPlmywBSIBUAd8MoafHHA20eDB5wtx1sE8wCyod7Wm/dbgk9ypi+bx6W9H0xH3O2QcXVA21pJmG2fbMAZaOgDxK321e3Z1APR/5zz7hh5giz20I8XEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzJocB3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzJocB3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F86C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755433793;
	bh=Sq6zWHSf6ZXsG3aoz7mOdUHJtAKmT1DuKYBq4ih2zZU=;
	h=To:Subject:From:Date:From;
	b=JzJocB3fNUOaoUE94v1+GVHhhx0ZqXGT/iFoVWcy8ReEec9sbLyfGik75Ue63rFe8
	 1DOMdxfblqmAVzTthCGl/j5KEnhXCLMGdCGVtxV3ogwFRHPi3i/MYLUEGgIC8Z9qUh
	 eIqI+Hs7S3DlhrJmVrqqhthOf+bZuppRQf8h++/7jlO7BLJCxfOqOnu4syFRhgZ/+l
	 BsLDjl8IY98Na9hFHC2F7JThwFkBWio+k2Z4oyu25jhZfl+Hwi99Aag/JKnWFwl2Ks
	 U7E0rjtR24YXACKSga+DBX/drfVugT86rFmQqNCrR9q+cdyXRp1U7Q7o2F11m+2Bog
	 +wX23fgntFIAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92532CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543379357.12948.4364167134020265125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08732a3a7f2b54a169cd6729e554f56c4791539ceb4faaa73b64fcb5bcf30b7c
Date: Sun, 17 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755433793
