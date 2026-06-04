Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFBE3C8723
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780572274; cv=none; b=GjH7l5gDMOKc72AYe94c4dvwZz81nvOXS6ZVpYkGMg+gevdUMNR1on9Wib3ziCuV1dk8ynXuc42Bx30ODvngs8XyOtliiWIU7huuAkrl2WoI0T2EzW9TlOuo4d/cQeLvoIwr5Q4efcgLDbjK1NddPK1BpqA0rHVoZ3sxYA0ZHTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780572274; c=relaxed/simple;
	bh=Iovcedy3KMECyv+LQZS7ZT/wqvaS6eLnwmrTuW1Xtyk=;
	h=To:Subject:From:Message-Id:Date; b=QLFMOBmlfN+gfd4DPh+2YAfMzIrQVS7djhz1R2PRYqTefy1D9LIxLwr6H32dD4S7Zlu3Mknp47CIXJNNzsIPMUm9fsG7UkuQBltbWICH/OyBb+qfMwgxLjjffnr7mCbCJgxFYFqdvhH/TFx/raViBIMnjvEcd2z4aBlRAIoYTmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mY3vJDjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mY3vJDjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC45C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780572273;
	bh=Iovcedy3KMECyv+LQZS7ZT/wqvaS6eLnwmrTuW1Xtyk=;
	h=To:Subject:From:Date:From;
	b=mY3vJDjbN70DtCbHQ8KjGFx+oytXQBbLxoIKLbENm/8mquRaigRu8jIsDOmf9jmi1
	 ijey7ILV4gZfLMN16N8LGa4vG3LOOH4ocmsbwyPfzg0t+t1FI1mOLcFg1Q+aciEgQt
	 kIOy8IgzJiVMPngELo3IoEetFhNho3WjAGY0U1tEPFSLQGNhahnxjNQsVayb5cuho2
	 hUx9qippSbMCnAe3EhEwKFM9v6xhA7UDPMVBhHOtwzxcc4fS7W7PXgwiaKCnZQwr0n
	 ArL3NuUSwZeEy/uugR8GDsKRZb7oFItunfkRlz9qZlm/v+YQTDAdot9+xnMO0/s3a1
	 ExdCkeXMaHt5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C3DCD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057227372.15920.5451144310203490117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f2e8f9c5bf24346057404cd918807ee79be3bc5c2103a978feb9953ea350de8
Date: Thu, 04 Jun 2026 11:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780572273
