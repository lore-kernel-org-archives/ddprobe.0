Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3204B23AB98
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750409394; cv=none; b=qyPUFscGKhQCflhhlxexW/dJp8afLFBsn8CqBVeRKqKEVvJxE+OBuIV+sFf2On7ZaQ4kWvf1gr62KSKkN420xcLnfVSXY29iz7WvkJb+MlkSYSvXZPGDFG7iox2DX2kXgvyaAKBIrCoHWXl+L9PhZylKvDu8KS7+Hp8yuZJTMxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750409394; c=relaxed/simple;
	bh=BNKkvShYXGylbjndXLhPldMeu5UvQg/OjQ4DP6hYSG0=;
	h=To:Subject:From:Message-Id:Date; b=jJNM7nmIVUz4LyX6IyaghM1ifcgWiz9OK2N2zO78ve9HN0qORjVDkgFqM6EcehAKxFmA1eUUaC4hUFm0DxYYNgKmm5UURrt1/K6Vp3LuQfTxlidPn+z9oKlmmfv4DEC2Yu3UK8/IevdiR56/wU6fOrIBiJXyVLRtSwlIl9bz+rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNas/NOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNas/NOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F125C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750409393;
	bh=BNKkvShYXGylbjndXLhPldMeu5UvQg/OjQ4DP6hYSG0=;
	h=To:Subject:From:Date:From;
	b=iNas/NOCb+sYVJ7b3ojmhrRzetfAvtxYMKL4tBn0qtkMFCl98VkohedERZfEmaHg5
	 rDbdfmD9+MlFKkQFvbqTZ8onZPx2CVZwn6Jbw2SrjvxwxmJhcdIYM7eRXUa6KzC0F5
	 iO6/GzPzAg352SJAQqkwov6+NIY6lMn4UOKet8ZAe0+mLCJgrpMma9aQGuMzD3gcCQ
	 2WfRMSJdLAiB5KMXoxlNgHLAmIwJ5NLX//PRf4M7UpSIQr0HvXicTHzmuT5IP7ekQe
	 KJIHbjwueAAHrAA4BGKLEZhULIZYcgcLtC1+hi1+owhoEAFihnJaLF4IzrbE7llY4Z
	 FRMOSLLXNFYkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E402C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040939357.5864.10330512849819687649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b473eb22e4904459c5601ab320146d4dbb84b023003451645b40ffda3dae1c
Date: Fri, 20 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750409393
