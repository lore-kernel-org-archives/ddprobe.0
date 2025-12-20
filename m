Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1059617C77
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766210034; cv=none; b=ZbNAUmBT8dVn1VYlls73Uz2ayMZxa0Xm8Q+69TfxqaTqeFD/Xavg+23jiASxK1G3SIIsSRY9xG2QSc35vixDclxFWzNe2NZzyc6NuKCYsOt/cQLoHzO3cAdb1pdytQY863+z3l9Zsb6IrA98bluI2hIB2BkrCxSe4wT993XjPV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766210034; c=relaxed/simple;
	bh=YWcXiMJ4RBQYzSKij1O09sH9DRvlg7ZmHcYES3ndhM8=;
	h=To:Subject:From:Message-Id:Date; b=JNjANU90pgh15PxNXJLRyhJkxbLcp21UfAOzHS/+/8gXYtEBhlkjGkEqmdj4t4e28rOFz6ZxQQammvnIob7spDS0T+MeAzRMXsVg+mgUW40NNVQi5eMs8cJTD2j0AbtKC+oNlGVAVZJ+H0c2ZNl2KFQSeZxeMy7bbojrBw11VWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ek/QFxAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ek/QFxAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F087C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766210033;
	bh=YWcXiMJ4RBQYzSKij1O09sH9DRvlg7ZmHcYES3ndhM8=;
	h=To:Subject:From:Date:From;
	b=Ek/QFxAOcRgzsi++4iBKobZkPZGJFPUr25A3vuqMWPHJmfljXi/MOFIAFKWw2KUa+
	 vSpo44BNhsRkblw2xeDCmABrlWd7u1u10PoydAlz5rq1WKXwynlqugDHaHQ8I8Gi/W
	 drsqS1bZaIspX6Zezjo1J1u1XgiVY36Umd3zVL25fSOJoLxAL9bX9pLJT8KsF+pYay
	 I69kTcF08puMPDaLcfE1y/8hDqt0WS74o+RgOJ8p9CSsE+KWGE+/Dww75yxzY2tWU2
	 WvwuGzU+SIIX98kuvRZZ01j7VrTD4tNqfd6HXKqqbn24FW2E2YlujFT41nkf+Waho2
	 Y+MtNlCYoIcWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA99D637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621003357.19261.1477693906095231494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591e09884f7365e2bc202e405a1b950f879d4e8ee9489891990d1326ff6ee0c0
Date: Sat, 20 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766210033
