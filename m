Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2501E280325
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758018595; cv=none; b=qEXlOKacP+ZGzVp1W2+nxrYaQncixgkDnuzYg8dTRnh2oKJiSAttigSLFQcjw6DMv8sRDc36HodfiiP0lV8G1DBJp8Wer90VTVKXsa/0nVyReZVmz2MyMiBenqWntmdDMtR4hH4EEWnasxWs0lYSlF2pjEFztjed9f30YG6PeHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758018595; c=relaxed/simple;
	bh=ImmREppEQ8gwmXfPovM2eFW/JAeUdyXF65m6+tgN5L8=;
	h=To:Subject:From:Message-Id:Date; b=as3UFsXSWF0sJywZRATsUgqqYVw1gBSKYp87+23nqWCI9d5pcp2llhFfb4tWs0s+TMyO62Jcl5EcFpJ5dJQGhBwlsCF0oxgXCG03S39Sqx0tVNTKJUt921Sw143EeZj940c4rmavLEiibJ0gHmHQdjBHAv1jYfrWRTuj7wCQluw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uk+xTdcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uk+xTdcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C475C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758018593;
	bh=ImmREppEQ8gwmXfPovM2eFW/JAeUdyXF65m6+tgN5L8=;
	h=To:Subject:From:Date:From;
	b=Uk+xTdcf1W71Y5Y7bEXH2oDq3SD4e/Y4PRV4j6FxPKhT9UXUKFWDVollURKNf6Rii
	 n9CPeo0chc04CU8iL6aq2hcTGDjYsLePSjrALpKGe6NZBQbyIMKhCyDkZm2kX/SfYK
	 Cf+nj8g6HpCTN+yCxP3gNhJOiG6/cg1+FRkrdK7KqMogisIt2iaewwOynfL50Q17xw
	 RLpZcAhlH82s4W2UewGQgwcuoiRFYldX7MqrhqHxVPloEzxjFhFbJS9DhxXUyvHC2r
	 VOU3t/zh3g+b7/xNR7VXY+xXiBbgumAyRqypp8VnqhyfbGIBDS0DZSd5/q4hSdrjRg
	 yrbB+mqSersjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E912CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801859357.12846.6899044930033909000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3b1fbccaa3de64b79b9d09f94b1f14e751d570fade450c8cbb45744eab6638
Date: Tue, 16 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758018593
