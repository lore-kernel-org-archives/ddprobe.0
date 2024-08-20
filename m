Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2006D14B097
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724190954; cv=none; b=PjuP/RgQrr4w+o1frvePeZg5am2ruTr/jag5OKkGTBLj7/xEt9qVA1ywxQbITcnrybYIKE9r8MVolRJrJCHQfzaZTXP+C08kzTlq6oRAWubK+365alxBVHk8avEaa0tSmn0COqHjQ1c2MphO0tQAFTd1RPDcPSoOq7rMEF9ltiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724190954; c=relaxed/simple;
	bh=jKiwUZyBwk/d9WFXyzRtnm2zQvnhhCMh5qrHyXWDsqo=;
	h=To:Subject:From:Message-Id:Date; b=DiKvJQK7Ehqmd5jrCPwWWQkAGDEn/4eQEi/YJSzuxrADdkCxH/cf5CblCtPNtt0jyAXivY69CHlCbil79JCC8MqXpm5t2k+TKDd9/1McN7cEb28ervQBsM1ujjEYrMQWjRImhZ1Rn/XMWhVYvocY2JVI3yrJLa2bYLPlUrgfxrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeN2z82l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeN2z82l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBF4C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724190953;
	bh=jKiwUZyBwk/d9WFXyzRtnm2zQvnhhCMh5qrHyXWDsqo=;
	h=To:Subject:From:Date:From;
	b=ZeN2z82lB57z1u5bbz79ojeNKUq05VUr4CkwtZa4d4VllfuQG5XQtsO+C+eUfK4dD
	 1PSjhco/G9+0hAGf7eeS/zAJvzuCqyyGoOJaS5+wHup4i/B7oEJJp0GVqMuKk56aia
	 PqyEXGlTvu5e54WcI6ummTlOJo8u41XSzEknb1rr3d+4mEMkDwt0BJod06sEs6z6Bi
	 +vcaKZ6jwzUKInbkBCYKrUbEXwZAKm8L2TwW5iiGRuuEyCnlD1H0kGpEQGKsf+dnU2
	 951OYGLmTpJPF2mysZrgPJnZIDiB8DPN1bftfg2eZ0SEqfhNsz2Cm1FO22wAtSpw3J
	 hh/GuYET3QtpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8DDC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172419095362.31789.3072157489619566651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9b1cf085b8aae605f5b21796ba520ecacae1ccb99aa9b4db9ac4197cd26b2b
Date: Tue, 20 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724190953
