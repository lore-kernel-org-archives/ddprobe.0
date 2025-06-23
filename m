Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F0323906A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750672194; cv=none; b=mUGMQm2RaRqQDzPLmTHylcR8ifV80Dlhj/30ZNLFYIjdAJ6ibFJoCPAeGT/afhjQ7uhiYkltXUWn/7hkM7pLW1pRsm71VQkbC2gY2Cw9mV/6+1eVMupjfWLyo/HDiAplQI3/i1DDwlKeiPMhztWcQRoA8UorwShR0SlfUoJxlXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750672194; c=relaxed/simple;
	bh=lgcFr1UYEBucg1Y3hbLsjFong8rJn05kEQ1F4z9+DAA=;
	h=To:Subject:From:Message-Id:Date; b=NFLZ1OwO991ADSWv70U6t7xym9jARtPe5bFQF7jo6RgwDt665a/JFrP6fVUHtRv/j8+uKAXvmYDaAf0sGuOb+kWPyWRSTHVCkVgVujQB6SUs/a4u2znPuiUe8eN6ly3kB99Gu2PyD+iV0Mzbzxd7RjjGloVfw0Lc9mU505qu9OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpcXU0+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpcXU0+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F902C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750672193;
	bh=lgcFr1UYEBucg1Y3hbLsjFong8rJn05kEQ1F4z9+DAA=;
	h=To:Subject:From:Date:From;
	b=mpcXU0+c7XcR6UmebITU7XJ64DGO9pSDKbeVUoluwg5n6Eb+nsUb5QJb/IPpSvRLG
	 giod4GHyewWExHR/npLcJjUhS+l6/RZt/QP+fy9FxWvtLbucAPppLuPmaxREPmTtA0
	 XsCyKLfzTA4VCr2hdyJglRkvMvtkREeQ9ahhurLSXwr4/8fSTyHIzu/ATbOmRhn/EG
	 Zj1HG7BT/kv0CUn+jANF8cFQpj73GGGPeKoxfMn4AUih7jyCDZpdIMn6ZKSfvI9sS2
	 Uy6T+dkCYw09znrvnbHUi+2Zuwr2Q5HlUIm+lF+DHMjUHYkdIHV0auGAKM6Fkopm6+
	 LocheixLS4ZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED2C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067219358.5245.12360447847727589134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e4d372e4fe4bf18b6420869db261744ad9127453c31d41ef1080ab865e7555
Date: Mon, 23 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750672193
