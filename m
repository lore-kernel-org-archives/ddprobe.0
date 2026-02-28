Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A03878F59
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772280894; cv=none; b=tOA9u8B72NUfUdUha0gmAxuGSaZkDg3jWKmhIbn0aWQVDlRuyrdhVEI89ByKl5hNFaVaKCoC/gWksZ3YN8mJuL1WI8pdyOqY8toG6b9hP0sPb8iUdTIVCYJeTu3XggkkYrK07EST+9sKGF/w9GvwiE3UmLqIqmwBIPnm4hI39Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772280894; c=relaxed/simple;
	bh=bmib3nh38ZH9AGVvzVrBw3jZ490zx1i6J+iEFbBzNs0=;
	h=To:Subject:From:Message-Id:Date; b=H5iQmBFWJWZrUpjiS9JmU8/zA2wLjO1hebxj82wdYDxkX2YdenYAgMICsdLC+63Ftl3TCi4C3g6cqJTMWai/l4jvQXxnYNNhAwQ0tOQbMjNKcdkPaHaE9/NrbFwV3U5VpriZjo07Ok/r4f3CcNXnrP4dvza24cnqJo8/b27VBu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfkMVals; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfkMVals"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A9C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772280893;
	bh=bmib3nh38ZH9AGVvzVrBw3jZ490zx1i6J+iEFbBzNs0=;
	h=To:Subject:From:Date:From;
	b=nfkMValsXwf5rwHkdM8xRt0YTdo/UGw0IUEteiaMHPeWhWTF6Nq9UPz+fAFOu9Q3t
	 E0AnIfAyGMEmYJY94cokqLxDU2RfqkDtVjRQV0xWZhN476ptPF5BzPSuOVpzSX9BmP
	 9jDEgJHuEAgBeuDuj5ZbOyck9I9lpUsPMjKRQbhWloL56iyxHw2I0vS2lwp0KQm8oh
	 6YGV1Oxc+g37hwq4ZMJC2KA/6Oxo0gimo0MlOgrFGCGJTIHtir22DowCR3TfXrc89L
	 eZq7z3x/X0jwQugPIyBh67Gvc5N89HCFX3uV1xWvSRVHlyLrP4epKNF9olFT6M0Qyp
	 jjsh+HDAwPuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF94FEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228089358.983.1575318240064531202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63e6b03621d7354cb481d55a33503e6677a6c8916b4e46cfc2a86b2fef31cef
Date: Sat, 28 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772280893
