Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1EE275AEB
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783162714; cv=none; b=A547m1p/495sTxpNKhJqdrcyKz8p7cQ1/yaXR7ZhihTi2Vt+flYv3gsfHTA+eJlsBpJ7aUa0/QtLH2Dthb4WQi8wLqCOLEljqid/Nt5IREIP2Rlj5x6UYYSVgDEydDoc376q6NQfMQVTxXmUAvD1o1cvvkeiTQduRXRZ9naWCto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783162714; c=relaxed/simple;
	bh=fyUsyD0C0ZhLVJPRXr6vCTl2SfjC5IvHBgb/XGPx2zI=;
	h=To:Subject:From:Message-Id:Date; b=IvGsd0pWFFxcUYbMFwQKxO0Vs+Nkh/MNKFPd+BswEn1ejQzySbYTUNzN9Viyyr1pPSqWJHVtmo2sr35gKgVlLBJF3ivZ3uIWqHcDkKJTVo60FiobeHfqkSFUES5rDWrh8M5RPsrg9agCfnOAbtXggneLbDM115dw2kRvCVfcdP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2sNpJy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2sNpJy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5EFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783162713;
	bh=fyUsyD0C0ZhLVJPRXr6vCTl2SfjC5IvHBgb/XGPx2zI=;
	h=To:Subject:From:Date:From;
	b=j2sNpJy5JvaVCJYiCM2iXerq2zgtlCB1lfaPgcG/gkV1x8W5ZzBGpTuGtT1B675or
	 ZCmOlyUVe/gHJRZhDrXNXrE6b8Dwpee1XHG+YvIqxfpYveW8xdMhmDrZ1yciPXmZue
	 kQ9P+SNVqoPHo7c4AAfy8eVJcR2t1jqwRObGi4kZ7yhZ8Rz5oMyi0YbUSxm/saO39E
	 /dN6qNO4my/gnJ19GgxZQCX8DOHAai4D3rPFoZzv5X0wQ0xbtKoR+CxLpi9zYELmIl
	 EdgoRH07g5Y1m2tMQkTpA4WvQOYR10DYHIBXYqkDt7yow07uFuNjzC2eWzKrEz/wdZ
	 fCJ0eL4yZe+wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6BAC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316271368.16570.15166332028868780956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d1fe903ce023a9ac7ffc2908f9be5304cd2ee4960ac51de125a88678ac0226
Date: Sat, 04 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783162713
