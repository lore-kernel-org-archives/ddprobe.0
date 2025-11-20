Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B40C1A0BF3
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763667714; cv=none; b=SH2zLplqpqjLbOrkyXUgcWhS86j0/Y2YTfhPqRayxMFQ0glP0GZfMChItffrQRm/YIC14IOdttk6L3mFrdjBuRe8nq7TYXnpA5VWqcV9hxNSSQTXOG/98Elhp8O+QTS5RY+tFtLKLatBcyQgOcQeC98Uii0Uoqn9ZvLWd1GOHbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763667714; c=relaxed/simple;
	bh=rWmyx9akfRvyobCt5+8XQL1cXz1SuBAGJ8853c1Vr6A=;
	h=To:Subject:From:Message-Id:Date; b=oKC2Lzr9IXBSOkQ3NzBL6OMvBKRJBARYKOORHJSToa8L/SsAnNcNvomL/wSariG1IswbDNE3Vgv4wdxLDk459sL19HbZuucdYSoUMJJVf7siqPSaG0Qys9rvg+tKZbjqOWlOCZMm66QV461U6oXIhgDB3/CO2tMpvKTirP3ja2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJPKp/vr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJPKp/vr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1A3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763667713;
	bh=rWmyx9akfRvyobCt5+8XQL1cXz1SuBAGJ8853c1Vr6A=;
	h=To:Subject:From:Date:From;
	b=qJPKp/vrR5V5/Jpi22+lgWG04SM2ZJZM1hN9qQczPXgyAYYShn4loCgHj0s3uMNyO
	 NTdCPPoehkxXK0unWcVedgHakis0f0OzIIR5kognON0RxPbOgR5a6uXRbPHjsdlUW2
	 Cm9SAn0oRMsuUFRIhbCfQbS2uCjeIQ1tY6e+qkGXcz9Hsl6xMv2TqKLcA/wxP0LxnI
	 PYbfFB0/ArW8O7vyDHfBOy8cWnOGZ1GRfuzq6k1gNPxXXVgzzTm9gdVsjHfFbkdiKd
	 GZWNr+ATgAehEuVq1b5swJJ55A+Gl+vOIeRyBfwm94j2DF938fIyGfOgNke8tSDPSF
	 CFMEc0HRlBFDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A109CFA443
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366771359.12149.7617355124156194223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 080cd22be5d33f6909518a7a23424798d02428b90ac6964f34c567494a1a5b96
Date: Thu, 20 Nov 2025 19:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763667713
