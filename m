Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00639146E81
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708725497; cv=none; b=VdgY1wkzFBCmzJTS0BX4cKzmXiKYjgnYtsB17dLOUXw83zfKiU4NvMS+VpZBQ1flvcOhFi5xgtBwbL7rdxbkJvguKjsnLxix2X6BgZC2NvzudNxZNwUPAKHEvEM6ROiLcmARCfyAb+HqV4GPT5TtzeD3ipmbB5RgPV4aH9+5Vy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708725497; c=relaxed/simple;
	bh=7brof634xfKEE4qsXNFlB1q8f3yElYoo74ZRc8XR0GI=;
	h=To:Subject:From:Message-Id:Date; b=upb1le29TZGQqLQAZwrMNR1NObRa08qvo+Jk6otSyJ7stcK7mZvmZguhmhWx0bzuFlQL47IVJ6QomAdU7uVuiuGveHdVvmOMDksRA1/Ddl6Og8AsC82hTeX2/rMuqDxIsB285jpCUVDWYEDQUWswhA9/bgXLAmqrHXHkc1FtI2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rgs7A4TV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rgs7A4TV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8320EC433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708725496;
	bh=7brof634xfKEE4qsXNFlB1q8f3yElYoo74ZRc8XR0GI=;
	h=To:Subject:From:Date:From;
	b=Rgs7A4TVNf2bC4AMxQE9vVf7BSIgpuvLRxpJx6c/Y9bkDUWWDZeG1d4W+Q7Tlm0IB
	 iBX6b+9eKGHCwwWsz+d5ge07zDh4js2IBDLa5Ow2yewz3dBKaHKrXWuBZMT4z4vgQo
	 Sq1ET72LEtI7junQ23tjlfTNiick9c2XJHAaB9Ad64hoLIQSQGPu8R7XWp2Q6EBBji
	 8AdBRauO7MgPZLxtNhf7srdqyPr+CrwwhnoqVFUR1Q8ADLkAFqmzwFaCLqw5TajvhH
	 o7Di4gS0IDvqTmvN6QYL9jiLseWWYK1Pe1EwI0KH5YmzPG0SNOxJW0cjniv6lw+lxv
	 MqCW/FK8v7I7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61884C54798
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170872549639.21041.18400025246205284155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561776f460df00704e9cbfa084bbf47b2a7349a747f010e6c70fa6fa65430d95
Date: Fri, 23 Feb 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708725496
