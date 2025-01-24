Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF71D5CF2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737696354; cv=none; b=MTEIyJ9YUMme0A4oo5a/li9ZXqIqvqD2L1F8ZssVClB3K9RSAAmVEylGQbYakMQyJMs6Mwao7yA93NZSz+nn+mp9j8n/N98x3vkYUyN9wgz/vCVeVC8AHUOcGBcsxaPMdK4ZBJB79pmXDgOjL6kVI1s+LZ7QMJ4gCQVGZINzO3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737696354; c=relaxed/simple;
	bh=OYUaBIV3kmUXJpS6BjGrFk462hEJ2bL66J4qNF/R0a0=;
	h=To:Subject:From:Message-Id:Date; b=hkvMHHoiQiZwgfOfjWwm5OEIn2upt+HyDrKGQp1tlyZyKPqynwYDt3lrflF1GbErVXkMeCEv+FciG4VizylXeuLNrt9PIU5X278iCOV+S+2cMZK7KvqN5kOgvb6ai6q/YpjxMnFTEUX6xG0g1dk8VJCFIRrZFxKjJFtIzXfSvAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSRIzH/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSRIzH/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E1C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737696353;
	bh=OYUaBIV3kmUXJpS6BjGrFk462hEJ2bL66J4qNF/R0a0=;
	h=To:Subject:From:Date:From;
	b=iSRIzH/84+/cGqDCIMU/V/VhhYzJwuC5XmxMvgpbOa4TEMRvYoaatQ+18FUI8bivr
	 KXv5OZSloJAf7+qmjC3VvDPwSRhuH4Onyu7HHukq3ljr9K9qdpSNHob4nejDOOOuCY
	 TNGaE49p8+nVzs6G2gJe19lHR/WeZfl3cpZsg8QPqfGmsdVlyTdY1IrVX3MMRsB7jh
	 Kmopz6ZNja350fDp/TsZmH1fnV5u9y132zWscpYHQ95kNgJs5tt495neCD4x7dXOQV
	 1KxgtBFMUb8aIwUzKxAkG07GrWCDlMxdocQG5APiRZc2i/Gpv8U+cS9JPz4vGb4hAG
	 CDGwZwrErJdmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA1C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769635358.14849.14019508814919564145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ab52c20ae8003d446d9d128473aac3a59e58ebb4332b02f9ded682c063bf8b
Date: Fri, 24 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737696353
