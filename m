Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5689D298CA5
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787101234; cv=none; b=D1hooIUmscekLt+S9Dyrw0ABUm/Xa/T8JFmfTsQP55M3hRCiQ5FcP7SogtJtLrfdhBwk90sbwZtDKoRj8G4UcPrq5cjM/nPHVmv79V7hMsLGVHtSmboH0ML6z1Kdl0dpST4JufddrJcjGNC93cF/U1//gzv7WPvegcv1W3Y+/+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787101234; c=relaxed/simple;
	bh=4FcdR1ZYVFITu62xy/fPxanJEV/gw9LigABFdWeWm7Y=;
	h=To:Subject:From:Message-Id:Date; b=IQnEKDtKXFFGVmAolJgJ+Ut7RJriSDLWX2KOfFrmlfuO4/CPXuqbWUWulWJtYBxjyJm6UmsAYHihwycrsRWcKv5ufQypEkbJfS+GpL/a+JwRZ0+LZWCtb7kUhYlohYyTQxgaoVLGI5nD3PlH4teFI3rN9mUYqk6O4zonf1gAkRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwhpbLfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwhpbLfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AEDC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787101233;
	bh=4FcdR1ZYVFITu62xy/fPxanJEV/gw9LigABFdWeWm7Y=;
	h=To:Subject:From:Date:From;
	b=fwhpbLfjGH12sujZgk0HRevw8BHCfssg7qADKM7LyRzXA4EgkTFCdSSJr50hgVQVQ
	 hnZHtFQO+uLiErUk/Lp+3V5sxNmmnRLyViq2pFxsGoEIAtEPjj1VeDq/Te+n8dot0T
	 XgUvU+WVD8htEIzIzbKba3U6tjDFOJHcWDQe/lQ3FWHCrbj8ERcchMO3tBPtx09iwD
	 hwR59efFE2AODS1sqxvodhFpk0AeWDgzVHsS0g5pahl2B/70xHuhV/UZIbx1am+gXO
	 Oplqm8Jij1vnd62zagjRpH5FaW82CYvkXHMS7p7TGD3AiRG0sXMF2gq652FnnQ6FFr
	 MT04Yzv+zb7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB75C5DF7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710123369.20363.10079219384798317573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84c671869696bd2ad31204f956b51f36a0ac18607054f9960d68052482028f1
Date: Wed, 19 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787101233
