Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFB9321457
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786748434; cv=none; b=P1yE4HGMs/+IOgHixPd7bTTLIkuH0wKr7dYcNQLm1Rp4Uq07gJWvaWGWOMQpRtT+8nj4IQLWb1IRArTsKQmfGoRinetuzM/3bGhwfebKLZx9HKPYcSC87LbwTvDCEUOJn8ngpZnmgywXUPmXhAadFQOLJNbkKwQGtRj7pVpNWts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786748434; c=relaxed/simple;
	bh=9/2K8o5dDnAxPoWXWDxX0B14lhgVB1k6wo10A6GBGQ8=;
	h=To:Subject:From:Message-Id:Date; b=isuRgKblNazLCLDggYUvfsV5UmBM75TOrfez6Ax6kAlS6fRJpahG722MQWKsGVwrRUtNGFpDX4/lATyxhecwbTAopzWsRNfadkndjbLoLRQt28+TlKX6guwvjMBFjEv8QSZa0jjIJonJk8qLhK7XNlvrRcmFRKgTSJo4n+3spu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nx8+FLRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nx8+FLRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD721C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786748433;
	bh=9/2K8o5dDnAxPoWXWDxX0B14lhgVB1k6wo10A6GBGQ8=;
	h=To:Subject:From:Date:From;
	b=Nx8+FLRM64mwe3d7EvhIXI8H0xygEjv1ZdsBmw10GIWYTMAtYp2E9xEqN0VQlbmh4
	 tdOE8cKNn/+EdQk1P1NNVdbwuVhboNmxDn1ThYoX+L1ZQmmjFsJGoeau/ybxalDLzv
	 w79GXvh5n1QphRPDCN/ne9PnJdY2YbCyoUacDaCduUSnm/ij7MNz94zKb8a3YxXgDS
	 e7MrgViWNi3T8QIuUehnIebtC7TX0Vo1Y7aOGHMbhgZBshDsRyKUjtUIpTc3VjlXH0
	 280BlVIlziymH7Wm/5nJD/yxAH+tIeDciCW7/Y6ROp5KZD8S9KTIpoS/Iykg3Ze30B
	 FKD9AJDD7PrAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9969C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674843368.12326.16946847926773671066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e213021ed6f1a2573d3d1f7cbba0b59a495a998c223a7aee57404b2f366ecc5
Date: Fri, 14 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786748433
