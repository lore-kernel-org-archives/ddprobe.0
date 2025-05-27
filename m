Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496171DF247
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748387394; cv=none; b=XHX0o22BqJ7Z4l89cS8ywmyJSpd90Nf29Dm+UlSv7r0YoXVdC32zlCttkOCoYDxzTvVAXK25szhiuNt4cDLYlXYGc3Sudxcyfaq+SBB2cgXDU3Mqaz1AEHhWc0gvt4lZvX4a7/fC2Kbog7bScIhLpUPIrbh/U8Xf3LhjooJRf24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748387394; c=relaxed/simple;
	bh=QBUeTbbTnVFkcoPRgozkj/d1F3Pxb+UL/F1Nqjr5Z1Q=;
	h=To:Subject:From:Message-Id:Date; b=o70jTl8qRTJnEJuVRA/cabkivAYuSx1oVgI6/esNP++65tSG5d84WM9/StFwkyM4mAv0GJmlWgnJ/ffcIHjQbdfIe6YcU/somVp+7VFfyiMXFXtiflvaTk3FRMUwJnj2yt5TZ4gqoPCV4kXQSVMO24B7D5w+BMuFTbr3g65Z78E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drvuBgYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drvuBgYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63FFC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748387393;
	bh=QBUeTbbTnVFkcoPRgozkj/d1F3Pxb+UL/F1Nqjr5Z1Q=;
	h=To:Subject:From:Date:From;
	b=drvuBgYr+XyTtlq5wscXA0JQsU8zaYQkDSUapuv80bERBHZBYyJKvx+4331dfMbAf
	 fKCA45YFXBtSIyDJv5EL0jFtaIEZvaAkfAj3VUEicbrOrtt3YDyVc4JE86jRdLzon8
	 mWf9zpVes6kFLOxUVfHMXEOL8xLVBYCBivjlddvMKpb9eXNoTXJPFqeoUofq507tGp
	 Q0VOBnLkLWatQLMbhb1JjSmBy5l8zIEKfQP663glpBao8vcaO1/PievZYRheQ3MTAU
	 fHVVF+Log88f/4/ApXtwor6lwuuqDCKKnfEbsG4bmCSRbKcWEtddLX7vFo/FSNGAWL
	 n/ABSjY+V+ZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2698C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838739362.12630.14207917025391341671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30113497472acf7f5713ff13b376c132c9dd7f4e4a9cc8f2ba5c1694dfa94942
Date: Tue, 27 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748387393
