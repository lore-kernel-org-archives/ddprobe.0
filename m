Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4762126159E
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790128834; cv=none; b=ND8CUXBe9j4kZrdC4MhNmXMr54XhSGOwV1LGsFQmh8ErZmtf4emdwATQtLSINToE6gKA+eUKjRIhEogGofAzzXx8epWlBEKwK8EJ6i1zBRfB0cwo+mdJ4hCwxTZdDCU/+IHMv2kKOcSQmtlRm8jirpAXIIxJTl3qSxOf1hTFmb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790128834; c=relaxed/simple;
	bh=tfBjMZvW3TT5De4A1JVAtLqwOgo+VryfdSE5lCDvcS0=;
	h=To:Subject:From:Message-Id:Date; b=OHo1HQzEMmFqFCC0rFpPyOWGCB6GXRHjX9LCUnVHdwu5aioOlxhLUXDSJ46YQYq+ziOtDGN+Q4Dg5PrgtRFHDHPiT6BJPs8jzVp87g3SRvLMXrCOPgGdD+wxDRiIa00C0j12Jr8+FY+aumFQuiRYzNDr178zr9i02v5aZ90Q808=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMqN2oO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMqN2oO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA958C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790128833;
	bh=tfBjMZvW3TT5De4A1JVAtLqwOgo+VryfdSE5lCDvcS0=;
	h=To:Subject:From:Date:From;
	b=sMqN2oO0pJtNuPwE+NdzoaI/E808+3tUowZM7dy4yJLf1EDfjC58iDHxwrlhc7D7B
	 0t5sm9lCOZYrbvgDjew056pwd7w6GttuJSOIKS9bqwuZQCIOkNGLk3XjvH+Bns6kC+
	 +DAun3JirfqlNbqgcKVmBsLoxn6FyomePKcq/y04fK19LGZ0Y1pqVWhxkqjobwF/xa
	 CsMHdcUrRJbPQim/00OeAtD3SnBScckjn4Cmx8Q6GTFyisRloevBSrkviIzArx7eUO
	 0UVHw/BvNOdWCHcoeBRZjSktvmYU1D04dx3YUfDdIcok7/wjY2D0Oo0Y9EsdXKFnIa
	 tZgaoMBpDl+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2BAC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012883370.27260.17898221028840589203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ee1fd4e30589e486761661a9f7003212dfce4d00c612382f2a62a86fc45575
Date: Wed, 23 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790128833
