Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3A82DAFC7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758968394; cv=none; b=WXJWI//OoWmVA7cu+hBJz02AD4MxJGG8NSqDH7hN+zbBUt5uqB1FvKA8mLjJzmn25Ag7R4uLWF2MOmLHjmzdnUreTxZ76m3x9ikx4gdJcnL/Xsza6m987CYk9p3fxk9LIbaCmQb84k5+4P+8lVV8bKAF+wOelmuZITEoda2iRMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758968394; c=relaxed/simple;
	bh=D8qsA4YEGyKJfxV57cq1UIjFy+5dggZGcCRwILfvCaw=;
	h=To:Subject:From:Message-Id:Date; b=mSN80jib3f4EMO+jkFEcQTMswum9j0N4r7Fpc/w+ip0nBQkzqqQCBvaWgC54wAtr7w4PSXOdoajVoOEV+Pm9N/SXV2W5ScpelxSYCp01Wzsz2Q7S9UfELrdooAuaf7euPM02JiIaA1GGJ97RP7EGOdkzilG8/+4oQ2Q625qBqpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQUJBc2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQUJBc2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F48C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758968393;
	bh=D8qsA4YEGyKJfxV57cq1UIjFy+5dggZGcCRwILfvCaw=;
	h=To:Subject:From:Date:From;
	b=oQUJBc2yURrshjB3WxZe6HV0+0muIdIhPwHplBrGTNm7UMy3+0FGMrbDZ6ctNQVyz
	 cKHRJjtUBw9OMlE5ThVeOszD9Zrr0r2f5goMVF0KPJP4o3SenNgRSDs9eZYs2vMtf5
	 2QbYX/T3Fkh8FKNCmYDw2mC8j07ud2p+uHa2WvYZ6yf2MUg2SN/W5u69JOvTgwFFXt
	 +ZdPEHVKECCWnyfXPlnaYV+P2xNtlLD423S9ijlTXFBlBPFT36ocPDFS90+F5hy5ne
	 LRXfJ6iNbPnrbu1PyQrkcEEz+i+kg9wuv/jb+aE1IHWNjynSrJMR5e+hyRIrn6srRR
	 PkFuYyHX8Mmzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F85CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896839358.27290.3981051145395447462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f397dd6c7bd9c5a8c3b1bcfafdc7846d06d36eb54ffc3a01b285c0678ab2a8
Date: Sat, 27 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758968393
