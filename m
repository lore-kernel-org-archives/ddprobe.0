Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A3D175BF
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733454954; cv=none; b=QLeeK/wfUKP2Q/XPQLB8CPUNTwmP6bASCHic8TVPDvagBaUqZkBX9+PeW3PEgjWVyOFCIS8ewFIr2N+mNKBD7eMrjDNsB3y6Pgmfumd1lIBKLSBC+oR8Ti2yTRvMdXc93DGlrg/dhs3UffYb9tr4VLYtuBpLcvyF0xkK8PeqOT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733454954; c=relaxed/simple;
	bh=Xj39cKRS+Tz4GUeCO6yEK6VrS1p1arnPlGY4lV1WoDw=;
	h=To:Subject:From:Message-Id:Date; b=pJkKhLA57m3+pYOFQMyFUB/+f5B+ySsAUfJi9i8EQaUwEARlWtf2ojH2iPWlu4lDM3YAC+bqiBNkgR5dDWeIrYjnORjxat+Vuh0g+APs9C6EeLVb8flMnKXvm8q6Ox8S5nqVxMnobqnGZiT4tzvCtTsDpKxdtYuG5hA8I6DOgDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zs11i2P5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zs11i2P5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B151FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733454953;
	bh=Xj39cKRS+Tz4GUeCO6yEK6VrS1p1arnPlGY4lV1WoDw=;
	h=To:Subject:From:Date:From;
	b=Zs11i2P5fQjCozHXRsAfthalMIgjnqEyAM4lR/gjKAYgcxGr1L60o1zXkD8nmDtBx
	 AoXI5lm9ikdn0tyriY0iG2E9kkrjZqCY6kumtj89ATosroAKE7vbLSqi3/+288nZce
	 QhdH3nE6hIejcGyV17HceJ1AEIS5zS1MjMcNCOHAGyxcXEvBiuFE1J6U7aJUVR6fsM
	 qzXwG1TasF/aWB2K6YCRNZm38eL9SD7Pl9XLigzIE/NhZjJYl705HzZa9/gB/UQoVR
	 qoO/y2SkMjgLFezj5fcBB/KQB2VmRUjJuv5uOzLzv2aD5tnNaPteBgSPK/7VckCUQ2
	 7NxzQ5KuN+c7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6D2E77170
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173345495364.7125.1116194412289075158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d79d0f038650f078c413ff819057b019e154b8d6e9f9f7a10e5cde13dd6a476
Date: Fri, 06 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733454953
