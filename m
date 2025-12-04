Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C425A59
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764807174; cv=none; b=CCJRYlsB92fPMwAIWdrnMn1RXPdHdhV62WOk1TOLl8X4SCuIFP33J8w1+UUHkFai47Xm2RaMzjwufemLLaXWHY3IECNy/+jHfr/iDE6c0hPi/wmmZAyBDp8MtsFkKNW/mvEC1vRDER5ZnO3y1xOTYkqqU5SSUeHsx7RgmN5SxLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764807174; c=relaxed/simple;
	bh=g28y0yW4ClxQB0u3RZrysWvTYLRxApZ0TVZiXDB+FVs=;
	h=To:Subject:From:Message-Id:Date; b=oNecnFQaY8G2NxgQEQzVFzzgiUGs6491I9OAhvXLcMVKrFv6gym0AlojBWicHSATq9WgsALl7/Zx1sWG2rBAB4JdA3NYRbeY04ylB8UYy7xnjE6K1mFF/NIne02hDw6bRDtP7GqzEnd+7tpPKhiDFAQy9hRMmhFTJg0TyvUq+eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYAE8E0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYAE8E0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E69C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764807173;
	bh=g28y0yW4ClxQB0u3RZrysWvTYLRxApZ0TVZiXDB+FVs=;
	h=To:Subject:From:Date:From;
	b=gYAE8E0caz5fSnaMAMgvZbF0n7Yafb0BsVlKtwuJ1lVQqcGUXpgw+eU4yKei/MIIV
	 ZtVD9E24xjVioemfmopipeL7f4wmpfCvK4/7giSEFLALW4mFR9jWburmCZatScbHAW
	 2oZ3pcK/FdJGpM5obVS5/jg7kiRnBdUYN5enUnuPe2sGShScuSC3h2jUNsEX+xxgxV
	 ntlAs842NOyqq6Ya5ncQIiM6ijCfgles6NbZY/0wNdTnoowvEN+D0q025CP0ef/dy5
	 x5D2onIjlCBGO1+ofEQDmLqt9FEeWfnYpbCoqFRDUbuJRyr24f5nCuecobKePcqwrH
	 voNT9RRlWW8Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418CD1CDAE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480717358.12357.15270779412767504485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a11542d52a8ed7c2db6d531af0f8406c367a7fe7e5a624c7d91778d3af3870
Date: Thu, 04 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764807173
