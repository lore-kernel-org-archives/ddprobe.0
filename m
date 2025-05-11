Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6732907
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746967194; cv=none; b=U76k3Helheaf0TDWMuH8ni7qAWq7EYWVfQcYO/W5fZqUtvdnBEUTeNvpNlyk+Gz6Lh+nh+cRFRiMF192VaDf6BjOmo87vuEROv6cOgPItBem/Hcsnxm4F/tHNDbTQhS5kXEbo753HKpc22FjzsEtSXHTSnTkZn4J0Sd2xlF9788=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746967194; c=relaxed/simple;
	bh=k7ewyzfX8uo1CAc9/jqsk3rgZ+fwpkoKVIxvpeAuoR0=;
	h=To:Subject:From:Message-Id:Date; b=NzeQYcIn/CGGcFkd2F1JsXZlRwqM+whhroympi69vnW1N44yGumDZVTmWGZqh8mOHi1whwuW6X+OIboola1B1J0z+fwuUbSjWsOXwUu/cvGlONY2zqro9v1OGrHQN+8Zx6BRg9/TEcbkhTmoo9q2hQ6j6cUi5yPDEz65cfttgto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OplFqC3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OplFqC3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D4C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746967193;
	bh=k7ewyzfX8uo1CAc9/jqsk3rgZ+fwpkoKVIxvpeAuoR0=;
	h=To:Subject:From:Date:From;
	b=OplFqC3QMe3+JtAir2c6pDSjW4iZy/WniMu6MCxMxL38s+1ASKKUC3nKE8liVOLwf
	 kdgdj9uUuuJxF9ix4JpPo7o7CsuBI6qHX3B3E/iOdVD4VgWV6i7yPm5aNVj2xJ3OGh
	 3xAr/xPU06IsO81NTqWvwOZD9BR2/S3VXxk010/RoFpmaJ1eQ47xRS7z7nZXtj/HsZ
	 GfujFfrkm9u5QD8SzmOogKcBKLlXePSCh1pqib6wliaI4UsbbcqbxvJHiOWT7quQCp
	 sEyMxSJRwPHEjuCjkKSN54mNdnjgtQ4FsPmZ3PoFfjicfPW5A+PKuEUCHnaQgLnEUZ
	 FznxoELqlhKBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0DC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696719357.1534.17425784056418353240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8e94349df05166a6bf207261998d39999f35fcfe2152824d589c48f56af399
Date: Sun, 11 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746967193
