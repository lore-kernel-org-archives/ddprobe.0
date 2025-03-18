Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BC61DC9B4
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742329194; cv=none; b=sGqUL/srfRYjAlVbTpy2U7w+SQ6j8kj7PFpG82XIO+Q5Cd8SjkEKpCXCejx3F/O4s4Abij2CbJfdMyl4uQzEmwuvHBZYmiUrmTyMm3IJ6pg+mATBO0ZL7F/aK/V3XXvTtYGLeMH6AOdimPlVNp2vP3gikuAkPTrH8h6rJWbM42I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742329194; c=relaxed/simple;
	bh=2MS/GOOwusbzM5uyTp7WYiyDSWaluixCbJpTFj1pkUI=;
	h=To:Subject:From:Message-Id:Date; b=ZRq4axL1ZZWwZ4XPEHUIpQp47ilUztbqxMNHy/CtCYAXkA1bktwM/3405uq3NN1cNEIH64G3e99aIHqAQ7WKiCi5GrFzl77Gnr4QAVOiLAd82K8Fv7GfKArhyGcOLuMtSj6Z/HMCr2ar5nBxJbckj0l/ON47NshG1qbuu43u8Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSGf1Lg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSGf1Lg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1712C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742329193;
	bh=2MS/GOOwusbzM5uyTp7WYiyDSWaluixCbJpTFj1pkUI=;
	h=To:Subject:From:Date:From;
	b=XSGf1Lg+E3k3phDGWOw0f26MycS26HwwvyWwshPxdyrOv024qGVZUtCnmUSMaKJex
	 aBAwN4egRN4d0RHjSEXCXHvpYSbUHosZgRTWJt8PMUFd8s41WACCYhxmflH87ENClQ
	 KGl4JYBkncOrIs7wAp34f7JDJnuBvbOybx7wcHhB7fVPThj8hOLW197dz9ifb/VDZ5
	 xhnGYu1YE8ea17PMqYe/pGHwNWHR8MowlroMSsiaL87dCFNLlNUdRgk55DlwqQeQaU
	 Fk6xgZtPPJTaUnhzm5yRx9kudahC3KxxSbgUICiSARCFP59PzfqxQoyvJ0RDzAuqbR
	 Y+pfZfPAhN/fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B923BC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232919368.25846.15515822459684165227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b0403cb9012bce7a3840f9abdbd513032399e238a989d09a387b765e9f64d4
Date: Tue, 18 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742329193
