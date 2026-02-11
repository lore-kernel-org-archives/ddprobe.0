Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796C93559C9
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770802494; cv=none; b=jD8vKspVz7seDm2sRVYmUpuDpqIwpzoZgVKf/f/dIhA7wjPOy/GIqrtw/CRtmgOgs1a37KcVjrsKCxaG52WBztB8WxoYlcGoEsspODdCDcWcCUIDVwe02juPKGqw80gDDur5/Q2qw5Ys6BETUVZ055Lawg+fLRHeo69Pbc9DpjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770802494; c=relaxed/simple;
	bh=8OKHqpkpnxvnrDNHQGKDTA/nahcC/EMUp7GUWxO/jM0=;
	h=To:Subject:From:Message-Id:Date; b=SoGDm1HJHrjBEYYWNs7g7IelZqZkg55lfUyWMg5qSFyc63vwyHAT+yUg8sOGlGUKwvh8zHijLG5a+HleUwylAIoWR8kzgGX6neiXnwm4U5/Mn6lE6BHSjOaULxTlFD5EvCsqEfIY633d0ujps6E5036jDi8Oy8o4kF3XRQ2Ok2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6MePssy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6MePssy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F371AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770802494;
	bh=8OKHqpkpnxvnrDNHQGKDTA/nahcC/EMUp7GUWxO/jM0=;
	h=To:Subject:From:Date:From;
	b=D6MePssyEaARXaSoSB6MeAvbsViShN16tMQhe4xLtvdV030f7B6TFJUTnVkdb78mt
	 jt/5RuXuEzmwtRUFtyxpn/tWIksdPljqObt0VlVOkGtUhd5wjFsfpJBJnvESz5hzww
	 28pAscf31r0kgWX9IU9Ce2WuZ0t5QtLO/bWXUoBVE92+pajzSoDFpf4IuLbejo7MQT
	 R86S6GUdx92xtW+7o54sq8d0tpix0ZDL+L8X1ArF3EiJ887H5aZF2XdVTiR1Ya045V
	 zN3nPIBeWzrUabE7jsMv9MsUuIRl1d97lmgrt9qnvf1Oqr+/tjSmxXvC4xQnHODAq1
	 uD5yqL5s0AM1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC0CFE81BD2
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080249380.30481.6419281868415035405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd7e866fdf8bbb249a72d0c48f0f54646fe5d664b93111674256202a987c471
Date: Wed, 11 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770802493
