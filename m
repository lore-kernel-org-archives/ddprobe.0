Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8320379960
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784311114; cv=none; b=jf4/O3qikwN4j3/NCcfw0Cc6HN+fbplEGyZ9cCTvzhrQYSO4tsH5Nns78LmoIXwvwxgF8hTp9FA7RIvU5iFNNlVv+zudSGRmxljEZzNJm1MyYnUGH1kC3X9rUi2eDqWRw8PDGLYPCla/21qJ2zca1pYxo5eyP/OlxaZkd8SxBaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784311114; c=relaxed/simple;
	bh=E2GvxwSUGPvqZyygpIbQ2PIpen4Ksx9V5OLTGCjoA9Q=;
	h=To:Subject:From:Message-Id:Date; b=DPsmKeTqGn5s0328E4Nu64unMU1LJxh7dnFubJ7F4IcCMYw2OnGB0nzuOoQnh17K2fnIk2E2AcN05YGBHoC3Spc8hBe7g63ZhLET1ohy4XpZZNqay+yavtrTsVtOufyFD1Ifw3uRwzI7PVOaIOGNmrXqrm5UpsTg0SWZnuAqMfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8tqA17P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8tqA17P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E8D7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784311114;
	bh=E2GvxwSUGPvqZyygpIbQ2PIpen4Ksx9V5OLTGCjoA9Q=;
	h=To:Subject:From:Date:From;
	b=c8tqA17PYaLjDYExNaTdgE2kI0saLty940NO1aI8+wvXuZOYn2g6ssKK5eU/LXw38
	 BVwpDz9bP0Gh2PEHemjn4Jpbl0KQ8l3zmg9mpUB7EygzL1Y1FchtccXw2fYDKNsLxW
	 UVEGxKdE9HE9aQe/g3R98kuyP9HA8xfKQZVlbAKegi/oQnPt+mvDDd5pBNIiyKICbC
	 pS1bZqusLl5n6fm70mivZENGZEajEdrMs+nfSJkJJcgTqKWSxFZrz4bsUD/DAghZRP
	 aK7xHKFqnHQtX0bqv/aapUAbAtJ1f///wlZiQMJSoH/exP1CWMpXnu5nH9UPX2POQK
	 mn/ttncszKvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3558C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431111383.31711.5736469549675582369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f549bb89eb90b86f1426a2406e212b169ae5d89633cc037f21b290250fa373da
Date: Fri, 17 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784311113
