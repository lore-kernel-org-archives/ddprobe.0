Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D47021A420
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755721794; cv=none; b=BWkrqoE0+Swg4mOwMYbBTii4E/2rFpboEM3qn6Ta4Vv7xmyIAVJFA+KCcHP0I3QMUnsRliMjQHJIKNn8/BHb/w1T6DUzmIdG+Gf/PKldZ5rJLa3IwICt9Xsc6TmesIoFmJ6+HK/V6qi6DrJAkrIcyeCy1hAn66TNErYBO48A4qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755721794; c=relaxed/simple;
	bh=PGCIXqvQkxjpwQCWXk+ytsxNcgl5QirzRpFUv6hW1fU=;
	h=To:Subject:From:Message-Id:Date; b=ec/sRtWTNYK15Pzbg13v3zNjiSpYG3973EkudRAeQSC2P7JYThmnXxCTEnbTawlc1CFeEnj3O/SEbB3sFdUoBvZm/4cY/ejnndLkyxdDfBhc86BvboegvFhAf8hqgi6fZOpIi43AM3i76ph058ztxAdbhmzg3rCuzmFPsV0Gfvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1lqNsnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1lqNsnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C3C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755721793;
	bh=PGCIXqvQkxjpwQCWXk+ytsxNcgl5QirzRpFUv6hW1fU=;
	h=To:Subject:From:Date:From;
	b=Q1lqNsnZOuMSA1doCQuLqC2XmFiFbjWX9arByBa1SYVRetCe7xEhCkY0IsrfEFa4t
	 FklQsiaI3YtcDSxioS/IK4hcILGBc+Cub1BMn/QLZkuO0Cg28bvRvDAySnoYy5kRA2
	 iVHVIAF4hlaKdf8yIQ+kxnjiqK5HMiXVPm7uJ+vhccoMBv+lMHs6QfYbCoGYEPZ7cT
	 OL4SsXAnmHT1n2Svg07HVPo5r7KBZoRPB/WMMAZuORN0IeUIYjt2Gp17H7T+8CTwwg
	 0GPoEOhziXQf37VRS/kCBPCLetOGM6huDdPQ9dUTRekDKfQPcY0N9tMPqzW/lovZ92
	 qOhI1leUBjbvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF3ACA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572179358.24387.6262854616072806544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8b5a8a885c5e1bbbdb58b249af4a5b1926670206b772236e99f1ecb561a6ec
Date: Wed, 20 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755721793
