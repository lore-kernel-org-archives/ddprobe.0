Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F6C25CC62
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760267994; cv=none; b=YSrqTbDpyj96Ujloa0rUuPUVczOfdv82X7IA3ec0jCPWv9tztSHuUaVQOGrvPIgPK+oL7/H+Ng9beJvd5LtCRmjlscQuek8RZShIiMsRmb7RBcZ8XLSpg7DmRbY1lIZ0VvQa86IfHPozL+vR9dScSh3SbMHSHdZhj+aybu6vQUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760267994; c=relaxed/simple;
	bh=tNolNk6QIUITNB4geMH9z+xeLM78MNnfccxHpvGYGRE=;
	h=To:Subject:From:Message-Id:Date; b=B3rXeFyStAw9hlbgEZutKNBTN58/JXx+0LIzWIL57Vz4+e1Shb+gWzumfHHAr8URoyJFgbFwXFuo4/ReIi0pNja7UfMznTJo83XpNpT6/vhIaXPrSkMmUC2iSaV2Q7ItgfDI9OiEcluAnQfmagChasN6aoHItIqafzm0QynCs4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3Yw7bn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3Yw7bn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32BFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760267993;
	bh=tNolNk6QIUITNB4geMH9z+xeLM78MNnfccxHpvGYGRE=;
	h=To:Subject:From:Date:From;
	b=n3Yw7bn/vWkL71BnxgDe7vVnEdrmxfS7TD+U0ab2ixc4KtHBD5rRXQQVQ2xjFDyPW
	 7bi5hUXCCGMzy+rZGHVsn9QoK3N3W3rhoU+bf7Nx98Cq0rejGuh7sBAaI2WDkG6MiA
	 yfKRhgKe0xS0Z7P2v9qkVxGLkNkNn/+M4LCpK6bJbEqj51b6ThE3Z5zxbeRwnGCWvD
	 P9ta9vwDzEW3FU7Ja8tFhd70z5FD1SnFXKHagSlUmTAdV/TbYpvV35a5YoUjeBO557
	 q5jGUD8/OAAAa60mMQ0TDjWcVDFplYwgTpzyyZBDSXaqEA8wLt95wxZVVD9kAdQK0C
	 TxevbfoPr1zvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F20CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026799361.488.11969709176317611247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60443f44d8a6aa98a05a7c63b547a7d63bc026d6548cbec6edee87119f480e3
Date: Sun, 12 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760267993
