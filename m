Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FADD1B3742
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722529554; cv=none; b=MvRi4+HgufGwElzseHyrmMXUF2oYXWtOQRDY3Dev5SA9mukWW89wMOFLUhlnh6DMygaqSbcGqwYrQ8Z/j/NtEyjYZWGyjpOiyb+cAU7+pq0MrlMW26xfpS/IfNZTsG8VOmefdV2UdNAPsWBlI2DEcveMM99vYov8Kd9EVN/gmRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722529554; c=relaxed/simple;
	bh=uncjGr1JGFwSljoRNV63FDnyYFFee8AOmx4EtFqz9PA=;
	h=To:Subject:From:Message-Id:Date; b=jNI520B8cnzud8J0lZURk6JhI5aAgRELrxpPViaiQWu6RTb/ZDqNifyk46VZ3HStVFq3GWrV0unmV3TMTLhzedm7tpsz4ybVwPbOo8TQ2R9gsU1xDyn1sMhdhs9CN2rkecI7y3Gu3QGWBvObEO89ucWqk2aw2n93VlM5ifky7Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr67WJzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr67WJzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D14C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722529553;
	bh=uncjGr1JGFwSljoRNV63FDnyYFFee8AOmx4EtFqz9PA=;
	h=To:Subject:From:Date:From;
	b=Xr67WJzutVIdvKGXZ/B3ujrX26hwdbMfDvCZZSRMSgH7AeZQFOcbcFeFniyXFcZe3
	 nvvirubnm0LIM8cjE39IL8zlEegRnU5aZ4Ldc9Ts1WovvDTjZFm/RtSUjEz0YwI9Fy
	 2r0L4EAmiuOSS/SyWq5CGrtsg/176Htm4QUke/B9T1Xs7TqcEotuQxQIVKealXNscm
	 E7lXCe/7PmgjSDb6HGa8s7QSLl/4op19SjGdn2w4HU/yihY5xylRbqp5C9V7dbbowD
	 kfZwNMetUx6FNKDEVpcfkQQq7oTdHsQTVveqruDtmd1OKSuZ9JnL/pq7uEsrGx0z0r
	 i4n4b0KXrC4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B41C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172252955359.13108.15576062988152444051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91919f557d1bb9a3fcefde8d3576cd79bab3c855e8c890624a334e1f7e48f919
Date: Thu, 01 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722529553
