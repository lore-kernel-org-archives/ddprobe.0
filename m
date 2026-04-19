Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6A12DAFBB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776619054; cv=none; b=jWrx/GL001jYQ4MmqxclmXPNqtrZEnZjDc2sG//JVbVYBk8xVxGpQKVyW01q1GztnToH/3Vyh1i0dufR1W6RW3Zoz2yz5gV4F3NiLWXvN0G1Dw8JSVvAvuCEN8tA9geJ6pAle3zXGsEFoH+wIK/WzViBYZCHKSADdw/UA4efamc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776619054; c=relaxed/simple;
	bh=pi8YAjcLHmE6VYhvSoUaY263yUuDdEJPa6tlApRezJo=;
	h=To:Subject:From:Message-Id:Date; b=hoI8Z8yEcBp+r46PlK6JEqZiOyFqAgnhGOQaDs55iEEyh7DtR/3tUlZe8vtZjTM8LVKeoFDhqdcl6k6X7n5AjgH/iTbn2esGU2f9sM2RpNPKCxW2hZGc8pMRNgCh4SDyekXlCWWEtGDhwd+jeoyI6kJz5YuVRDnba+zi2pOd01A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ei/Jm038; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ei/Jm038"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC84C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776619053;
	bh=pi8YAjcLHmE6VYhvSoUaY263yUuDdEJPa6tlApRezJo=;
	h=To:Subject:From:Date:From;
	b=ei/Jm038r4oYYRK2cUnl+UBr8MJCpPD/5qYSW4MqMQVGxEwnwrf7mK6RD8skTJ2n7
	 T7nAIZprBj+vFBbGG2TzJZk+PK7UV9QlOKyMCw5jCDAvBxqs2zmOSQUojK8n2QcMle
	 XdblB9HhIiEhM1IfvyWQDIxVKwD2z22aBfvFNcKwUcZ+x1092DVRjEMmfLEuD5zx15
	 xIRkDdr2DMWbwBSaVDdOmPrp2nFeF7R1E+/u1ykG//XA8IEQR+oJ24CdY0NoKLsXxJ
	 YgF9mKkpx6gP3itIJ2GPye0oT3SePv/JTsadfsHxQS6vQ7kH7tul0VdFil4vzZ8Jeg
	 usNwsHkOktxpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC61EA7197
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661905368.442.13804520297478535474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41715d1b419d51d8fe1d4e1d60588e371493e5b541402c2f1a6fdcd3c09591b
Date: Sun, 19 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776619053
