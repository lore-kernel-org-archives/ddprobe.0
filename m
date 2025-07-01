Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E081B95B
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751393394; cv=none; b=LSxwtJBrG2/KeGFxNZNFIHNZe6qbpVhKzgqtcfLRWC1Xn2QTWudAyTJzLsXyMmWOg3dj/n1rrS5nH86AaNLJvitRta6kVrefHVT9QUlsVvgF3yFpqx0Vo/4arHGwsP9vfJqndsOWl2r458hTCfrGRxOkZdY2b39u4eL+o6vp0JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751393394; c=relaxed/simple;
	bh=EKp8/yIw2SXNTVp1upZZWOKWXyHa9OSCdNR7/N5U6xU=;
	h=To:Subject:From:Message-Id:Date; b=o22+O0aqkinan59RasTIrpWXEvL2AICo4Y6cpu6UXvu3T8s2rngbjedjz28IZgyGCiTCl/4cSY5D4+IwRI6NMch9HianKTp5MI6v8nG7G/jQgvst2J5ednrmmeoPuWRl8EHBK3ByoUxOxyyoluEBZ1b4fTdEsBXXn2maKL9AFFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl5iIESj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl5iIESj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7DCC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751393393;
	bh=EKp8/yIw2SXNTVp1upZZWOKWXyHa9OSCdNR7/N5U6xU=;
	h=To:Subject:From:Date:From;
	b=Rl5iIESjtON5a1EAsmixIqj5q5IyRCSx+O4PUbCe3BXCVDHH0pc8MrZPauf1uoJvD
	 gFc6APIKvchUlA22iFvvZIgdJ3Ozale5hhNhrmoRKmDuAMVYwsRa0Tm5mLGNXHseRq
	 AqBczqgeQC2B7Xsb2lfnHzdPHsCc/gxQ7x5n4xKZZpJBtaFGe/ExzvbSSFzVmFAv8S
	 MO0S1YidmqpAChahOMOc2cKp+0VJ5zKwsFGEcwYEWEhUpgcfuBALDJHbzqRZF4yW/M
	 QKf/y/GEV29VGq7DDrUdkGnbx4+QGlgrqkG2UY4m+4cxgOxuV+Sb3DpaAIhjD6KWen
	 tqIpdPQcoimHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC6C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139339358.9741.4507122084551437962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c7d5680ae443b0d794e856a03da08170044435fd84b3aef04b18fb309a9ae7
Date: Tue, 01 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751393393
