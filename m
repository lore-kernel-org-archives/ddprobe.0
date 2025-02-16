Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44369DDD2
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739678934; cv=none; b=pScBssxSjqSorPs5doDrrFFAt/rFyQqfvu9Y6+s38amFqFe1OHjpiWfLyYeiDchtZJqqhsjlacVq9p79FhJusyLJewm+HXKoqTHB6qI+KCWfYyLftx6IzMlfYqqyT2IhhjDjqwKWNK22Bo1ZT5ZAAY41OC9ZsmZf0nv10DibBnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739678934; c=relaxed/simple;
	bh=NuK/gwfiq3ozlGCMICJsN8MZMXNSyzBmZKvWkFB7Tg0=;
	h=To:Subject:From:Message-Id:Date; b=L5qwh8i0UK0h1wfBnBPan738QPVdpGGGJj8ZCpT90FvBByB6Gf12uLzYR89WCvKygZLH6oc8H/Cl7752vTu3/SEQlCAqp9wKa4JBAn5995TI+DguAcleNlkslbXmjQurGUjWjgyl2Gb0uGri4Cs+xwy8bOzlfZaYnRecCoAFjqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpIZDqfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpIZDqfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF20C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739678933;
	bh=NuK/gwfiq3ozlGCMICJsN8MZMXNSyzBmZKvWkFB7Tg0=;
	h=To:Subject:From:Date:From;
	b=OpIZDqfTiwqBcwsk7XawxPJVqjiFzGelGhv0tprEyBrHlmEe46dtsVEA9lUYclmsY
	 cC5DlZ7Eb6wZsIe11lkXeMfL7R3SAeZgkeC5ycClzTc7Fx0CUnZ3c/gf9KaSVvY2Mx
	 x40QDaMR8Eg1RkD+YrUih60HRfrqrHY37DJIYObg0PK7a/9O8+pVqzeR7BrpcleeOe
	 dJ7xbfGG4XXn/n3KhYEBM3p0BHqPGQd036Sl5IEjdGtsPtUbXCZNgwjUBtXrDRsF4C
	 fZxKv29JApd6mJyBMXq1cQ3eHGzlWl7WLg6RzPZZlKzh/DUwrJ+xdt/+cND0JRbSDm
	 DLWFoIacPIQIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1E1C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173967893359.11885.6180344049376717307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf0f7e874424ed9b3d2cfe78add2cb74e903e5f0bc686bb4275cc5a9d66f30c
Date: Sun, 16 Feb 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739678933
