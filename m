Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0134F2581
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098634; cv=none; b=gsfDMd+3/+lCJ7Ph6IQgUuIDLkdJkoDEnxYCudh8r0y12+Hv1pLMcTGBChAXoUKXnuWsevjhWurvI7zOow66w3SoY+x4bbZMwFoAfBscA5/pVnqbyPC81KOYedO0+pkaA9s8D8UHv7p74+qNScpPYwwMB2UlV4tkTIhdwcoF8rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098634; c=relaxed/simple;
	bh=61z/YbTQxFI1GJowIk959+FqMeyMRSt+rFETL2E2eLw=;
	h=To:Subject:From:Message-Id:Date; b=mLzzajx3lce5O/UaGGPSCCWO0EFahK7p1LCgLcp6B2CKC16SW4thNeYW8P70CovSPxaEXxx5pK9/1nx4NmrF7GkOSW/AD/wJSQdjroGPbCpnxs/S7sCaxPZgROQK5FRYjZtIgtKZKJDVsMsORy+OlWTNFlZ8m0wvE1DM6CIJS0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3Sr6c6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3Sr6c6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D591CC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770098633;
	bh=61z/YbTQxFI1GJowIk959+FqMeyMRSt+rFETL2E2eLw=;
	h=To:Subject:From:Date:From;
	b=H3Sr6c6kl8VGA0xq0LISsX6QIkm8+9X9sZx3MfYU6lUhRloMynJHoxpkSJs6LOoLB
	 PeZJyFT63BUQaBzvtV1504QbLBRThbwQM53gQnj6bNh+LfKQdrtIwMG49lwnWT+wYu
	 cCPg/PAYPV6GTvdPWScGxlZV8RzT3jJbyqQ8U+uF3WQaajm4J3eGzmjPMAI3w4gnZQ
	 actNPZYl5h8y5fWKT6i8hFozxvMzS6xh0bMR5xU+W2aeFgB8E2G2aYRm7BXRWlYjIZ
	 6c2CBAYpLQaiiCfL8LwZWI66akpdcKSU4bi7N/jAU4ja4CqikUtW+jZEt/pJXpFOqP
	 +vmE7vs1mU1pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32E6E83057
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009863372.14403.14002877422102619512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2ae06aa747f37a10a264bbab3cf3cabc29c42ce930e57e304a195008999dd1
Date: Tue, 03 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770098633
