Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519EB243387
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744746594; cv=none; b=n9mDuZnpc5G24nw4QX0KUueG0HCRPpPxLhMVdhuFhxd5lv8RnNm9h2Ku8FgvQ1wB3ogjve+zp3wvgM1tIdSLl56Vg9gOy2LD4YfhxuQNGLvSr+FR5RWMnxc+g+v/8r5mCAaMroYMtKr7F6CoE8sr4/R2tBIyc3JucsVD0mueUQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744746594; c=relaxed/simple;
	bh=WwRqutfOwI/oDouQUbWJRhFvj1/0n1wmGvTYfBik6UE=;
	h=To:Subject:From:Message-Id:Date; b=filtPLa0lX6xVw78rliDOVqV3W+uA/Vev0Qaf56wH6VfXqqKIKygEZfz5jbJHyCC9Wt8w8YSpD2M82e7R26bOJoy0IduGnw3QT0Ir6iuueaHyVHYxECoBGwI/kXX7Ch5duJVIW9TfOlg6IBg70RyY0XQ1SL5R3Ck0NF4nlwiVmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8+4aO3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8+4aO3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58F2C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744746593;
	bh=WwRqutfOwI/oDouQUbWJRhFvj1/0n1wmGvTYfBik6UE=;
	h=To:Subject:From:Date:From;
	b=r8+4aO3dmoD1hINI/XVhSJN8xZvDCL9Nof7ewJM534XkdDadeNKSv426A2pHQ55xq
	 ZsK2XvC1hcZI+xrB+JCc2f0NNBPRCOhuRr0K3DxEWetJQkDg8LhJrTog4P6AQPcC8S
	 er8K7mJAQXLHDlD8zXqc4oOu7tQS6uR2tVNAAMF6g4x38gyeOaSVAEsOmekeTM43iu
	 yYQByRmA+9aqSBw1ErcBDK06kzlc8K8WfXmK+zBzcYhB0SyFY/RDKHekSBJUiDUHBT
	 VbtO4Zi58EhN+zHVAbS9cFUUBLpO6shKUu8AoXZHljQv/5+61NGGhJtJv6cStNlUv5
	 2DK3tYc1I+WXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91080C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474659358.16120.5216154821573871432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269e176f5642fee5b0a22d58e4276c13f0b4450a58115a8b36d28dde5706d554
Date: Tue, 15 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744746593
