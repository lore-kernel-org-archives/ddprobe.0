Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B026D331233
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768365234; cv=none; b=CIFTFBhJOy6BlRZAluHKrnfvoi0rNfinrLbyGFFahDOP7C7QhIo2INBuWLzmzOhvJKL8+kMvWIOM8NHkLPLl/w0bAdn8Q8BFyUevvLR8PPDpa+i59c4+WCOIXO2BTePlqBSd8naccF/yIXcBJ1Tirchw3WCxdmrRZ6oO3PRDaoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768365234; c=relaxed/simple;
	bh=nIaZoV/HoBO7/uhiPNJ+NTz6cgWetk5dH5A+QUpeTFw=;
	h=To:Subject:From:Message-Id:Date; b=TpgKTy3hKiGtaULkFE9PZb4SnFwoZCMvL7+U+BJtvVYcrlfUHPKhnf8gzKzZRI8OGieTT5PPG2nMETWsdImg8uG7hQ9OLtguAUHXZTpvIl6m4Pg0/j4glA1JD/mcMR2A26PkYyNsKtRv43OfEZ6JiKuOyOsspDYiXIGxDT5QsoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rISJ2441; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rISJ2441"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A448DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768365233;
	bh=nIaZoV/HoBO7/uhiPNJ+NTz6cgWetk5dH5A+QUpeTFw=;
	h=To:Subject:From:Date:From;
	b=rISJ2441VW2JNGlCrauM5uX1nqO1StzDYTa6i8l31k+/PwAdT7ZDRCV+P5TD/GlvB
	 LvItr7yw4n6sV86pDUHxNd1vnF1F8XJKn1NPfUJtl99A4g2w4g9z2nvpNabblnvfN7
	 x2F23SteXdZjYLvrHmzWC1h7Du9UqOwZVE4BXC5jqH01kAs/tvvUd8jRAt0mO5Sobc
	 pQbrHLQg+keWf//n5chseVwd8r2aELSZ+SXWjHbPJ9euJ8MSFpGUzhK36O62SjaH3a
	 msztFkQwc2nQ4pLU3V8lWlfXikG6zrp8WlGUrv2PAL00bKSHHn6waA3XNE4iS2b18I
	 OQKzVimTPmKzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AECD31A02
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836523358.11832.7600966955621201051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f322023c57f4a12dbfa18c4934214fa2186144e6035014e8f0c769c6c0aa892
Date: Wed, 14 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768365233
