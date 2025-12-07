Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151E22356BA
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765091574; cv=none; b=SH6hiQWsoW1opsPefpGZts7WIpaQCsA3tTVlnChHQGvNBJn4jLcH50cQiUe+Sdf3sDz7qKEyHYED0+SDsiWRQfw16Ldbwd0UOuSZYb9VjaVVLfstg3viPP/nRce+wlfv97L0M5Rc8h6RaY1tCG76DBET0Ga/US3bIJa6sbuMgLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765091574; c=relaxed/simple;
	bh=yeFz40tR00K4aMsZop/ztoSAqSiV21noSSuORUJyBME=;
	h=To:Subject:From:Message-Id:Date; b=P23Ifjju8Hd1iHVAyHoHMNpLsnMUB5K02ujJEwelWlkacZYAj9FhwNOfe0dyzV4ZqPXHoV5d8/vMsEBOl2LsvgFe/myCSGUiNaZlH5EIA5Ks8yAAC6WheBW82RAOCVd6VQh9Ybelo+abvNkr6hJRlxpzkCmVPV/BYd9sWfQAvjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZE3zPFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZE3zPFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FFEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765091573;
	bh=yeFz40tR00K4aMsZop/ztoSAqSiV21noSSuORUJyBME=;
	h=To:Subject:From:Date:From;
	b=uZE3zPFoi7+ZpdBCGyZ3AkhBwg8v3PRBWRYZcApD2Gi3PERPqRwVTBMO8Fjmm6NAK
	 +j4kWYxo8iUrFfhrtNW7tbGZQWm1FQK/s2n61XMzcTUSBF5MPT2yyPDnu/5iPaUGxM
	 5RaQrLTAqH/n83gBfMxMhFy3prLvF9Q2g0c2O2pA2NS96xV1fBSSGsNN26L10qOGtk
	 K7C7LeOFs1nX1f0lw1LCncSbbCFyYdwTezn27FeiH7jxge8wlha/slKkwWFXHbmHVK
	 ToBx7itsFvjoPFwbrwLmbaCQZLXGXWA3qfpYkaMnJ2Rzo9dkH7yXDF0JF4MGdNmHUx
	 1ie2lFE0RA/CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9678BD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509157359.16236.16173992437501659814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2819e7ce3430ff5fd53261f27199c40959a68975e19e810b40f33824e231c4
Date: Sun, 07 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765091573
