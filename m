Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F70213CF9C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749397194; cv=none; b=DksVFMXqnFHPsMov58Yqx03F5H5D0uNk30mqjugGmkAdgXmXgahJHPhyidbTxP2m/wds88YfgLoIqiebRRjr+RE1lJlh4oFryeQeAyRJ26LziKEHY6kAGI1vhm3o3CxCuQzM0IXnkcpbsJ4ffa59o8+lzyfr/J+ZG6XrS+KSMnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749397194; c=relaxed/simple;
	bh=cCyHhBlGKDPv8jWMFF4jrV6wNvhCg78ryKHDTs/X4X4=;
	h=To:Subject:From:Message-Id:Date; b=Xiy5pLP31wgI/KH1qD+Nd6bomR4aRhkMw/ildkwyLRRRhj045MQS4+GtGPWko3TRxgK1n+NALXh9HGhzUvC+EV6fyhrFjT6NSxBGL5IaeYTd/TX1aNn3wnfiXB9652K8r79gxz8oP/kL8Z2Lqywsg56FS0agR5tBZDkfnQsNUJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMhoR7H0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMhoR7H0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D05C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749397193;
	bh=cCyHhBlGKDPv8jWMFF4jrV6wNvhCg78ryKHDTs/X4X4=;
	h=To:Subject:From:Date:From;
	b=bMhoR7H0YPY4d92re/feAeDTGtBDDdYC0csgka5UdoM35ANJCD4dYGV3dUFEQHgox
	 JnJLbqtuuwAVL9DU1qlYzUKMEIq9O2GpyasaHmk9CsDxP2LAdkVDMv3HNRVPyjqAxs
	 +GvJqr3yw5HvKfesrjkEAnhzeN225HESxOT/JIzkpwEuUt+Ii70/8nAj16h805TYYr
	 VBQrhD+Jn1y12kBeu2sxQuotvhsiVf2iItRQ7bFXNxbFTQ/esp9DRmKuyihExGcTRF
	 3kGyUB15BbisNEveFNPzU5bSPZR0oitjWi7GmsBcK/FZTYK2hCVSFHEI2WUllXfqRW
	 Qo3Mb+9GKRvMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B09C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939719357.8972.12530792540006075223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d50009cb0031960bf3db97b72441cd14b6c77f4b66aa630d7df4a3ac905340
Date: Sun, 08 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749397193
