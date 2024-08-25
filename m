Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64EA145321
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724586953; cv=none; b=LZ9N+EzG/9zQTGO8IVYPKjVTXS0pAwnGo8w0VOElU4BPcQ3Cr+j6SschgkWyNcwaN11Tkgp45ijr+3rLN9EC2HqOUnbxqZsxGan+HpQN69GB1KS7HtSeLkLqxIbcOTbuC+wMGtrSICJrTsgp34OTL1BLLsIXfFpbXsqMLPnvCjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724586953; c=relaxed/simple;
	bh=v+XFVOlNBw1/1DCB0kzNk+lW6tK9RMJpGssg1yKwCHA=;
	h=To:Subject:From:Message-Id:Date; b=k3CO3nX7/caMlL3MnAtChWNMOdXPuAFSI8LcKQcSO9NlzBWwOh6BQvqrDWE3ti1IxeftQEtTcHaa7S4pBkIC/2BcGvs6UwIRjxyQG82S7fc4vZYTmnxEYhsYwZ8vQAOOOscmMcpmZcH7ElaSsDSYYI2qDfPlqXDV6o65p+CYo9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eb1kroNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eb1kroNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E07C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724586953;
	bh=v+XFVOlNBw1/1DCB0kzNk+lW6tK9RMJpGssg1yKwCHA=;
	h=To:Subject:From:Date:From;
	b=eb1kroNeANBqnJWjIpst+M0evegRpplLbx6t7JK/MX7bPE9HCn4tdtPmxd4TSA3wj
	 OiSaLHv5t9xSh5omGqRahjh2WW938eAXeMd6W4KFKQixv9djrcLvch/+mMDHDRhgcV
	 GWKOPKL+/F8p93im9Zp8rlwNvIavWFW8invFDMRrAENtPoTfipqSWzWPG6dnvxG1bd
	 MM8DnJE/HOkVlmq6X69TgLTEnv29E7WQdHsgSR2hL7RdQxS3EfXxmn7BFzlTbbM/1A
	 mqFsQmpEF8Ko9t2M/RYLiLmnNtNITzO798SxBhQFXAb6oT2xKqaNV9S71j0KxPyMBA
	 j3FGqobLLM1Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F560C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172458695361.9165.6216845089426284257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c98daa970a85525103f1460514e2e8c611266058bdb4b22f2d1c5b1f0e0237
Date: Sun, 25 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724586953
