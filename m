Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1E016EB42
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756030194; cv=none; b=giK7n/UJu1qkiw9O45X68GphxmGUjNuwd9/RR3qse3JO/dFf6FfAyRdSl/G6Zq69u2ILb2fo7BspeHxqLXUePcQQdKkjqfT+bWdfBV2M9noE8wG1DzCFmYTsrR8IhZWV0LmCAi50lq6mdk4ZYOq9wnPpTloX6nwnaC+2VWt1/ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756030194; c=relaxed/simple;
	bh=kXGEdFeul+y+I/beV52YNnTRTFUxRoW3fujvIe/Bq8M=;
	h=To:Subject:From:Message-Id:Date; b=JXkNY2c/aaJUDOF9nh+25xpVOb/w6rlkjC4wPHt/84OHUe89jcOI3OhSD9XTxkIbMCfYKFqjXnhCCx81tr8WTyl+SYzq7Mao2fkB1g/Dk0JZtRHIBXAQMge9ZID+jRLwl/ASJ8UmBqRxkZRGNq6+9B69cN7KHSbp0EbgxhL7Ang=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYTYp3ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYTYp3ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756030193;
	bh=kXGEdFeul+y+I/beV52YNnTRTFUxRoW3fujvIe/Bq8M=;
	h=To:Subject:From:Date:From;
	b=mYTYp3ihc1W1oLLn9EYFBDeLfvG8OMTUZbZdEFyY2CIdEk35ecsLBFGxiaqNykODL
	 RDJUn6oLPcwq2fFY2MUDVFqa6js4q0j/BAdOhtl/AIwLwt3DkNfmvpqWoJCNTTTa4x
	 LGKNI21TETRFW9KttAniX8tkZvEKU9NkF+6z8+82zHilqldirVJ8mbj5+jo/xNNDoY
	 AybgfECxtqqyssf50DsRKO5QyKIswtRA5wJC2L8BF0icvo6si+2/k8+N6NCF3S3B8b
	 Vh/Lv0FmuNpl17LOBIdzDUwWBVhjes03k7wl4mjwg5EEf1i31TuYiVbFXU4t5mMOjX
	 U3rDhVYzXK+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC0CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603019358.17861.9836088246726074360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4dfe1b8ae3345c7a9daf5c91e794abc0ad21b5418e43234e610071449f5653
Date: Sun, 24 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756030193
