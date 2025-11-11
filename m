Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B122F1FDF
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762852794; cv=none; b=pJr+F7qCLKhJfklTTezkVjtiGCjiYmcF1JIUpvAV5ovv4m5GLb5XdvURYWXaIoxFrHE3i0yNoAIYZD/SMY0MuRjyff45O1a4M9qud67bxXUkcgvlZmfNOoT5hLjoS6aXRQ/i2FNxnl3WCnnd2NkfZzl9jf8zwpwGYffQJpFZkhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762852794; c=relaxed/simple;
	bh=OgHNtwO60u47Lt6gfGpy1ZIec/k/1luVP1rii0EjGBE=;
	h=To:Subject:From:Message-Id:Date; b=eAy8y0Lkqv9z0DSPE/yJUldx0ifxUmdtf22BoNgBMde5PBF7YswULRodQff94mWVfNqJlRVvhVzwAhlO7tUuOfxP1mvxWCY2rE1QMLrXMYtIztA71GNZ8VSQEeHKxaUBfF9mtIRquieKldDUiWME6MDCLahSGLaHfVjM3cXINJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=id8ilTOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="id8ilTOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F704C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762852793;
	bh=OgHNtwO60u47Lt6gfGpy1ZIec/k/1luVP1rii0EjGBE=;
	h=To:Subject:From:Date:From;
	b=id8ilTOSosirS2yyVf0XVy9IP/7EYrQuD0B1TVthjHNvwxwqTD5NfQdZ8Ye/L+4DZ
	 krKUEydQvwwOgQsz3rK62qs1Zsgngy8AByagPfsbxiLpuKCDHbKlTriR1HhmDPwQzv
	 Qnv40MQXioFMugtHTgtZPcJDXK7td5fINQLcnYJqu+bmaujT/++GY6SZ5Duzwc1zaX
	 +AGhxDz+ALnQjC/qtYpLldWlZbBh5xSlpvH9SDyELJTOUW2IMUcCckq8YbZINWv0+E
	 yl40yT2LUTjajbe9ARc/SdMY4qh+7pC8Ac4XBjjmYb6Sd8hcokExgotNxkEMSRN6sf
	 3ssrmsWqgcQLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F5CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285279358.15776.10852843690894170504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13eac03185d0ff9f7b2cc2f06e673fdb97f48a6dfce9b5c2c4fe83b093f3e04
Date: Tue, 11 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762852793
