Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F5C4E7802
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790788834; cv=none; b=JSuZFy5i9fP0ZoxjZn5Dwt/TdxDlP3eKY5K7UPq0LeJ+AxqxeudZ+R9H2K3SOBiOHnW+JGFZYQfz4QY7DZS9Zdp5ociAt9zD8K+3xmc1X1Zb+Eo4NrZk8jcWK+SEPvuhRHVNSywNZHvyJmT21i5mwPxkLeFTA/ipW+hwhRAhKjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790788834; c=relaxed/simple;
	bh=oASXENBNgeBYP3BK9q88naZnx2yKAvTLjZXRpu1+nCs=;
	h=To:Subject:From:Message-Id:Date; b=UMSPg/zLYQ/CjJKWJdzB4DLcBLx5oPpeKwS/ZGiUxg0/Azo+w+B610QWVgsntlfDSsPV6RUH5gSeyPMskGE8svPaJQybXALnG5e++pdcswUC9zrbtGbb5dXihPb14VkQNojTBV1yV8YDac0/oBnPMq+70d2YvjoKV6V1l6CM3tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGcbgAhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGcbgAhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D289AC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790788833;
	bh=oASXENBNgeBYP3BK9q88naZnx2yKAvTLjZXRpu1+nCs=;
	h=To:Subject:From:Date:From;
	b=sGcbgAhy1xgLIQvloB2JMczsW5RANKui1FgPNi3Ay9WwOLl33rGYh6Lbu6e3aEcy5
	 jvuobFTQiJ4hqfPLZYFithbbigtmHchLcwu+DYyeZT3ToO1iRGJ9mF/rx9BM2WOMGj
	 mvkzb8VKkCi1JvEwIUt4sY741kZroBpNaUdyC0Y6UzwCiUXMiBIzvuoU+6HiH8+vMq
	 eqRsFlmh8lj/8toK74KCgayiLyu/52538XS4bogpsZbm37ucqhk2tY9VG1WOYzdfxi
	 z9TtmZkaGvz37EI2JTbxStpJU78HAvA9J1otk5x4BtQF89ruavlHFCzvWd30tUt5Sk
	 RhUTBgq+Y1xGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA93BCA5FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078883368.15604.7105105217777738468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707327028a9e1263ac1d2dbdb8f8d8c3addb192f6b2ea8ab2f8ac26c55409537
Date: Wed, 30 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790788833
