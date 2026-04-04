Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8CD2236F7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775265934; cv=none; b=krb+mV3z6qMX/PT5MF6ZTthdke5Gftkw1B4/fLFxE0ZQaayOFbCp5o3qOO963RxrD6O4uRhsY5d2vnqMQSqIMjypBg8FaG2Z4Zu+tUiGD1IGnvRUsnDcIxnFqQlUj2EVivUNLXopLMtwyvKG423a1JPWvOLRjAMlGpgC93IP4MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775265934; c=relaxed/simple;
	bh=q90CmoWgTVo4uOZzu1eai68xdn7h3qUHxvHn1tuEgv4=;
	h=To:Subject:From:Message-Id:Date; b=mZSiXVoa1nlTLvcIerF+KgD+pIjRf3kwLe69s+vNlYD5cCnxHrAULOyNWFlKXUqrlvFHdt7SmagnzCYjDVkRLfwl6tKSPTWuV+BxQEP+umXWd7hFNvNRxdDEDvXkTS1PrXY0nqtODpB+RSQxWKRtQqVnidgVbS1Gaz6CWClIHiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EveUsq2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EveUsq2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FB0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775265933;
	bh=q90CmoWgTVo4uOZzu1eai68xdn7h3qUHxvHn1tuEgv4=;
	h=To:Subject:From:Date:From;
	b=EveUsq2B18+45eSzzDZ14gZXMLJaw7Xa9kDFF+FV5jmoxEheC/lMlwh+BYV9aUfms
	 h91h5VINQmtq+BbHITO6Bqo+p0lv0TYVhXavkCzdJUnqYFDUqPLFJsWGAzv6h3rHQc
	 mOv8SrybMJg5TnIrP1pR9lDPseA2RCe+oETw0wFAuSdbfIZLLeFB6O42coBI3VdSmQ
	 a8T9bCPgN+Mr7MPy0ZDUE/YdHWy2c12jBDJ5eQKPyHeQfDUfJaXeaAMr9QVALj03A9
	 31o3jQVrlJfEacEiDIuKzLDIO05bSHmxiyMwc7/XovyecyIQTKAHS2BOxRq/KJRz6R
	 lstMAcqFwPUww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0670E88D77
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526593368.9071.8885680314905924822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d405ebfd6b0f82787ae36a76f444af36147769fdd62d87a2a1cbc1045d58d2c3
Date: Sat, 04 Apr 2026 01:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775265933
