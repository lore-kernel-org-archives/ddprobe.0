Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A4632B110
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782863314; cv=none; b=dXDM9c6KhUp5DV8eGOSwL214MH1FnoND4wArIU5EPXyAd/nAfFHmNTCyKW9KGm/+wN+drRepqChM8UGPK+7vgbAWij9c5LkoGaCpTfznscXoXHhi7XbG8FndjxHB2D+RqUqhkhXDycm1iGGBWJYs/7uhsce2xdeL1dbFYMAxj14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782863314; c=relaxed/simple;
	bh=OVMOwEqWvS4IIyYaIIGqSBdAJ699GBPiDwqEgVpKeCE=;
	h=To:Subject:From:Message-Id:Date; b=aOhPuSE7mOmKe4DR1N8LmxiN9LRyY1f2EcUv8d5GgKQ7McF8iUw5tt8bnczcgdpftLQx5cI06hqZZUy7M5+BIe7Qy9cZxgMKJWKTBCu8CYJNBmbfn2PXVVsmVK2Tbge3vufkhzi3tzjZ4Wzi26vkdct+1JOTXlIY/JJqkQwG6gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqrgbQqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqrgbQqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E2FC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782863313;
	bh=OVMOwEqWvS4IIyYaIIGqSBdAJ699GBPiDwqEgVpKeCE=;
	h=To:Subject:From:Date:From;
	b=VqrgbQqqAZESE0hPPZbVZyExdXgvCRsAu2sxZtVquzOO+cawLT9RD/GZqA5nt48if
	 A9p5h11B+GAxXVqwrcdHqfg/JC1PfH0GeE9tgCHBqhwmDMJDnyS0JO/0s7q63PfSqU
	 eiJ0geUo2s+tZtTkthEY9a3Uqxpnqk7Y30WTX2WfYd0l7otGJneqb+OC2U6ejt0p4O
	 /AJlEAbCP+0I+6TWGfkweG+UOjFwYiMxzO233nn8mbxBjyMvOkHyx28TnrxhJxNRHB
	 6+JtDMTYHG6hD/+ezxOF6QEwlKbaecA+LMb1HwTgaykRGQ0u4R70ZrXzth5dxxw9QT
	 09vz8fIgJ+9Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED18C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286331368.5808.15604645934304656480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43d7992e8ae1184b857508bb2321c537f8fbe6b1e1b496f22e6f6a845171e1d
Date: Tue, 30 Jun 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782863313
