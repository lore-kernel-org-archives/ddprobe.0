Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC0F299927
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759764594; cv=none; b=GxRMQicOKSv0QNntMHP68eXpZSkJbMA8bJBrH5rvmBIjWGBaKtIaeJ9ukqZQvzICZkE3lgzOPwEsafV+vZ/XzLzHPFHBSS1rzVXgW2bSkIjhsiX3s/n8kpRgSSqYjw4J3u2zeoKkhHB9qoM+h7CdpaS9kKeqjoHrR0In+iKwwlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759764594; c=relaxed/simple;
	bh=SecNTsk+Ym1sjgIhNNhhz8OApGqO68WKdYcGhjv3S5U=;
	h=To:Subject:From:Message-Id:Date; b=H5HD7ou3dY1rLwt1QyeO6nJdyoUwRrPuyDSLwuULvXlhE/w9h43jlr1fn0JlIIoDci+Wqj3kU0H2m1+a0JTGrwpvq+vXEueLUiK98RHeaccPrq2LMnXy6TtZL3KHE4OMakpbnbA1qM1CsdTsn3rLfxdlvfbWaKxBhwx4NPkBssw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcF2LWU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcF2LWU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA069C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759764593;
	bh=SecNTsk+Ym1sjgIhNNhhz8OApGqO68WKdYcGhjv3S5U=;
	h=To:Subject:From:Date:From;
	b=lcF2LWU0a2xg4/v5faINlKivp6fORnG7w3VPxaDWuJt46RjuWEtP4JdOO3QKlTB6H
	 KrV5CDGHvpExMNnB3u8BiONuq2olfP/76On/Kf4zwdCXxpgJijA6xt36EqDxLiuxEJ
	 oFaHKZgmxsL1DVRxuvHjErY8l4j+NT7fi16hl8gQzWW2P49/N9X5HBhb+PAHECTUCd
	 RVtzXEElarSatc9h46B/fgLht6bIsqlk9ZU8nwnbKxpUCEcldNMbk7BYCydeLzI/q9
	 251MiHfQtuRJe6FNHRx2vvn3cUYW6I6Rto+HXZLif3qs3sBxEoyG1503a8xa3btugG
	 9567/+RXaGJ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95790CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976459358.1637.11995261425905996209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6cf679ec9e33b6812d19406c6c0a574d6345e458ff6aaa3922fb9712028ca0
Date: Mon, 06 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759764593
