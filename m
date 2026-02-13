Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6851C315D3A
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771022694; cv=none; b=Ty4KkFtcLbH/LFCIFU6/qcwY3M8/9K/CEwHIcqvysX6Y/Y0EWEB4iWVz+1/4X9Qh93ObYcYUxwjcAEr4TyzxYL4s2i4e3f4pfl76yaIJUDY6QI5iPxX5je6/HJRjJPq7LWuRHEpH2ZMbkDWdT9O4YwkgiYoKaO6MYUGDLYTAG/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771022694; c=relaxed/simple;
	bh=RaoNAq/T0JgzoZEbZwMoWTXqHXQAiV0jJSy+2cM9d+Y=;
	h=To:Subject:From:Message-Id:Date; b=c1PSawbfVznRVy//9Bywar5DruI3RxGKjNu41qC3b+BqItGr/+ASehHb9CCSswk6g9OJf8he5gLtkUo4cNF2CHQQ1S99Qs7PSzp1rydCFS1GA+tBjjSluTqQXW2oC+ZIzH0Di9BpKDueiL5gn1iBjdyBA8DRVFBpO+aGffpPmJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIE03/5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIE03/5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EDAC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771022693;
	bh=RaoNAq/T0JgzoZEbZwMoWTXqHXQAiV0jJSy+2cM9d+Y=;
	h=To:Subject:From:Date:From;
	b=kIE03/5KzUW/D7PfHBkiGVsmj0O6AFVBvZu2+mRW6ON9LXbmxK1ckD9hAW4l4L2aL
	 k59IKTIF3tFzPtUkopyYYwEXK0/zdRXikO7lwRkYHn57QYc3oozD/f3lU11zEyv+kQ
	 Q47t/hS33ESisAw2q3/H1UY1DOS6DsuaFgPps1ecdZcRIDRUqeMDQoz02xLoYcFJKC
	 iyQU0CM01bcsc6qV+hFtuDAgyXE5/e0y5/3JSNJqpQEOWlcswyGNI3AIHWUuMNByin
	 Amq7aUtA1eP0PFM8IDxhCsFcn54TkBN+kervCJQhivzBLWVoz0zJ37Xdm5MYPcNmBM
	 GeOpOX4JC8fQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E1BEF99E0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102269364.13849.2088277445179831031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ff05dc680d488a9b09179ee729a64ebd26207de88564b4d484b9d8c69b9ff2
Date: Fri, 13 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771022693
