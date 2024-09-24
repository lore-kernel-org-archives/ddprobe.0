Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216EC1B85CF
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727153154; cv=none; b=dsVvyr7v1XgC9yh/oVr7QO3juv0yfprATnqpGSb4ilJzicO4D6Y6QDE6j5Bo3fKIeyOETB1KRiG9810VG4FWJsYzUzbUPu1BLl3OLsPFph9kWmWSndIDN2AlrBDguIk2yXf0WPTX7ZxtE3VRX7ihfuT1tQOjNTTkjR2M9/dzrek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727153154; c=relaxed/simple;
	bh=I5Hxw7DENKBz3J9BmPmpx9YEvh85s9EonuqpFGMGJBs=;
	h=To:Subject:From:Message-Id:Date; b=M+OQg8p9RSYJMjuNHeF4iPab+UlNfXzyduvOd8m4rLcNGAlKhjWhUtPkbfwrMh91eGrd6s365QST8krVxSGJ1IPr4JMo51wOqKwzkZShHOtxuz63O/Vi5UV3HyfOJMPmenoyt1a6i6oljgR5oG2mhpcL7EruDMb8LtsLkWrJLgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSvmD0CT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSvmD0CT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD87C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727153153;
	bh=I5Hxw7DENKBz3J9BmPmpx9YEvh85s9EonuqpFGMGJBs=;
	h=To:Subject:From:Date:From;
	b=aSvmD0CTRtukLbEGBvFXTtM/hIp0nD0ZMIVvJkai/Txjt71iE46ee90iNx3bAzta5
	 3n45x/S4xAW7exAkzOas0BtLVGonX8HAiFUEuZQYmLq6OOq4i69cct8zl6sJZjXjv7
	 0r0VodR9o1zHix2Hk/V12cpUeC+9hdByLGy8sPjD6XVv+/Ys3rw+ZytI45uAezB6eB
	 R9reQbfglUl3ruNq84bVE5NQw5tWdelJ4pO/VDXI3kAk2VIf1S0rZWp08kjm+dUrSk
	 heiZ28wDKPjqKWVl7l+p/wPcCJyL4/GPZQcdkqnks81strDKoeCEuOAnrpjwb6a2Fd
	 wZgHuf/LaVmyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B735CF9C72
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715315362.7571.1585125582511231818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1828f79f07a6a90a6b774739f56bec2076af43e1c5f392ac9ceee23d9502de3
Date: Tue, 24 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727153153
