Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE053596E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753626594; cv=none; b=Su0ZNGqcEvWY/E+txwCwqyO/ns/aA3qJ7NBEF3z5d/xOYOGgyXtOd2EwdoGGwmfXwX5Kr9G9gU1GB17NzHlcdRMrR4IhkPDMbeAyrorBHIFIg6pck1Yu10JpPBtq5gPMXjSoz+7MgASEW5A//goF18gansErWgE3a5LAioYiIVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753626594; c=relaxed/simple;
	bh=CIrsM0e19UixkV9MJDnUNd9Wn7KD12PtUMrD6gLOME8=;
	h=To:Subject:From:Message-Id:Date; b=txprjuiTZ4QKQ7qHB7akekbqHPlqEMwNNf4wA7Tppw5F/+Q06ShGsoSCLXxyXXfbcgAkWBnrJZkJTzPIC45d2rlvRKY5uJ+FZLosjGau+X0DjyPHboXC7e64m0xE1jAILIXihaEtAb3S0ebIIU4ojC7KsV1cHrIhS0RXphtVMoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUiaqwP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUiaqwP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E13C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753626593;
	bh=CIrsM0e19UixkV9MJDnUNd9Wn7KD12PtUMrD6gLOME8=;
	h=To:Subject:From:Date:From;
	b=qUiaqwP8FK0gmPHiKKXIPIIdUGR9g9Gm7h5o+xZswB5exF5RfuG5BqbxQc6/wBkW5
	 xVclD+OnYrQtp/0kSc79hfNCyIpYWdbpLzAk7/GiXGJ6ebguuVy0GWIOxRHo+0FtI3
	 DYybiadwrBNVQH0N3HKQ7bbWnpnQNy8ab5ZuYbv+fCz3a9Dhj9zArm0qoJs78qlJWf
	 k+Suc+ZhhxHnKU+WctX4ooL6AD4uA/tUyk+TX9P6k6tBR/tSv4S6oThHyW3+27N5ZY
	 93CNk8VipPpQw3b7hJVTcTqlGQlpIMDaqdKKKuvvF2fOAQnRTI4fDZ9d6aOpsAEYd6
	 FvliwNVW+bm8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD3C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362659357.13034.17131824611772829475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf3812a7934104cb7e6f9e692e9a76c57785e87587d5df20b785734f8e83f90
Date: Sun, 27 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753626593
