Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173DD253F16
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750437594; cv=none; b=QTugj20wd4E7FjDWYwBsdtmpyBmS6Nav8EQ7DDi5nVdn4Sk2lvmeKKFWnwIppec15A4GaP/V0EuW+I7+Ada2HPlJ/XtES60rJqMVGt7hvr1CMqTE/auVbEL5ZNKSp+OXPb8tQMyomhF8FepNOcTjCjXL8vY2umrEQt0cMXcSMIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750437594; c=relaxed/simple;
	bh=pVSUmtRy4clo6Iwj6Yow+331kd0HQAq0Cn30+z2Nz24=;
	h=To:Subject:From:Message-Id:Date; b=DJgZoNPCwcn2QjWAdCIuHQbqU4IG8WwOHrwyKojjbjX75akqwnX5VVbR2rxNEeoJcjODAnnZbdW6Jj3VOz+BGCu8fIot5iWnfRZCUoHxfDMoDg7QYBxPKE2Lzyn6IEmRKvLItsapAWXbMCWkskDI5btkLNi+WyUL3eaZKeCYxOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfnmSm6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfnmSm6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D20C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750437593;
	bh=pVSUmtRy4clo6Iwj6Yow+331kd0HQAq0Cn30+z2Nz24=;
	h=To:Subject:From:Date:From;
	b=NfnmSm6vnfIEFb1cUkqmgwnCS6pusndqZxaovWQdfptOoo5c7RuO2ljOlVzBvAJcZ
	 wAsI4tiIOhOJqFYx7SU4f4HIJXzDaAa6+bXdk85rw9WeewlYDye1aaM4BtcldYGqo8
	 QH1uncqTn0bN7gwsucT5IfOKQuR8YcBqQUOa+kSNkmYyejpkgqJmjqjP9uP5XsFp8V
	 IAfaUK/tNwhroWJsBbED40622mo2FDPldzRIyQmjsyNC9Aj6fFxf5upyCq8F7hrwXU
	 YYLY3qRfy/caZzxqidRt1AL0Rs5ehZhKztnpyFhE3b59fC4pq4MKY1wsRmLL11+i5v
	 PGCglbGnFDi0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC11C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043759357.23629.8201822570842143784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4acce047b4e25610da7ccbdceb8942b5bbbb95972e440c30f867a6962dbcb19
Date: Fri, 20 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750437593
