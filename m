Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4AC2BD5A7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767574434; cv=none; b=fGk+wdRND36qx2L6H0meppfgP8ekpOE5Wx3kxnywfJQAjC1rNXYkA91oGqCNRR7v/jQEV7FcFqOeXdFUjRJ7ve7JmhZcHUtwZK5X5+itx3HfM1GYls5GLnfEvQ3MVkhvvSn2r6MGUIPcJ4P5Y/QmjpA0zPF2nO5xUNlTuw1VzY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767574434; c=relaxed/simple;
	bh=zdypaWYyDx14nxnS7+j0SLmUSsap7rNxWVT7qIWb2b4=;
	h=To:Subject:From:Message-Id:Date; b=fkE8Ea4rNdc4Z39QWYnGVrmlev0WUJpccLYY0H79QQI9pKRrchmSoRvEn9BZ/JMxPFWxkM1tRTM0Ul9ujp4jsor6hNqdaqtE1wRMjpd/TFTif9WGNWKMSr2bpwtn9PQIBvrR0lHgdAnNov5cMlN1tW+dK0771FlXzLbfO92k6WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPPPId85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPPPId85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3758C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767574433;
	bh=zdypaWYyDx14nxnS7+j0SLmUSsap7rNxWVT7qIWb2b4=;
	h=To:Subject:From:Date:From;
	b=fPPPId85clhz2Wb1QgBJ5Pe42tpQb/8p/jLnGALs6Jq1RO0AcbWgnmcyQs/4KB4iT
	 We9H9OpMX2Od8BGAv2duJwcDDIIo7fJCi9wuQKrlD50DWqZwLfJrtCXsN4z/jQSMsJ
	 hAiPpsGDiijW2RjHuuX5Z33WKEjrbEZ5P6pGW/7s3FY2sxJWeehNIWTuTaEmBgK6dL
	 qHSSj9+kfI+JQt6/AXdxrJ4hpzsmlS4LT+TM1b7IBdzsXdi4SG6UyA0YHRHdmWLL7b
	 vSu4ccYzP+1To1yVS8gsUrF+UkOLZdqACCvOQDvCrvOLDKeEtodA18ifro4a+oSKgG
	 nIJ99sBb9sEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178FC2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757443358.20159.18210275378952999029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b7ed2a80d75d13c79eccf06cb9620ba67fce3dd1cf10038f9e44556133d7b7
Date: Mon, 05 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767574433
