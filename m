Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385EE330B01
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786882834; cv=none; b=S3WZZHAQmPozu5Mx7cYIh1YP4YH1Zde7PFhL79FecsgVtOnDg1qtRyrNmq0H9A1uy4CstDWuNsu35v4T7PEXSMVKb4UI9d9+EZg6Moy/V7rP0oD2phkCS+LqP60V3DWOWpJ8YUWchQ3R8uLQIqdAbX5cw1EPyBHiORV+KkdBOns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786882834; c=relaxed/simple;
	bh=1Wpv/xwgcjcCzZbTDpkjY36/P+M58N18iZkwsX0/JRc=;
	h=To:Subject:From:Message-Id:Date; b=IK404SIXGCkHqUDHFAnP7Gkx+FxBpbSDS+8sIitwf3VoPM0BWnWZB9bUDKjFeBM7ddbgIg705MnZQuFE+JwBRURYviqiCG/IwbTXS6OQsaGlNC47OlgaLGjN7rFK83Ux2DE7TnTDGYJYLH+b4brbi5wFtNv/PewnFydCHbJOKyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWo1Bnyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWo1Bnyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C03C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786882833;
	bh=1Wpv/xwgcjcCzZbTDpkjY36/P+M58N18iZkwsX0/JRc=;
	h=To:Subject:From:Date:From;
	b=eWo1BnyyR+/UmRe4qi36BKyMUvbTuMqJZYZ23ecyxDO0tJ6+OD7zqmJVBYK1pZlFr
	 qEZ8Hnp92mp6SJmpeQWFV9sNu+3U2l0e76gNnUhjVX8Q2UjIdrtOda4wUihgnAdusp
	 t81olEgenkAWdAQTdtGcCAusPfeKJar+wvrQ4sn38jDUDw7MiNqQ97taup6wR0+C2q
	 p3+Zln6BvUvArJW1A0dOfSGnCVXxsdYEDaIjXO3uR9dh+RMON7cVk03P+iLRdfahx6
	 3T7+IZYti0ClXhYghIHI69shpno4UtnVWhc2ccgGLRNZRBX4yKzKLYRYD+gXi2ETG0
	 OWyFpp8fyZOXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE48C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688283368.9166.16473429989495370890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632acacecb42c7debb87cd1693c3d0ad536f5cfd1c42952af1b50f759c2b30e4
Date: Sun, 16 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786882833
