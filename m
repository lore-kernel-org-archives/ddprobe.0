Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6D6239E63
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759132194; cv=none; b=DNv6TYsVWO6KFO2qA5D61IzJ0NpuOVz9mc9cb8Qhqxx2g1KK9mKmUWDhEDqIMvnUUisexD39Noo+yaHOcbXULsRsMzLdxdMIMxnRbskaMrlWCqLBBVzzV9rCUDvWGJnvLB1Um0C8BRZrUVpCJB+OnO+5eeojzeyRgEeQmIrXCMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759132194; c=relaxed/simple;
	bh=psPKJq/IEWkM2M1wSmdvDrxggbDLNM+ktDeZq4T2mxA=;
	h=To:Subject:From:Message-Id:Date; b=NZlv0zOfvFZ0wY4WKbbAiPKOXN19VMN9ubf6B6KZ99T+9t8sOHtUONDsAH4vjk6rCMPBAT9KWKKJSRhJYmAPak5ZVwrXD/1lN3B9odTK+MjTIXs5V3Bpjn+RITgQ1XuAEqpAkwYTD7udEAKMj9ZKnDT47BQc0eN6Jt0Ri1Z96ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkupOGKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkupOGKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF0C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759132193;
	bh=psPKJq/IEWkM2M1wSmdvDrxggbDLNM+ktDeZq4T2mxA=;
	h=To:Subject:From:Date:From;
	b=KkupOGKdgpkV139Kax+1TmDDMoyR72x0YF8M3tsGxCnlDzneblKYRY5zHnw/GkUVM
	 Jknp06VnXWm/Cbqj5Jh7P4yRh+DtgWgAH3o5x0fNrzKx2aokgNoVYs70HAmJwE0900
	 aDX+b799ee8ck15DFOxctduqV0zQvYbl5ww30igCy9WOt2qu4cicArPJdnUHIUbnxz
	 oROkUNnd82sFsOwQPzefJT18jd+hZeVF5MhCRPu3YWax/rBv6Q5enDQ9Aowuv0DV/Y
	 gsrIc6v04Hqaj6pcLucYf/cfmsQGEHy5pGaPqhpgTlYEsKZKbUKGIDXq6mJfq/KP2x
	 Rpf1Ceo/5Hq/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98263CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913219361.20410.16615835499250646554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92a45dbf2d4c2dc72948b37a55ff2b7ed4810b6cc42bfba716a8e8a61282c18
Date: Mon, 29 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759132193
