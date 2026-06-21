Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9C211CA9
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782009994; cv=none; b=DKF/EVugzEXAKxm/4RJVfqtvcz5sbutSNA7ZvJOHhoossxNRQa7xAC0v6W6TZIXYvObDEOKs0W/NZMcWPvLCJQXHJS65u7RTcokZswDj3irUxWf9FHJThggmxnkxCCkfz78aoAeVTE5TSpShgmVdiCCs4mexxMDRZOM3p8UhkDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782009994; c=relaxed/simple;
	bh=WBYWO0dO+1G/w8zjm38xoSQFqHrKvdpSSLaOMLzI0GI=;
	h=To:Subject:From:Message-Id:Date; b=N1tpSiIJvfXtwdRoC3xy5l3KJoNvCAN7LswM4lIuFIfzJf7g0b6tRo5SUFB/yHi7xyfGspfrFpXcaAmn+DCK5P1R1oVFoVKXA/f9kjkoceLKe/Vm8Ozf5epjJThRRuIbZtruaDy6P02Mf9JOhe6cN+kVnIrdlFCLSieS3fAHynA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUvVinCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUvVinCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3401C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782009993;
	bh=WBYWO0dO+1G/w8zjm38xoSQFqHrKvdpSSLaOMLzI0GI=;
	h=To:Subject:From:Date:From;
	b=WUvVinCjto4+wrI9WB2LyGCaedD/fZZYJ+JujWtgmzsUWZpyzDfgpM1n4pxc4T1Av
	 q/OoS1ZitKXhlx5f6x0Hhyp2nMMNbEsuu3OGvW8RYkjgeQSUPXfcRjjqonLheVNgoH
	 hcSHlZ21kHRfOgXbg2N0dO35RVQDn6M+DKPpMcuiZtop26RdFuIBfkH6uu/Db1WdVx
	 hgks2Tp8JBp+dhiz2v5Q7kESKofFb9Ch5FU1OCWkiWgJ91Cm2byuLrAHdiO1frs7Jb
	 hj2LHk+enSw4tqKsTS8tJn2Upx4sd6zHbQsvS2Be4u3BPaa78AMK6247hk+r0uIkUk
	 fRInkn33PxBYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA943CD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200999368.13570.338802823314418192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3fdbdf445125c53580f2b5d139dc12ae0417cb7c633b7be5a80b2192a47447
Date: Sun, 21 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782009993
