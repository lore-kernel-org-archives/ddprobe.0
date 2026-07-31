Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF523793B1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785481835; cv=none; b=dYsFchl1mcql1BsXY/qUv2wEkOBlsMlZIEoUumClepNnY05DEjUC1r92+ljQoIXPs3mjI1R9wDQtjXLlQs+vy2fyAVeE+mGbGiViQA4vuHIRiVmQIBMPM+AHsOH7ObE1zdWdJ2exTSMsLSvJL0jUGPxuYBRRO9wNsMA73zB44gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785481835; c=relaxed/simple;
	bh=DvWoOo0vAwXtlXWSV0iWqLp5q/56d1TRn4rVmHqzsxU=;
	h=To:Subject:From:Message-Id:Date; b=Tre7bSr257i2p4IgWtFFNPyaGkeNOfUfwuWnOBOZ98BsqzAMGxU2dYlqF2TxopkQZwKXr+dl/0bneQIgjBKr/J6nh/gN2mPL2mC7bPza/QuxV7IvFrrrI6fM0KdxtkVVCjjUI7IDKcaER6Ls9oR60AuXBIkyGpH3enTT1Gdw0JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ph/YZU0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ph/YZU0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E090CC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785481833;
	bh=DvWoOo0vAwXtlXWSV0iWqLp5q/56d1TRn4rVmHqzsxU=;
	h=To:Subject:From:Date:From;
	b=ph/YZU0ddj9JAwsCTREMay2qD3WCZHpjCskQNXCsrIhGpvKLFwrN/8aG7yYohHLvW
	 DTCrOqZZoQ2xo73roE7Bfqq3sOOsDnvLYGJKGj0eQpmOhV+WMWuv8WbZjNz6av59+w
	 D8Q+xXLr7K7nEf9rQMuOHKFY+zz8i9nZLrBB7wCY7iP6izS/updCSMOofSvxGze/my
	 pKqh95krzMx95AlXvuvh8E33gk2GMymxxwHy/KuXL7v/H54k5GbFxZRgGWdOsP63xz
	 +M3GrZx1SCe9y5+xjWF8A5o5F8vpL5P6zbILa3XRAi1fBCIjshUgKBzXSNc/NHayEF
	 xwXzvzoC7+03A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2725C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548183371.8617.18051159757622040105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcbf507f9df7f6c4b29957ffdde8d64c92a02f59ea1761e9f7110485d2288f8
Date: Fri, 31 Jul 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785481833
