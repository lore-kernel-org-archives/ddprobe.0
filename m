Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7F8260583
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763538115; cv=none; b=SgeEN82imsoEAVJfvPiDcGDMLsg7KERlP6+uiDJtW47TnWWH91poW8Oqe4CvI2Civgh4EOwiN6npwoai10WB/2JYEy/I7HR74UN41IKkL74BHvmbblH+Wj9FVvBbs2lMnGIKJC053Def3Y33SnpfAdDYOg5iDXRh/KRWe4SneH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763538115; c=relaxed/simple;
	bh=WfD/pg3GIxa3NECUEjpoiE/6lMPpOSN2BPyVBOe5/cg=;
	h=To:Subject:From:Message-Id:Date; b=LYtQJ5S2lo4p3jaJ0WeBqcDelGLUPtVm1fua/+yNhgLItaqyCuy0v1yIhHgZ1rseBZIQLHoTBVkiOoS7mCSxWD1locNGOYCjHk9wuA+bhI8TYs2ZeZk8dYvo3twYE/rGwYr743gCR4apecp1KpKr0E2H5wz5v9rpZuFehyhVBiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxP8EXzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxP8EXzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE6CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763538114;
	bh=WfD/pg3GIxa3NECUEjpoiE/6lMPpOSN2BPyVBOe5/cg=;
	h=To:Subject:From:Date:From;
	b=qxP8EXzZHE2M58WUbuw4Oi4yVeIzUVViqlr0wDdmvUVBDzO98olypr8HGCwq4mfsM
	 CQCMxhksKwuMgV3BAWinkZfiZjfUTBDO/XpwGQeGeEHi9eC3qTGK3G0rYLmjbLgDWT
	 yF/89OFyE6H6R9i+ulvN9E5yB3ypXHJTVcnwL/VQC1NawPKPtKvebzYiCbsbTDQk42
	 l8TF5oQ0RKOBvnMZSsXNmwb0/3w/kFXfQzysueSrysx0Z21h5TC074Nk+mMbNzpNug
	 4rIIAzgQgpUl2SnjoKJhBJ4R05Y2t/1UsGi77ePCXky1cpxGbOxu15uMIF36nmVkD9
	 PzD6qxpErHGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEACF2567
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353811358.931.18375619497413538079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff21a04826874ef46dc2af3ecbe5b5b91b02e3cc6f5309d3801d1069d8539ad9
Date: Wed, 19 Nov 2025 07:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763538113
