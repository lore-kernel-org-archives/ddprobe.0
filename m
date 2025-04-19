Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509211C5F1B
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745105394; cv=none; b=qGDWnTRDjlyHM/pFzgAWtsC/A9X+S9cuOcfrCxHvxw5L4Glb7b2Vyqm3+RZUEaNqelKr3CAjBVT39KOnpqXvX2IYgjPsYmF9sD9/WnTEXYOdksGmk6rGgpAzpbZuHKdu/HfMJ36/TeHsJTFgu9g6YMbfuPKDlmnXEGfko/UnfmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745105394; c=relaxed/simple;
	bh=XunZUPNyjs/Er9wr9E3h0xLI4BLhJjdiWfOH8E6o2tk=;
	h=To:Subject:From:Message-Id:Date; b=mYORRsHNE7ejUUxVFeIqric7hXE+Gzzo9GKAif7H/Tf86bC2xeWXzPIujfF2Z/bjfLozvDEG555Op24IoI1B3Vxe4gSwpEt3PNxqcHJe2/qsQMV9idzQ3DyGHSK2/AOUQGtb0n092I22tta4ZSk5ARGgFdzW149XZPUxSNEpxLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9zhKPgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9zhKPgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67B8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745105393;
	bh=XunZUPNyjs/Er9wr9E3h0xLI4BLhJjdiWfOH8E6o2tk=;
	h=To:Subject:From:Date:From;
	b=l9zhKPgsBvUKoeN+Mbz4Az3ovb4HXZok4BRYDRJgFDMpLPcvlAT4A8vOhTXywc+BR
	 o3hMwH+Sw8Wyp2RfxrKdm3toMDNMv09vU5wyQTPo+td2pXASEW3D4LbM3OZ2W4PKb1
	 yTziQxrhdm9aU6BpG8DZGd06F+vVRXHpKq+39+efHmekbFtej0yXePbQ92TPr8J+I2
	 7W/P8VBnmcF2dJeLJAryN/eJ+0zv1Nv1r2FGW5Ov5smY8csv1tyxgRH9Ht2pyo2FAD
	 O4GX7omBb1HDw29UfLr0KwiujV4DCQkjDxhILT4Ue1jr2cohuKBUI8kAKhn+GAtTWV
	 KY3EVpxbrc75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB4DC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510539361.25924.9246622944721479300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9d6a47fb6a0b35fe70bbbb72597a908590716d1cbd91c15044994d27bae136
Date: Sat, 19 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745105393
