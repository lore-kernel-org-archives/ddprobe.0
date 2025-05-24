Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476177262E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748048394; cv=none; b=KPf5zc97ar+vum3OWy0uCVc/LHlxn0lA9rJV/yqNsZbjxdC7rOdgNxDuHuWuc+md1gpQv48c8d9RFqsEiuxqVBkJpI+xA5NqgI9GpvbKRA8LQbiZEVRaWE4lCveVbcZAJg0//jfMcTBJJzwI3TBLyq95Lqd4lInp8Aob2H9cd1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748048394; c=relaxed/simple;
	bh=sYszReIXam9uPQfN/Du0DDqqBEM5VsF78wuYr+wr0eo=;
	h=To:Subject:From:Message-Id:Date; b=M9a/FXGuBZ3L5wZsir3+/6erMTRpaV+KHIWe0+ht0dSh/Fn/L5h92syF41Lczfao/jKIttTnniRA5bzbxIVR0tLDcn0f2Q22rxvOq1v5EBh9UmH6Ai4tIvG+9LD9JrKR0fXO/ZUoznrme4/A7DcW/zUtYEI4JCz2X0z9q5INoMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxDNgApD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxDNgApD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA180C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748048393;
	bh=sYszReIXam9uPQfN/Du0DDqqBEM5VsF78wuYr+wr0eo=;
	h=To:Subject:From:Date:From;
	b=uxDNgApDFmSXzdimM3L0UGzD7KQ3g8jE6AmCt5zwhhgKr9luKYS3RPdbapQaaogLb
	 jhGraZlKXcCsIsLeRqfwQy1FV9RfaJnUvwQNmr7O7+J167XUdBz4v8fTUXMcpzJk6i
	 +VsBD6gzFIfRoHxv+V5FdLG0+JQHLn3//mdntSz/EkYgsNU1yTbvLXDuuN8D9reb72
	 ExPEkgPC4lCk1tM2Wvi9Fu/Sn5tqyaPLLfJceirhErWX6Q5B1aREM3yUv9obRHZS/P
	 r+Cfj/p9KSs1rb31BUPoTiwd8+BGsKLWuCSYVqu+Zr0tcIc5E2om9EPMvwJWZk3CgC
	 OlnWRiYkVWeiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945DBC54ED0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804839357.429.1916800357175293162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031cf2c06b00ccd57a4ebad79a94ab98ae6781da8af31ddca1d2de2d03b2f378
Date: Sat, 24 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748048393
