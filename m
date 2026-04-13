Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8BA317164
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776064654; cv=none; b=P2WJd7jqPFykEPl2SBcHoQqHXq5b10Gq7/v7s03c0sX+ajfLHBaDIqylln3uO1Tc6LiNQIh7ncAX31NmVyLHyJbfV8ZWzQwDOWUpfOTSfYOStHpQ+Aiv5KjUcrbpiRmjLNA7Tgc68z2GWGx+D8xq+tuqRChAFpq+A9F/Sjss6dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776064654; c=relaxed/simple;
	bh=zTAa3OX4JYi9PP54btF9tVMwevwCNPJQHuHz/SVIqlc=;
	h=To:Subject:From:Message-Id:Date; b=JAP0H0YcAwqJ+icP6S7KHIpk5DA12GKk0Hcix1AwIMf4wOuUvRQ39fa/wElrAWpvaZk8aes1qSMcdlyhXLXDQlmJIxobtOnTzuvhtUSdHzqCb2E2DH2ZoIficCz4pZM00IWH0JFjGGZhf3VRplKKWpjz/aS/jFmqHrDLYsWMiKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWv3YZTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWv3YZTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA197C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776064653;
	bh=zTAa3OX4JYi9PP54btF9tVMwevwCNPJQHuHz/SVIqlc=;
	h=To:Subject:From:Date:From;
	b=iWv3YZTY1apo7TtMOBFxwlrBKIRsZFROuJyNbTGsQYea1edaLPLCrS3ZE+n+b990O
	 aN+Q9Zk5y68pFpGVzkeG7UquMLUzLGjG3gddeSjIQekJ+orf6mTaZXcW1jvhVfI7P/
	 RXoHD4ruzEtco1+78SNT2uRhmYWPqBYt3Xye8+YU+kRSlvIAH0BYuWboibQXy/bwA2
	 lDXJ0bYPZ1jlmbnvoKL5807lpCRdRdFahT3MMCcnrQTwPiDBVayQnlW4dRJRCnZA3O
	 qspOifU7sGK/i8r6/L4mspNmj2jjAbooxY/s3RUkUuYuay/Ex1+rYQoMKvyDbU8LyO
	 Ya1cKIycNfwKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC97EBFD0B
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606465368.13877.14506267394408463355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef87a69c7ffbd8c82aa86dfe4f3846de95af84fff750b39b5da38a557337450f
Date: Mon, 13 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776064653
