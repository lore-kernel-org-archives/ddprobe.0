Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166C527979F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757524196; cv=none; b=EO7qLq3foCoyNdSUQ/ouNsGT9JrmgYw4Myh+De/cJVfazq61jMu70f8VwKj81m6gYbLkq4CRtu183oRidBw0t6J2pyUHw84RkVVkWbz71eZKpuDthTS19zPei2+IEfkqfYgnhTj9IuD4aV57Ba/UBaB0RhTPM/7hnPSZO7PpXrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757524196; c=relaxed/simple;
	bh=V7hm6sqksPwP/7H45B1wbLuQFPymh5z+B+t0ie5eQyA=;
	h=To:Subject:From:Message-Id:Date; b=F1CoC0l6gMhrh/BVxFOKGYi5AALZRRMr7gAuX647KvrgQBOuq+ZQmICFAgpihRfaW05fVSi+jQEuGSM3QM5rYtmwwRGYX/rFSMPVqxgUScEpC9mk7p3SNI9uyc4Hi1fbI3Xy5qgVXxSd6aIR64sZnQZAPkqt8TAfFKLq9HqJ3os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJTto113; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJTto113"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF41C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757524193;
	bh=V7hm6sqksPwP/7H45B1wbLuQFPymh5z+B+t0ie5eQyA=;
	h=To:Subject:From:Date:From;
	b=TJTto113qePWREIgdCzC8WdnC43HxNHJkNdsWcxY6jsVwAYMfUXniDeYK3IxlBFzb
	 2POywjlsZW9ibh62c2dSBV3fWCxZjuwLNX1exqMWHZRYCW52QZm4l++J9LCv1x2CCe
	 Lqb0RIBl6669M76UIMVZ7EP0aRX2xyPM/rC8zSd3M2iJTW3jAbp8vCCYLt0eOs4y/V
	 AM0u6oxpmjKO5r2Xf1gmYATKhySE89zEPKOC5j/FqCnzzJsdtsNRaFACc601qm8FKe
	 V3XnCYu6UP2BSXNS5AqKKDQNHaQ5ZFhVcShHmUOK32YWQMJu89CzTiqWfJ6P8EJF87
	 8khypYsVjOoDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7ACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752419358.3494.11516983459563661426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c407f49f16b95fce3664993db96218bb06b895d4c9dfaf375e0a0a4c7d29be
Date: Wed, 10 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757524193
