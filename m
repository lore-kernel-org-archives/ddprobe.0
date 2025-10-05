Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A711F5E6
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759681194; cv=none; b=DjD6TSA2x7QC51M6wtOKWfoishBgzcowa37EKUV8ZKB8VQpBgtTpW4Yj20C4GaptfXRTS7LyGFs6MVsu1EN6KuAFijLeiCNIsaS4namVQlXVIRJdVXZu+RoGwhQ81htyYX8JXFWgsghVVHbxfQM03Z3OAJcVODHUGj+Wt3TLqGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759681194; c=relaxed/simple;
	bh=I2psEZODwXvgxdA1imBHlrUN4MAV4nSxJNDgEMdoiGc=;
	h=To:Subject:From:Message-Id:Date; b=uDTzkkg1cNoJGTFiCKLqHpn0y+sv70HUNqyZF2bVhEQUAkz/cZCgy+KPXWKE0RccqG8aqDQRXVvmXcCRzfbpKWgMVXHOZTW8vynWt6ueH6JdUYfCg966DG58TSiIEvu6LQpXLQ3ARGlUUmJqEQqyhynTx2xgpRsip86SsvbQi0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpHrjgvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpHrjgvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36B5C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759681193;
	bh=I2psEZODwXvgxdA1imBHlrUN4MAV4nSxJNDgEMdoiGc=;
	h=To:Subject:From:Date:From;
	b=cpHrjgvmFDI4Qtkxj1EpW08lYgX+A2Rb+RjFX6UufCsJ2H3kuHjhCJNkWH05DZz5O
	 i1tp+3CX1vD8mmuo58azOyFe6s6/J5D5+0MAStXwkYoUiqQ+EzKnunIwoTCjphM7qY
	 3usBuTUxFJcDBxMcErOgzJoh6r7cvvHdrzKRCITZJn76sK7eyimR5ZxDj1EEebtghB
	 VIQnLNhYUXV7puXKs1gZjfouG26uVNxzWNjqO4rL2YoS3/BsDR40zX+s0wEKP9rqOY
	 JpCGzsZ41DWX0HMOcwwG/QR3PtU62pWBTafbI3uSHkxfHG1WT4y1//eBDEW0lGJI4T
	 k5siERP5BoPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CEDCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968119359.19356.2477268351275136705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d61e40dffd536a331b7e14e1d0d635f5ffaf0f18aac2f22c9e56c77dc019af
Date: Sun, 05 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759681193
