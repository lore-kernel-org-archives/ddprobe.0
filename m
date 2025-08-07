Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666D4146A72
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754583594; cv=none; b=Y14NnGaLXVwbeHusP/mr2qlowbgvpYZN/EP0EZdPQgOGevKE2LwSqQqG1sw3ZjT4kOyPRAwNS5xAHyrgflm1oIZKrJTDjTGtD4TCHd6Fypv7MPHKoM2Asy51U5i6qgaraJnbEGuPUCOt96JAgDOiUpg7cEtMMVbqhSHv/cPCoxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754583594; c=relaxed/simple;
	bh=PLaJQB6YYH3o3Q+kR9CSnm98rCddWXEp0u/rWTsmkHY=;
	h=To:Subject:From:Message-Id:Date; b=hLWBdObmeU3M8RcWrHdy0c3agJi5UuXX4Rvq9zj/nFIkzkmhLV7U+Pl7il+pRLNwlwFRK0H+m+2Usv5nQWllLWJ7wK6xbKDVNKlPDVyzte7WSVg0mY3fZH7KaTZt4V0VrRATjvBHv0ON5sKHPKhGQosFM0B+RNAF4u/gDSZlZKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEdBpPtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEdBpPtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA40EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754583593;
	bh=PLaJQB6YYH3o3Q+kR9CSnm98rCddWXEp0u/rWTsmkHY=;
	h=To:Subject:From:Date:From;
	b=JEdBpPtwWuiaS6EBqGjW5CkcMYNqOnZUL5r08yj9P4fxtqJ7hvoYoyyvk+MjZRZk8
	 hLKhpivxVIiUXzxVP2+JpMEQnFWkT0UEHHPq44HydtmQgqUOYLdwzJ4rVHD22BWuUQ
	 02V2sRzuMsqYRp6/hufTYJlVQKjzWgCbWo0EHkwtPAg0Wt8lubU/RuBylbYl1nyrQ5
	 eukjmqQxfIQTsMuqe9au5ZbpCq4FlgbsuOGy5hcObMkvKaqc4bJiBzpy5Z3r2qpoax
	 LOgCscNhkkUy4GIsRZ+1Tt9LCR+ZyjzbYyc9GEnTFwEYpLj+y1ISBBQZZaxK2f0HDQ
	 uEyD2dZXeJzQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6412C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458359373.11937.5875420006597047784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0deb9a4c200ec64d95e3922180ab5f8e9e52328a449105ba9286f43ee77e53
Date: Thu, 07 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754583593
