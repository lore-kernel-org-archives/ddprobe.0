Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB9B30CD95
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756399794; cv=none; b=oPYUgQ4ONhMr2ZLFWLja5KKwncO3rWloWaOvaN0ztLjO2jjDG6di8wSF9peSUjDCarX8zbnnVrd3DwpZJ38ijdv/954U4xuQ1h4gEUT6CS1qKzyn7U+0Pk5w72RVwYtnNS2Qps6lRRLE2D4sosZF0EqyF/Z55fmm6QAu6S7MnZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756399794; c=relaxed/simple;
	bh=AmzTa7U4FvFO/Xta7taTSkCoeZYydWYp8+GJNKCXtOk=;
	h=To:Subject:From:Message-Id:Date; b=ABmlKZx5FjTvyPZVAMh1Smve6sDDlfvBaPIC8YidbePIZdPfI4/WTxZEXcV3DicmE4BWTE20u7Bcn76UIFj8LeFAZRCgXp3s3W+B3jK03YaurV4NqNfRxIFFR+yIeoNact3uQGaYRo+ofUHum1Q18ol/iPVUIWIMCHrqcXskxqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHLf4dRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHLf4dRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD09CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756399793;
	bh=AmzTa7U4FvFO/Xta7taTSkCoeZYydWYp8+GJNKCXtOk=;
	h=To:Subject:From:Date:From;
	b=lHLf4dRATIL3IqltWVkICV6u7nGBlTrd+Xn4R7m/yxjnqlQ5FimAOjOjPRmo1ilH3
	 gZ0cbLRi0aV/kli/CPklXgAeSqnKYVkdwfiXVpne1vkkHotijy1KicYS3fwIIPJ91j
	 VvxrOYGNfBCZoSAY1Pn0m4aX8/IcsgqJVSVTCnvB4WMuhfGvKnsVNyGDWwT/61P7Rh
	 EA9T4OK4xNun3Z5lr1RJ/m1Pc/T2Pf2OmxBRi4DKCI/N7aSkBTCxeAqbsnHLsVhq9U
	 2tFY4ZS9tVvEOBZ9bph2F7kgCu3bh70FtlBi1vApNgXjBSyMoCCKNap4au+JElwGuk
	 qmnD3JtqbK7NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934E7C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639979359.31702.12929509497153216073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0fe6a0520946a2a86406651f573038d5a3ecdb4c0062dda597e8bdfd582914
Date: Thu, 28 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756399793
