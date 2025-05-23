Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D087E552
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748004594; cv=none; b=mP4vPWORXlBpdIS3Kdnx1i7jEbUPiaYS+pm2qqyIkp/87KNZ6EwsazY3JZFBYYQsI0ixDjdhqRCPnwPs1xunHid28sNe3rj86W5xqKvH/SoX3RrWJJAEzD4wlK+wChenOwSBKrO5JBSRtoEdx0z2PNKTaWO/UoHdHziPRrjGdeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748004594; c=relaxed/simple;
	bh=nR01hNvhtFYRnCPKsXzGnvHDPaZYk7PtDwz98Q11S3U=;
	h=To:Subject:From:Message-Id:Date; b=nv3MikyU6TvnzP1u0FJ9F3snPqm1EKO4Wlqt5GDth5pm8FGFOhvSXAmlkUTJL2kHmTHCY8ixygHulXamvNeJnSyAP1r6xxE5fnzqDCSohv9j3UGm8THPLiN9QypW9pBFXlAJYEQWy8XvCDNWleSWXmpan3eM56HWfQINgdf/eLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAmhpp95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAmhpp95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7DC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748004593;
	bh=nR01hNvhtFYRnCPKsXzGnvHDPaZYk7PtDwz98Q11S3U=;
	h=To:Subject:From:Date:From;
	b=mAmhpp95c63hDVyx7isTi3MAE1+KkFg/0XrrpiZ8s5BwtjlCU/y/zAke7Pvg5FXnE
	 czKQmIAXiFZ2KIKnl5s9WwMhzVxKBmHjwylsMm7dIh1zA88i5Wuf3ydKbvmleChHzP
	 vP3hOZWMJxgY4ETe3cw/SeJJ15upyI8URGqSSyTjpqDGzvJeAOFOZmGxT7OEdKz++D
	 ziHaL/R3J71N1KoutWL/5imowYulHs0p70rf/t02LZroM9zWPWAajakArk8FZykYHm
	 77QqBRlqljVfcW60/hmT8P0OziRWMJSE3bzH6GbGIhYocDUGsqjIrQlgiTbtyYqH0W
	 AyAxupXcLMCZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E88FC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800459357.23662.14071813411122212808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1bfbf58c584135b4b06da74310373250db544c978dd6f1f8547d7e9b04bdb1
Date: Fri, 23 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748004593
