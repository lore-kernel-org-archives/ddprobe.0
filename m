Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AF32C11F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769580834; cv=none; b=cDHQzzr3/p8EaGwgvhSOs4W9CgjF02JcfpJ8CYPmrC7BUTnWTG7DT1qVgZxNLwUjs0vrhE6TNOSk24FInjPPCpmQDsIMm1shdnk+Kr4YRivjiZJYBJYP9YWom6R27lasPSXp7WjIMnepdhqtvLbxaivSvxNQHqRVmxU8Ucvd7iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769580834; c=relaxed/simple;
	bh=nTiOH5lSWE/yYCTYZiRJscf8ijr2fushBL5OEwGDKyQ=;
	h=To:Subject:From:Message-Id:Date; b=ucTR1Su2PtSjXFUGO0mCtq9RqghMCYBImB4ai8fSy20v1EqB2TLpRySJY9beAjyA/n4lJVuTvAUfYhPmtAJUr8R5nWT6nZx6Dmu67zmN5WsrLzVhd9MvxktomLpixzkqcl+ipTRgBzBXMcYSQEkSXqhJU7Vq41w62PSiJBQlxew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjUx6Q9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjUx6Q9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59E7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769580833;
	bh=nTiOH5lSWE/yYCTYZiRJscf8ijr2fushBL5OEwGDKyQ=;
	h=To:Subject:From:Date:From;
	b=tjUx6Q9urCqpP9X+jDgWqR7Lut7gbR5rTYAXrjYKVH/QlAUphV14+hn6VlqlMKbsQ
	 B5YzYkzX14twMoN7SJbAQaQC99n+RJJowZJ9RXiEkDGeZUmSNxIYUTXeCL8UpBG77p
	 0Mo1NWGi3hJn0S4nLFhWwpB0QZG4ZVKKHlpJTJCkeOhXSRgv5PsQVsmGqVLAaBISB8
	 vuebIOPDV//OYR5BwxTNMyr0CAGXs5khKhVTMmOY4f6JBjosAoQfv0LLcD+P44717I
	 5f/8Y3hW6SWQE1YTjpeDL+Lo2/M2iY5Ur16A3MeMvMuEnDvFWGDE2Rn4IpLYvpAAFR
	 gwteMnuDLZrHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0235D3567F
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958083361.3815.16163448615793802522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45ec038c35d9fff149b892b2aa032a4743825f82e5443591694d565ecc436fa
Date: Wed, 28 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769580833
