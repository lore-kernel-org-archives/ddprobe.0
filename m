Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BA521A431
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744093194; cv=none; b=QOTM653oXIWFr2JPuazdKHoEgTUepRm3jNqHFxbHL0GxZmYdoxlbzxC7QtdDnEo+jp8xfY2Y0asg7HaNaAwjWhlgUAIKO7kcuEEXJKl5hv6Gwgy/J+vUR1eWD5DHXCR31zwAKLOeZFtn6yY5BS5L2zyjwlziq3Zo1rvi+7mOZTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744093194; c=relaxed/simple;
	bh=U0+PLjDacxzvKn6acbGdVA8nKyHY/jMxIAAczdvMXX8=;
	h=To:Subject:From:Message-Id:Date; b=fS6iNvz40EkIQi0vilN1BqRDNLMjwjcdSNhugGzXuKZcgWpSyS9f6AjhI6Q/Ijm+jmQVl3xmykh5ROkHkjbZMbEyfoYmNEgftFNXPKDrS8htVg1/WD1Hb5u+7tpgwSMzX1oWCf0FPFJvZBvu0W1MHhy4ZQpMTcyoPUpTzYfLISk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk8xoPmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk8xoPmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250DC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744093193;
	bh=U0+PLjDacxzvKn6acbGdVA8nKyHY/jMxIAAczdvMXX8=;
	h=To:Subject:From:Date:From;
	b=hk8xoPmuAZspFbvRh3w8ba72Q917cnqDe0mUV8ntiYUCGHwBM2HrmKmAAZ3nXlru1
	 CLtiRe7+a20+6UVYwOYfqGj14yziuxKQe/H600XNx2ZbuASN2roHWilDNWQoRx5MHF
	 b/dPYPs4kUQ+x+YMykXcgV6FJqCsqruJi/nyDse3A6usakrrC2eLqhrPHHGczL0ydY
	 zxphnykkFAvWnd6/nWvf4nWkXbp7jhJjaZYEqc3T7lWhynL4xZT0zChERyAYwu8xtU
	 2nwsD1bideUbmw8l2maXLXTRigXJWM2loNl6rtclqd1G7uoGqCjj7/XvVOiu7IW/Kb
	 0z0/FZWQbKrjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92044C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409319359.4433.2508053531352373378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a433b3b3a82a64e8c2d97043b179c98ad73ab294d4d9a05b626ac702250b5f0
Date: Tue, 08 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744093193
