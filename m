Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F1A2DC793
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770504834; cv=none; b=c8jbwhE+5/7TtFMNV+p8LdwUk4XwB2Ie/uDOxUTCHMV9cODAMnTcbbxb3odRHtpWf/z2MIYwP7gH0seA9Qolx/499TeEETfgTd1vTKhXzpiZM4+Uf+lYiQR1OhXVYZpigbLY7JjjZonC86cqtks4LUXJzui2vEyokVsLZfgbbHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770504834; c=relaxed/simple;
	bh=09zfHOGpDchEsNefOvfHSv+V3kC0a8Ul7P1akg9RrYo=;
	h=To:Subject:From:Message-Id:Date; b=lHNxVKkJ1ESjkuQLYsKxq/xQVW1kbzYq5LxqKE8QXoSWSYKyKx1tsihMK+7Mfhz0iMhRUu1uUl7YpdEBCLDjha5AMRoZ9FLH/gJwbtsJ12VgEnjH127l2Z+6dBCGyLfLpuZRKM5xr1jpPP6fgJ46IVb1Xijv7rih13+ROvBrvnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfMchiYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfMchiYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A9EC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770504833;
	bh=09zfHOGpDchEsNefOvfHSv+V3kC0a8Ul7P1akg9RrYo=;
	h=To:Subject:From:Date:From;
	b=cfMchiYCtW7ab9D3GA1cSzGvMZTwXXj9kQzvbKfVfESqx4ZEQHVYNbdD3cgiG+IG7
	 NNU6oKVdjdSnQuQejtH51BCknC+GOZknV7ToBoUrdMJDZxVK2/UBq/YvzSspshzCYl
	 k/oCp57kZKii4togGLKgvdL9oNAT+swenn/3iTgqVjo4qTx4uejuNSu3ZcKAPzEu3h
	 2BRsUC+PFUOAN7Zvzr/gNIHSXM+nEFoNwdfz1xRnYiKZDq7OF3DI4YG+7w0OA0a+MB
	 TE8dmx/kDjy0qmnOikiBOYEuqs3K2UTil9XSF394D3WYBu2GlyIDE2qoUolvaYIOeQ
	 hIpXKVgsIlcCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E926EE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050483361.12362.6825346784236514050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57997f7f0c57c543b0115dfc86bb4ec1758b0727f08d95a3b05e8f9fa567b871
Date: Sat, 07 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770504833
